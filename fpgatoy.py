from migen import *
from migen.genlib.cdc import MultiReg

from litex_boards.platforms import colorlight_i5
from litex_boards.targets.colorlight_i5 import _CRG as colorlight_i5_CRG

from litex.gen import LiteXModule

from litex.soc.integration.builder import Builder
from litex.soc.integration.soc_core import SoCCore
from litex.soc.interconnect import stream
from litex.soc.cores.video import VideoHDMIPHY, VideoTimingGenerator, VideoVGAPHY
from litex.soc.cores.video import video_data_layout, video_timing_layout

from litex.build.generic_platform import GenericPlatform
from litex.build.io import CRG
from litex.build.sim.config import SimConfig

import litex.tools.litex_sim as sim


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


class BaseSoC(SoCCore):
    def __init__(
        self,
        main_image,
        platform: GenericPlatform,
        sys_clk_freq: int,
        clock_domain="sys",
        video_timing="640x480@60Hz",
    ):
        SoCCore.__init__(
            self,
            platform,
            sys_clk_freq,
            cpu_type=None,
            with_uart=False,
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
        platform = colorlight_i5.Platform("i9", "7.2")
        self.crg = colorlight_i5_CRG(platform, 25e6, with_video_pll=True, pix_clk=25e6)
        # led = platform.request("user_led_n", 0)
        # counter = Signal(26)
        # self.comb += led.eq(counter[25])
        # self.sync += counter.eq(counter + 1)
        BaseSoC.__init__(self, main_image, platform, 25e6, "hdmi")

    def run(self):
        builder = Builder(self)
        builder.build(compress=True)

        prog = self.platform.create_programmer()
        prog.load_bitstream(builder.get_bitstream_filename(mode="sram"))


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
            # threads=4,
        )
