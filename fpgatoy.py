from migen import *
from migen.genlib.cdc import MultiReg

from litex_boards.platforms import colorlight_i5
from litex_boards.targets.colorlight_i5 import _CRG

from litex.gen import LiteXModule

from litex.soc.integration.soc_core import SoCCore
from litex.soc.interconnect import stream
from litex.soc.cores.video import VideoGenericPHY, VideoHDMIPHY, VideoTimingGenerator
from litex.soc.cores.video import video_data_layout, video_timing_layout

from litex.build.io import CRG

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
    def __init__(self, main_image):
        platform = colorlight_i5.Platform("i9", "7.2")
        video_timing = "640x480@60Hz"
        sys_clk_freq = 25e6

        led = platform.request("user_led_n", 0)
        counter = Signal(26)
        self.comb += led.eq(counter[25])
        self.sync += counter.eq(counter + 1)

        self.crg = _CRG(
            platform,
            sys_clk_freq,
            with_video_pll=True,
            pix_clk=25e6,  # video_timings[video_timing]["pix_clk"]
        )

        SoCCore.__init__(
            self,
            platform,
            int(sys_clk_freq),
            ident="LiteX SoC on Colorlight i9",
            cpu_type=None,
        )

        self.videophy = VideoHDMIPHY(platform.request("gpdi"), clock_domain="hdmi")

        pattern_vtg = VideoTimingGenerator(default_video_timings=video_timing)
        pattern_vtg = ClockDomainsRenamer("hdmi")(pattern_vtg)
        self.add_module("pattern_vtg", pattern_vtg)

        pattern = Pattern()
        res = main_image(pattern, platform)
        if res is not None:
            pattern.comb += res
        pattern = ClockDomainsRenamer("hdmi")(pattern)
        self.add_module("pattern", pattern)

        # platform.add_source_dir(path="./")

        self.comb += [
            pattern_vtg.source.connect(pattern.vtg_sink),
            pattern.source.connect(self.videophy.sink),
        ]


class SimSoC(SoCCore):
    def __init__(self, main_image):
        platform = sim.Platform()
        video_timing = "640x480@60Hz"
        sys_clk_freq = int(25e6)

        # led = platform.request("user_led_n", 0)
        # counter = Signal(26)
        # self.comb += led.eq(counter[25])
        # self.sync += counter.eq(counter + 1)

        # self.crg = _CRG(
        #     platform,
        #     sys_clk_freq,
        #     with_video_pll=True,
        #     pix_clk=25e6,  # video_timings[video_timing]["pix_clk"]
        # )

        self.crg = CRG(platform.request("sys_clk"))

        SoCCore.__init__(
            self,
            platform,
            int(sys_clk_freq),
            ident="LiteX Simulation",
            cpu_type=None,
            with_uart=False,
        )

        # self.videophy = VideoHDMIPHY(platform.request("gpdi"), clock_domain="hdmi")
        self.submodules.videophy = VideoGenericPHY(platform.request("vga"))

        pattern_vtg = VideoTimingGenerator(default_video_timings=video_timing)
        # pattern_vtg = ClockDomainsRenamer("hdmi")(pattern_vtg)
        self.add_module("pattern_vtg", pattern_vtg)

        pattern = Pattern()
        res = main_image(pattern, platform)
        if res is not None:
            pattern.comb += res
        # pattern = ClockDomainsRenamer("hdmi")(pattern)
        self.add_module("pattern", pattern)

        # platform.add_source_dir(path="./")

        self.comb += [
            pattern_vtg.source.connect(pattern.vtg_sink),
            pattern.source.connect(self.videophy.sink),
        ]
