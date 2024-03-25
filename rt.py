#!/usr/bin/env python3

from migen import *
from litex.soc.integration.builder import Builder
import fpgatoy


def main_image(pattern, platform):
    platform.add_source("./rt/RTCore.v")
    out_req = Signal()
    red = Signal(8)
    grn = Signal(8)
    blu = Signal(8)
    pattern.specials += Instance(
        "RTCore",
        i_clk=ClockSignal(),
        i_reset=ResetSignal(),
        i_io_pix_x=pattern.vtg_sink.hcount - 320,
        i_io_pix_y=240 - pattern.vtg_sink.vcount,
        i_io_pixel_in_vsync=(pattern.vtg_sink.hcount == 0) & (pattern.vtg_sink.vcount == 0),
        i_io_pixel_in_req=((pattern.vtg_sink.hcount < 640) & (pattern.vtg_sink.vcount < 480)),
        i_io_pixel_in_eol=(pattern.vtg_sink.hcount == 639),
        i_io_pixel_in_eof=(pattern.vtg_sink.hcount == 639) & (pattern.vtg_sink.vcount == 479),
        i_io_pixel_in_pixel_r=0,
        i_io_pixel_in_pixel_g=255,
        i_io_pixel_in_pixel_b=0,
        o_io_pixel_out_req=out_req,
        o_io_pixel_out_pixel_r=red,
        o_io_pixel_out_pixel_g=grn,
        o_io_pixel_out_pixel_b=blu,
    )
    return [
        pattern.source.r.eq(red),
        pattern.source.g.eq(grn),
        pattern.source.b.eq(blu),
    ]


soc = fpgatoy.BaseSoC(main_image)

builder = Builder(soc)
builder.build(compress=True)

prog = soc.platform.create_programmer()
prog.load_bitstream(builder.get_bitstream_filename(mode="sram"))
