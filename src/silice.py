#!/usr/bin/env python3

import sys
from migen import *
import fpgatoy


demo = sys.argv[1]
latencies = {
    "vga_circles": 9,
    "vga_humanshader": 20,
    "vga_mc": 48,
    "vga_msponge": 136,
}


@fpgatoy.SimSoC
# @fpgatoy.MySoC
def main_image(self):
    self.connect_video(latency=latencies.get(demo, 0))
    self.add_sources(demo + ".si.v")
    self.specials += Instance(
        "M_frame_display",
        i_clock=ClockSignal(),
        i_reset=ResetSignal(),
        i_in_pix_x=self.vtg.source.hcount,
        i_in_pix_y=self.vtg.source.vcount,
        i_in_pix_active=(self.vtg.source.hcount < 640) & (self.vtg.source.vcount < 480),
        i_in_pix_vblank=(self.vtg.source.vcount >= 480),
        i_in_vga_hs=self.vtg.source.hsync,
        i_in_vga_vs=self.vtg.source.vsync,
        o_out_pix_r=self.video.sink.r,
        o_out_pix_g=self.video.sink.g,
        o_out_pix_b=self.video.sink.b,
    )


main_image.run()
