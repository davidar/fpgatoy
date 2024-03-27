// Project F: FPGA Graphics - Flag of Sweden
// (C)2023 Will Green, open source hardware released under the MIT License
// Learn more at https://projectf.io/posts/fpga-graphics/

`default_nettype none
`timescale 1ns / 1ps

localparam CORDW = 10;  // screen coordinate width in bits

module flag_sweden (
    input       logic [CORDW-1:0] sx,  // screen x coordinate
    input       logic [CORDW-1:0] sy,  // screen y coordinate
    output      logic [3:0] paint_r,  // 4-bit DVI red
    output      logic [3:0] paint_g,  // 4-bit DVI green
    output      logic [3:0] paint_b   // 4-bit DVI blue
    );
    // paint colour: flag of Sweden (16:10 ratio)
    always_comb begin
        if (sy >= 400) begin  // black outside the flag area
            paint_r = 4'h0;
            paint_g = 4'h0;
            paint_b = 4'h0;
        end else if (sy > 160 && sy < 240) begin  // yellow cross horizontal
            paint_r = 4'hF;
            paint_g = 4'hC;
            paint_b = 4'h0;
        end else if (sx > 200 && sx < 280) begin  // yellow cross vertical
            paint_r = 4'hF;
            paint_g = 4'hC;
            paint_b = 4'h0;
        end else begin  // blue flag background
            paint_r = 4'h0;
            paint_g = 4'h6;
            paint_b = 4'hA;
        end
    end
endmodule
