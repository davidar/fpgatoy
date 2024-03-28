#!/usr/bin/env python3

from migen import *
import fpgatoy
import os


def main_image(self):
    self.connect_video("ready")
    self.platform.add_source("rt/RTCore.v")
    self.specials += Instance(
        "RTCore",
        i_clk=ClockSignal(),
        i_reset=ResetSignal(),
        i_io_pix_x=self.vtg.source.hcount - 320,
        i_io_pix_y=240 - self.vtg.source.vcount,
        i_io_pixel_in_vsync=(
            (self.vtg.source.hcount == 0) & (self.vtg.source.vcount == 0)
        ),
        i_io_pixel_in_req=(
            (self.vtg.source.hcount < 640) & (self.vtg.source.vcount < 480)
        ),
        i_io_pixel_in_eol=(self.vtg.source.hcount == 639),
        i_io_pixel_in_eof=(
            (self.vtg.source.hcount == 639) & (self.vtg.source.vcount == 479)
        ),
        i_io_pixel_in_pixel_r=255,
        i_io_pixel_in_pixel_g=255,
        i_io_pixel_in_pixel_b=0,
        i_io_pixel_in_vtg_valid=self.vtg.source.valid,
        i_io_pixel_in_vtg_last=self.vtg.source.last,
        i_io_pixel_in_vtg_de=self.vtg.source.de,
        i_io_pixel_in_vtg_hsync=self.vtg.source.hsync,
        i_io_pixel_in_vtg_vsync=self.vtg.source.vsync,
        o_io_pixel_out_pixel_r=self.video.sink.r,
        o_io_pixel_out_pixel_g=self.video.sink.g,
        o_io_pixel_out_pixel_b=self.video.sink.b,
        o_io_pixel_out_vtg_valid=self.video.sink.valid,
        o_io_pixel_out_vtg_last=self.video.sink.last,
        o_io_pixel_out_vtg_de=self.video.sink.de,
        o_io_pixel_out_vtg_hsync=self.video.sink.hsync,
        o_io_pixel_out_vtg_vsync=self.video.sink.vsync,
    )


# so $readmemb works in the simulator
os.system("mkdir -p build/sim/gateware/ && cp rt/RTCore.v_*.bin build/sim/gateware/")

fpgatoy.SimSoC(main_image).run()
