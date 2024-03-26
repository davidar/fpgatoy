#!/usr/bin/env python3

from migen import *
import fpgatoy


def main_image(pattern, platform):
    platform.add_source("vgatestsrc.v")
    pixel = Signal(24)
    pattern.specials += Instance(
        "vgatestsrc",
        p_BITS_PER_COLOR=8,
        i_i_pixclk=ClockSignal(),
        i_i_reset=ResetSignal(),
        i_i_width=640,
        i_i_height=480,
        i_i_rd=((pattern.vtg_sink.hcount < 640) & (pattern.vtg_sink.vcount < 480)),
        i_i_newline=(pattern.vtg_sink.hcount == 639),
        i_i_newframe=(
            (pattern.vtg_sink.hcount == 639) & (pattern.vtg_sink.vcount == 479)
        ),
        o_o_pixel=pixel,
    )
    return [
        pattern.vtg_sink.connect(
            pattern.source, keep={"valid", "ready", "last", "de", "hsync", "vsync"}
        ),
        pattern.source.r.eq(pixel[16:]),
        pattern.source.g.eq(pixel[8:16]),
        pattern.source.b.eq(pixel[:8]),
    ]


fpgatoy.SimSoC(main_image).run()
