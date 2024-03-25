#!/usr/bin/env python3

# Rough port of iq's Human Shader (16 bit version) to LiteX/Migen.
# https://www.shadertoy.com/view/XflXDs
# The MIT License
# Copyright © 2023 Inigo Quilez
# https://humanshader.com

from migen import *
from litex.soc.integration.builder import Builder
import fpgatoy

def main_image(pattern):
    x, y, u, v, u2, v2, h, t, p, q, w0, R0, B0, o, R1, B1, w1, r, d, R2, B2, p1, c, o1, o2, R3, B3, c1, Ro, Bo, Rm, Bm, Go = [
        Signal((32, True), name) for name in [
            "x", "y", "u", "v", "u2", "v2", "h", "t", "p", "q", "w0", "R0", "B0", "o", "R1", "B1", "w1", "r", "d", "R2", "B2", "p1", "c", "o1", "o2", "R3", "B3", "c1", "Ro", "Bo", "Rm", "Bm", "Go"
        ]
    ]
    return [
        x.eq(pattern.vtg_sink.hcount[3:] - 5),
        y.eq(pattern.vtg_sink.vcount[3:] - 10),
        u.eq(x - 36),
        v.eq(18 - y),
        u2.eq(u * u),
        v2.eq(v * v),
        h.eq(u2 + v2),
        If(h < 200,  # sphere
            t.eq(5200 + h*8),
            p.eq((t*u)>>7),
            q.eq((t*v)>>7),
            
            # bounce light
            w0.eq(18 + (((p*5-q*13))>>9)),
            If(w0 > 0,
                R0.eq(420 + w0*w0)
            ).Else(
                R0.eq(420),
            ),
            B0.eq(520),
            
            # sky light / ambient occlusion
            o.eq(q + 900),
            R1.eq((R0*o)>>12),
            B1.eq((B0*o)>>12),

            # sun/key light
            If(p > -q,
                w1.eq((p+q)>>3),
                Ro.eq(R1 + w1),
                Bo.eq(B1 + w1),
            ).Else(
                Ro.eq(R1),
                Bo.eq(B1),
            )
        ).Elif(v < 0,  # ground
            R2.eq(150 + 2*v),
            B2.eq(50),
            
            p1.eq(h + 8*v2),
            c.eq(240*(-v) - p1),

            # sky light / ambient occlusion
            If(c > 1200,
                o1.eq((25*c)>>3),
                o2.eq((c*(7840-o1)>>9) - 8560),
                R3.eq((R2*o2)>>10),
                B3.eq((B2*o2)>>10),
            ).Else(
                R3.eq(R2),
                B3.eq(B2),
            ),

            # sun/key light with soft shadow
            r.eq(c + u*v),
            d.eq(3200 - h - 2*r),
            If(d > 0,
                Ro.eq(R3 + d),
            ).Else(
                Ro.eq(R3),
            ),
            Bo.eq(B3),
        ).Else(  # sky
            c1.eq(x + 4*y),
            Ro.eq(132 + c1),
            Bo.eq(192 + c1),
        ),
        If(Ro > 255,
            Rm.eq(255)
        ).Else(
            Rm.eq(Ro)
        ),
        If(Bo > 255,
            Bm.eq(255)
        ).Else(
            Bm.eq(Bo)
        ),
        Go.eq((Rm*11 + 5*Bm)>>4),
        pattern.source.r.eq(Rm[:8]),
        pattern.source.g.eq(Go[:8]),
        pattern.source.b.eq(Bm[:8]),
    ]

soc = fpgatoy.BaseSoC(main_image)

builder = Builder(soc)
builder.build(compress=True)

prog = soc.platform.create_programmer()
prog.load_bitstream(builder.get_bitstream_filename(mode="sram"))
