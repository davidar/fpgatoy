#!/usr/bin/env python3

from migen import *
import fpgatoy


@fpgatoy.SimSoC
# @fpgatoy.MySoC
def main_image(self):
    self.connect_video()
    self.add_sources("vga_humanshader.si.v")
    self.specials += Instance(
        "M_frame_display",
        i_clock=ClockSignal(),
        i_reset=ResetSignal(),
        i_in_pix_x=self.vtg.source.hcount,
        i_in_pix_y=self.vtg.source.vcount,
        i_in_pix_active=self.vtg.source.de,
        i_in_pix_vblank=(self.vtg.source.vcount >= 480),
        i_in_vga_hs=self.vtg.source.hsync,
        i_in_vga_vs=self.vtg.source.vsync,
        o_out_pix_r=self.video.sink.r,
        o_out_pix_g=self.video.sink.g,
        o_out_pix_b=self.video.sink.b,
    )


main_image.run()
