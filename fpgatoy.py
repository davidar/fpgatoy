import time

from migen import *
from migen.genlib.cdc import MultiReg

from litex_boards.platforms import colorlight_i5
from litex_boards.targets.colorlight_i5 import _CRG as colorlight_i5_CRG

from litex import RemoteClient
from litex.gen import LiteXModule

from litex.soc.integration.builder import Builder
from litex.soc.integration.soc_core import SoCMini
from litex.soc.interconnect import stream
from litex.soc.interconnect.csr import CSRStorage
from litex.soc.cores.video import VideoHDMIPHY, VideoTimingGenerator, VideoVGAPHY
from litex.soc.cores.video import video_data_layout, video_timing_layout
from litex.soc.cores.uart import UARTWishboneBridge
from litex.soc.cores import gpio

from litex.build.generic_platform import GenericPlatform
from litex.build.io import CRG
from litex.build.sim.config import SimConfig

import litex.tools.litex_sim as sim
from litex.tools.remote.comm_uart import CommUART
from litex.tools.litex_server import RemoteServer


class Led(gpio.GPIOOut):
    pass


class BaseSoC(SoCMini):
    _platform: GenericPlatform
    _sys_clk_freq: int

    def __init__(
        self,
        main_image,
        clock_domain="sys",
        video_timing="640x480@60Hz",
    ):
        SoCMini.__init__(
            self,
            self._platform,
            self._sys_clk_freq,
            ident="fpgatoy SoC",
            ident_version=True,
        )

        self.user_input = CSRStorage(8)
        self.add_csr("user_input")

        try:
            self.video = VideoHDMIPHY(self._platform.request("gpdi"), clock_domain)
        except:
            self.video = VideoVGAPHY(self._platform.request("vga"), clock_domain)

        self.vtg = VideoTimingGenerator(video_timing)
        if clock_domain != "sys":
            self.vtg = ClockDomainsRenamer(clock_domain)(self.vtg)

        self.comb += main_image(self)

    def frame_counter(self, bits=16):
        t = Signal(bits)
        self.sync += If(
            self.vtg.source.ready
            & (self.vtg.source.hcount == 0)
            & (self.vtg.source.vcount == 0),
            t.eq(t + 1),
        )
        return t

    def connect_video(self, *args, latency=0):
        if args:
            keep = set(args)
        else:
            keep = {"valid", "ready", "last", "de", "hsync", "vsync"}

        if latency > 0:
            # Timing delay line.
            timing_bufs = [stream.Buffer(video_timing_layout) for _ in range(latency)]
            self.comb += self.vtg.source.connect(timing_bufs[0].sink, keep=keep)
            for i in range(len(timing_bufs) - 1):
                self.comb += timing_bufs[i].source.connect(timing_bufs[i+1].sink, keep=keep)
            self.comb += timing_bufs[-1].source.connect(self.video.sink, keep=keep)
            self.submodules += timing_bufs
        else:
            self.comb += self.vtg.source.connect(self.video.sink, keep=keep)

    def add_sources(self, *args):
        for arg in args:
            self._platform.add_source(arg)


class MySoC(BaseSoC):
    def __init__(self, main_image):
        self._sys_clk_freq = int(25e6)
        self._platform = colorlight_i5.Platform("i9", "7.2")
        self.crg = colorlight_i5_CRG(
            self._platform, self._sys_clk_freq, with_video_pll=True, pix_clk=25e6
        )
        BaseSoC.__init__(self, main_image, "hdmi")
        self.init_uart()
        # self.blink()

    def init_uart(self):
        # No CPU, use Serial to control Wishbone bus
        self.submodules.serial_bridge = UARTWishboneBridge(
            self._platform.request("serial"), self._sys_clk_freq
        )
        self.bus.add_master(master=self.serial_bridge.wishbone)

        # Led
        user_leds = Cat(*[self._platform.request("user_led_n", i) for i in range(1)])
        self.submodules.leds = Led(user_leds)
        self.add_csr("leds")

    def blink(self):
        led = self._platform.request("user_led_n", 0)
        counter = Signal(26)
        self.comb += led.eq(counter[25])
        self.sync += counter.eq(counter + 1)

    def run(self):
        builder = Builder(self, csr_csv="csr.csv")
        builder.build(compress=True)

        prog = self._platform.create_programmer()
        prog.load_bitstream(builder.get_bitstream_filename(mode="sram"))

        self.start_server()
        self.connect()

    def start_server(self, uart_port="/dev/ttyACM0"):
        comm = CommUART(uart_port)
        server = RemoteServer(comm, "localhost")
        server.open()
        server.start(4)

    def connect(self):
        wb = RemoteClient()
        wb.open()

        fpga_id = ""
        for i in range(256):
            c = chr(wb.read(wb.bases.identifier_mem + 4 * i) & 0xFF)
            fpga_id += c
            if c == "\0":
                break
        print("Connected to UART:", fpga_id)

        while True:
            try:
                wb.regs.leds_out.write(0)
                # wb.regs.main_user_input.write(0)
                # time.sleep(0.1)
                # wb.regs.leds_out.write(1)
                # wb.regs.main_user_input.write(1)
                # time.sleep(0.1)
                n = int(input("Enter a number: "))
                wb.regs.main_user_input.write(n)
            except KeyboardInterrupt:
                break

        wb.close()


class SimSoC(BaseSoC):
    def __init__(self, main_image):
        self._sys_clk_freq = int(25e6)
        self._platform = sim.Platform()
        self.crg = CRG(self._platform.request("sys_clk"))
        BaseSoC.__init__(self, main_image)

    def run(self):
        sim_config = SimConfig()
        sim_config.add_clocker("sys_clk", self._sys_clk_freq)
        sim_config.add_module("video", "vga", args={"render_on_vsync": True})

        builder = Builder(self)
        builder.build(
            sim_config=sim_config,
            interactive=True,
            video=True,
            opt_level="O3",
            # threads=4,
        )
