#!/usr/bin/env python3

from migen import *
from litex.soc.integration.builder import Builder
import fpgatoy


def main_image(pattern, platform):
    platform.add_source("rt/RTCore.v")
    pattern.specials += Instance(
        "RTCore",
        i_clk=ClockSignal(),
        i_reset=ResetSignal(),
        i_io_pix_x=pattern.vtg_sink.hcount - 320,
        i_io_pix_y=240 - pattern.vtg_sink.vcount,
        i_io_pixel_in_vsync=(
            (pattern.vtg_sink.hcount == 0) & (pattern.vtg_sink.vcount == 0)
        ),
        i_io_pixel_in_req=(
            (pattern.vtg_sink.hcount < 640) & (pattern.vtg_sink.vcount < 480)
        ),
        i_io_pixel_in_eol=(pattern.vtg_sink.hcount == 639),
        i_io_pixel_in_eof=(
            (pattern.vtg_sink.hcount == 639) & (pattern.vtg_sink.vcount == 479)
        ),
        i_io_pixel_in_pixel_r=255,
        i_io_pixel_in_pixel_g=255,
        i_io_pixel_in_pixel_b=0,
        i_io_pixel_in_vtg_valid=pattern.vtg_sink.valid,
        i_io_pixel_in_vtg_last=pattern.vtg_sink.last,
        i_io_pixel_in_vtg_de=pattern.vtg_sink.de,
        i_io_pixel_in_vtg_hsync=pattern.vtg_sink.hsync,
        i_io_pixel_in_vtg_vsync=pattern.vtg_sink.vsync,
        o_io_pixel_out_pixel_r=pattern.source.r,
        o_io_pixel_out_pixel_g=pattern.source.g,
        o_io_pixel_out_pixel_b=pattern.source.b,
        o_io_pixel_out_vtg_valid=pattern.source.valid,
        o_io_pixel_out_vtg_last=pattern.source.last,
        o_io_pixel_out_vtg_de=pattern.source.de,
        o_io_pixel_out_vtg_hsync=pattern.source.hsync,
        o_io_pixel_out_vtg_vsync=pattern.source.vsync,
    )
    return [
        pattern.vtg_sink.connect(pattern.source, keep={"ready"}),
    ]


soc = fpgatoy.BaseSoC(main_image)

builder = Builder(soc)
builder.build(compress=True)

prog = soc.platform.create_programmer()
prog.load_bitstream(builder.get_bitstream_filename(mode="sram"))
