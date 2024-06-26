#!/usr/bin/env python3

from migen import *
import fpgatoy
import os


@fpgatoy.SimSoC
# @fpgatoy.MySoC
def main_image(self):
    self.connect_video()
    self.add_sources(
        "projf-explore/lib/display/clut_simple.sv",
        "projf-explore/graphics/hardware-sprites/sprite.sv",
        "bram_sdp.sv",
        "rom_async.sv",
        "hedgehog.sv",
    )
    paint_r = Signal(4)
    paint_g = Signal(4)
    paint_b = Signal(4)
    self.specials += Instance(
        "hedgehog",
        i_clk_pix=ClockSignal(),
        i_rst_pix=ResetSignal(),
        i_sx=self.vtg.source.hcount,
        i_sy=self.vtg.source.vcount,
        i_line=self.vtg.source.hcount == 0,
        i_frame=(self.vtg.source.hcount == 0) & (self.vtg.source.vcount == 0),
        o_paint_r=paint_r,
        o_paint_g=paint_g,
        o_paint_b=paint_b,
    )
    return [
        self.video.sink.r.eq(paint_r << 4),
        self.video.sink.g.eq(paint_g << 4),
        self.video.sink.b.eq(paint_b << 4),
    ]


# so $readmemb works in the simulator
os.system("mkdir -p build/sim/gateware/ && cp hedgehog*.mem build/sim/gateware/")

main_image.run()
