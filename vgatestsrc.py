#!/usr/bin/env python3

from migen import *
import fpgatoy


@fpgatoy.SimSoC
# @fpgatoy.MySoC
def main_image(self):
    self.connect_video()
    self.add_sources("vgatestsrc.v")
    pixel = Signal(24)
    self.specials += Instance(
        "vgatestsrc",
        p_BITS_PER_COLOR=8,
        i_i_pixclk=ClockSignal(),
        i_i_reset=ResetSignal(),
        i_i_width=640,
        i_i_height=480,
        i_i_rd=((self.vtg.source.hcount < 640) & (self.vtg.source.vcount < 480)),
        i_i_newline=(self.vtg.source.hcount == 639),
        i_i_newframe=(
            (self.vtg.source.hcount == 639) & (self.vtg.source.vcount == 479)
        ),
        o_o_pixel=pixel,
    )
    return [
        self.video.sink.r.eq(pixel[16:]),
        self.video.sink.g.eq(pixel[8:16]),
        self.video.sink.b.eq(pixel[:8]),
    ]


main_image.run()
