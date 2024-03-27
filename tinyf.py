#!/usr/bin/env python3

from migen import *
import fpgatoy
import os


@fpgatoy.SimSoC
# @fpgatoy.MySoC
def main_image(pattern, platform):
    platform.add_source("projf-explore/graphics/hardware-sprites/sprite.sv")
    platform.add_source("projf-explore/graphics/hardware-sprites/sprite_inline.sv")
    platform.add_source("projf-explore/graphics/hardware-sprites/sprite_rom.sv")
    platform.add_source("rom_async.sv")
    platform.add_source("tinyf.sv")
    paint_r = Signal(4)
    paint_g = Signal(4)
    paint_b = Signal(4)
    pattern.specials += Instance(
        "tinyf",
        i_clk_pix=ClockSignal(),
        i_rst_pix=ResetSignal(),
        # i_rst_pix=pattern.fcount < 10,
        i_sx=pattern.vtg_sink.hcount,
        i_sy=pattern.vtg_sink.vcount,
        i_line=pattern.vtg_sink.hcount == 0,
        i_frame=(pattern.vtg_sink.hcount == 0) & (pattern.vtg_sink.vcount == 0),
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


# so $readmemb works in the simulator
os.system("mkdir -p build/sim/gateware/ && cp tinyf.mem build/sim/gateware/")

main_image.run()
