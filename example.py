#!/usr/bin/env python3

# A simple example that displays a moving colour gradient on the screen.
# Equivalent to the following Shadertoy GLSL code:
"""
void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    vec2 uv = fragCoord/iResolution.xy;
    int x = int(uv.x * 640.);
    int y = int(uv.y * 480.);
    int t = int(iTime * 80.) & 0xff;
    
    int r = (t + (x >> 3) +   0) & 0xff;
    int g = (t + (y >> 3) + 160) & 0xff;
    int b = (t + (x >> 3) + 320) & 0xff;
    
    vec3 col = vec3(r, g, b) / 255.;
    fragColor = vec4(col,1.0);
}
"""

from migen import *
import fpgatoy


@fpgatoy.MySoC
def main_image(self):
    x = self.vtg.source.hcount
    y = self.vtg.source.vcount
    t = Signal(16)
    self.sync += If(
        self.vtg.source.ready
        & (self.vtg.source.hcount == 0)
        & (self.vtg.source.vcount == 0),
        t.eq(t + 1),
    )
    self.comb += [
        # self.vtg.source.ready.eq(1),
        self.vtg.source.connect(
            self.video.sink, keep={"valid", "ready", "last", "de", "hsync", "vsync"}
        ),
        self.video.sink.r.eq(t + (x >> 3) + 0),
        self.video.sink.g.eq(t + (y >> 3) + 160),
        # self.video.sink.b.eq(t + (x >> 3) + 320),
        self.video.sink.b.eq(self.user_input.storage),
    ]


main_image.run()
