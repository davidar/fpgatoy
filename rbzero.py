#!/usr/bin/env python3

from migen import *
import fpgatoy


@fpgatoy.SimSoC
# @fpgatoy.MySoC
def main_image(self):
    self.connect_video()
    self.add_sources(
        "raybox-zero/src/rtl/row_render.v",
        "raybox-zero/src/rtl/pov.v",
        "raybox-zero/src/rtl/spi_registers.v",
        "raybox-zero/src/rtl/map_rom.v",
        "raybox-zero/src/rtl/debug_overlay.v",
        "raybox-zero/src/rtl/wall_tracer.v",
        "raybox-zero/src/rtl/vga_mux.v",
        "raybox-zero/src/rtl/reciprocal.v",
        "raybox-zero/src/rtl/lzc.v",
        "rbzero.v",
    )
    rgb = Signal(6)
    self.specials += Instance(
        "rbzero",
        i_clk=ClockSignal(),
        i_reset=ResetSignal(),
        i_hpos=self.vtg.source.hcount,
        i_vpos=self.vtg.source.vcount,
        i_i_sclk=ClockSignal(),
        i_i_mosi=0,
        i_i_ss_n=1,
        i_i_reg_sclk=ClockSignal(),
        i_i_reg_mosi=0,
        i_i_reg_ss_n=1,
        i_i_debug=0,
        i_i_inc_px=0,
        i_i_inc_py=0,
        o_rgb=rgb,
    )
    return [
        self.video.sink.r.eq(rgb[4:6] << 6),
        self.video.sink.g.eq(rgb[2:4] << 6),
        self.video.sink.b.eq(rgb[0:2] << 6),
    ]


main_image.run()
