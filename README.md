# fpgatoy

This is a simple framework for running Shadertoy-style "shaders" on an FPGA, synthesised directly as a logic circuit without any CPU or GPU.
It operates by ["racing the beam"](https://tomverbeure.github.io/rtl/2018/11/26/Racing-the-Beam-Ray-Tracer.html),
generating pixel values just in time to be sent out in the HDMI signal, without any intermediate framebuffer.

![](img/human_shader.jpeg)

## Hardware

I'm using a Colorlight i9, with [Muse Lab's development board](https://tomverbeure.github.io/2021/01/22/The-Colorlight-i5-as-FPGA-development-board.html).
This is the best value FPGA board I've found — it provides 45k LUTs (almost double the 25k LUTs in the i5 version) and can be purchased for less than 50 USD.

![](img/colorlight_i9.jpeg)

However, thanks the the abstractions provided by [LiteX-Boards](https://github.com/litex-hub/litex-boards), it should be trivial to port to any of the other 100+ supported FPGA platforms.
