#!/usr/bin/env python3

from migen import *
import fpgatoy
import os


@fpgatoy.SimSoC
# @fpgatoy.MySoC
def main_image(self):
    self.connect_video()
    self.add_sources(
        "build.v",
    )
    paint_r = Signal(6)
    paint_g = Signal(6)
    paint_b = Signal(6)
    self.specials += Instance(
        "M_frame_display_M_main_display",
        i_clock=ClockSignal(),
        i_reset=ResetSignal(),
        i_in_pix_x=self.vtg.source.hcount,
        i_in_pix_y=self.vtg.source.vcount,
        i_in_pix_active=self.vtg.source.de,
        i_in_pix_vblank=(self.vtg.source.vcount >= 480),
        i_in_vga_hs=self.vtg.source.hsync,
        i_in_vga_vs=self.vtg.source.vsync,
        o_out_pix_r=paint_r,
        o_out_pix_g=paint_g,
        o_out_pix_b=paint_b,
    )
    return [
        self.video.sink.r.eq(paint_r << 2),
        self.video.sink.g.eq(paint_g << 2),
        self.video.sink.b.eq(paint_b << 2),
    ]


main_image.run()
