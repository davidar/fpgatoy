#!/usr/bin/env python3

from migen import *
import fpgatoy


@fpgatoy.SimSoC
def main_image(pattern, platform):
    platform.add_source("flag_sweden.sv")
    paint_r = Signal(4)
    paint_g = Signal(4)
    paint_b = Signal(4)
    pattern.specials += Instance(
        "flag_sweden",
        i_sx=pattern.vtg_sink.hcount,
        i_sy=pattern.vtg_sink.vcount,
        o_paint_r=paint_r,
        o_paint_g=paint_g,
        o_paint_b=paint_b,
    )
    return [
        pattern.vtg_sink.connect(
            pattern.source, keep={"valid", "ready", "last", "de", "hsync", "vsync"}
        ),
        pattern.source.r.eq(paint_r << 4),
        pattern.source.g.eq(paint_g << 4),
        pattern.source.b.eq(paint_b << 4),
    ]


main_image.run()
