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
from litex.soc.integration.builder import Builder
import fpgatoy


def main_image(pattern, platform):
    x = pattern.vtg_sink.hcount
    y = pattern.vtg_sink.vcount
    t = pattern.fcount
    return [
        pattern.vtg_sink.connect(
            pattern.source, keep={"valid", "ready", "last", "de", "hsync", "vsync"}
        ),
        pattern.source.r.eq(t + (x >> 3) + 0),
        pattern.source.g.eq(t + (y >> 3) + 160),
        pattern.source.b.eq(t + (x >> 3) + 320),
    ]


soc = fpgatoy.BaseSoC(main_image)

builder = Builder(soc)
builder.build(compress=True)

prog = soc.platform.create_programmer()
prog.load_bitstream(builder.get_bitstream_filename(mode="sram"))
