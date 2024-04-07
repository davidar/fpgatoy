#!/usr/bin/env python3

from migen import *
import fpgatoy
import os


@fpgatoy.SimSoC
# @fpgatoy.MySoC
def main_image(self):
    self.connect_video()
    self.add_sources(
        "projf-explore/graphics/hardware-sprites/sprite.sv",
        "projf-explore/graphics/hardware-sprites/sprite_inline.sv",
        "projf-explore/graphics/hardware-sprites/sprite_rom.sv",
        "rom_async.sv",
        "tinyf.sv",
    )
    paint_r = Signal(4)
    paint_g = Signal(4)
    paint_b = Signal(4)
    self.specials += Instance(
        "tinyf",
        i_clk_pix=ClockSignal(),
        i_rst_pix=ResetSignal(),
        # i_rst_pix=pattern.fcount < 10,
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
os.system("mkdir -p build/sim/gateware/ && cp tinyf.mem build/sim/gateware/")

main_image.run()
