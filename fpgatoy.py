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
from litex.soc.cores.video import VideoHDMIPHY, VideoTimingGenerator, VideoVGAPHY
from litex.soc.cores.video import video_data_layout, video_timing_layout
from litex.soc.cores.uart import UARTWishboneBridge
from litex.soc.cores import gpio

from litex.build.generic_platform import GenericPlatform
from litex.build.io import CRG
from litex.build.sim.config import SimConfig

import litex.tools.litex_sim as sim


class Led(gpio.GPIOOut):
    pass


# Boilerplate based on litex.soc.cores.video.ColorBarsPattern
class Pattern(LiteXModule):
    def __init__(self):
        self.enable = Signal(reset=1)
        self.vtg_sink = vtg_sink = stream.Endpoint(video_timing_layout)
        self.source = source = stream.Endpoint(video_data_layout)

        self.fcount = Signal(16)

        enable = Signal()
        self.specials += MultiReg(self.enable, enable)

        fsm = FSM(reset_state="IDLE")
        fsm = ResetInserter()(fsm)
        self.fsm = fsm
        self.comb += fsm.reset.eq(~self.enable)
        newframe = (vtg_sink.hcount == 0) & (vtg_sink.vcount == 0)
        fsm.act(
            "IDLE",
            NextValue(self.fcount, 0),
            vtg_sink.ready.eq(1),
            If(
                vtg_sink.valid & vtg_sink.first & newframe,
                vtg_sink.ready.eq(0),
                NextState("RUN"),
            ),
        )
        fsm.act(
            "RUN",
            If(vtg_sink.ready & newframe, NextValue(self.fcount, self.fcount + 1)),
        )


class BaseSoC(SoCMini):
    def __init__(
        self,
        main_image,
        platform: GenericPlatform,
        sys_clk_freq: int,
        clock_domain="sys",
        video_timing="640x480@60Hz",
    ):
        SoCMini.__init__(
            self,
            platform,
            sys_clk_freq,
            ident="fpgatoy SoC",
            ident_version=True,
        )

        try:
            self.videophy = VideoHDMIPHY(platform.request("gpdi"), clock_domain)
        except:
            self.videophy = VideoVGAPHY(platform.request("vga"), clock_domain)

        pattern_vtg = VideoTimingGenerator(video_timing)
        if clock_domain != "sys":
            pattern_vtg = ClockDomainsRenamer(clock_domain)(pattern_vtg)
        self.add_module("pattern_vtg", pattern_vtg)

        pattern = Pattern()
        pattern.comb += main_image(pattern, platform)
        if clock_domain != "sys":
            pattern = ClockDomainsRenamer(clock_domain)(pattern)
        self.add_module("pattern", pattern)

        self.comb += [
            pattern_vtg.source.connect(pattern.vtg_sink),
            pattern.source.connect(self.videophy.sink),
        ]


class MySoC(BaseSoC):
    def __init__(self, main_image):
        sys_clk_freq = int(25e6)
        platform = colorlight_i5.Platform("i9", "7.2")
        self.crg = colorlight_i5_CRG(
            platform, sys_clk_freq, with_video_pll=True, pix_clk=25e6
        )
        BaseSoC.__init__(self, main_image, platform, sys_clk_freq, "hdmi")

        ### OPTIONAL ###

        # self.blink()

        # No CPU, use Serial to control Wishbone bus
        self.submodules.serial_bridge = UARTWishboneBridge(
            platform.request("serial"), sys_clk_freq
        )
        self.bus.add_master(master=self.serial_bridge.wishbone)

        # Led
        user_leds = Cat(*[platform.request("user_led_n", i) for i in range(1)])
        self.submodules.leds = Led(user_leds)
        self.add_csr("leds")

    def blink(self):
        led = self.platform.request("user_led_n", 0)
        counter = Signal(26)
        self.comb += led.eq(counter[25])
        self.sync += counter.eq(counter + 1)

    def run(self):
        builder = Builder(self, csr_csv="csr.csv")
        builder.build(compress=True)

        prog = self.platform.create_programmer()
        prog.load_bitstream(builder.get_bitstream_filename(mode="sram"))

        self.connect()

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
                time.sleep(0.1)
                wb.regs.leds_out.write(1)
                time.sleep(0.1)
            except KeyboardInterrupt:
                break

        wb.close()


class SimSoC(BaseSoC):
    def __init__(self, main_image):
        platform = sim.Platform()
        self.crg = CRG(platform.request("sys_clk"))
        BaseSoC.__init__(self, main_image, platform, 1e6)

    def run(self):
        sim_config = SimConfig()
        sim_config.add_clocker("sys_clk", 1e6)
        sim_config.add_module("video", "vga")

        builder = Builder(self)
        builder.build(
            sim_config=sim_config,
            interactive=True,
            video=True,
            opt_level="O1",
            # threads=4,
        )
