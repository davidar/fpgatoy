#!/usr/bin/env python3

from migen import *
import fpgatoy


@fpgatoy.SimSoC
# @fpgatoy.MySoC
def main_image(self):
    self.connect_video()
    x = self.vtg.source.hcount
    y = self.vtg.source.vcount
    t = self.frame_counter()
    s = x + y + t
    return [
        self.video.sink.r.eq(s << 0),
        self.video.sink.g.eq(s << 1),
        self.video.sink.b.eq(s << 2),
    ]


main_image.run()
