#!/usr/bin/env python3

from migen import *
import fpgatoy


# @fpgatoy.SimSoC
@fpgatoy.MySoC
def main_image(self):
    self.connect_video()
    self.add_sources("bounce.sv")
    paint_r = Signal(4)
    paint_g = Signal(4)
    paint_b = Signal(4)
    self.specials += Instance(
        "bounce",
        i_clk_pix=ClockSignal(),
        i_sx=self.vtg.source.hcount,
        i_sy=self.vtg.source.vcount,
        o_paint_r=paint_r,
        o_paint_g=paint_g,
        o_paint_b=paint_b,
    )
    return [
        self.video.sink.r.eq(paint_r << 4),
        self.video.sink.g.eq(paint_g << 4),
        self.video.sink.b.eq(paint_b << 4),
    ]


main_image.run()
