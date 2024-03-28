// Project F: Hardware Sprites - Tiny F with Motion
// (C)2023 Will Green, open source hardware released under the MIT License
// Learn more at https://projectf.io/posts/hardware-sprites/

`default_nettype none
`timescale 1ns / 1ps

localparam CORDW = 16;  // signed coordinate width (bits)

module tinyf (
    input       logic clk_pix,         // pixel clock
    input       logic rst_pix,         // pixel reset
    input       logic [CORDW-1:0] sx,  // screen x coordinate
    input       logic [CORDW-1:0] sy,  // screen y coordinate
    input       logic line,            // start of line
    input       logic frame,           // start of frame
    output      logic [3:0] paint_r,  // 4-bit DVI red
    output      logic [3:0] paint_g,  // 4-bit DVI green
    output      logic [3:0] paint_b   // 4-bit DVI blue
    );

/*
    // screen dimensions (must match display_inst)
    localparam H_RES = 640;

    // sprite parameters
    localparam SPRX = 32;  // horizontal position
    localparam SPRY = 16;  // vertical position

    // sprite
    logic pix, drawing;
    sprite_inline #(
        .CORDW(CORDW),
        .H_RES(H_RES)
        ) sprite_f (
        .clk(clk_pix),
        .rst(rst_pix),
        .line,
        .sx,
        .sy,
        .sprx(SPRX),
        .spry(SPRY),
        .pix,
        .drawing
    );

    // paint colour: yellow sprite, blue background
    always_comb begin
        paint_r = (drawing && pix) ? 4'hF : 4'h1;
        paint_g = (drawing && pix) ? 4'hC : 4'h3;
        paint_b = (drawing && pix) ? 4'h0 : 4'h7;
    end
*/

/*
    // screen dimensions (must match display_inst)
    localparam H_RES = 640;

    // sprite parameters
    localparam SPRX = 32;  // horizontal position
    localparam SPRY = 16;  // vertical position
    localparam SPR_FILE = "tinyf.mem";  // bitmap file

    // sprite
    logic pix, drawing;
    sprite_rom #(
        .CORDW(CORDW),
        .H_RES(H_RES),
        .SPR_FILE(SPR_FILE)
        ) sprite_f (
        .clk(clk_pix),
        .rst(rst_pix),
        .line,
        .sx,
        .sy,
        .sprx(SPRX),
        .spry(SPRY),
        .pix,
        .drawing
    );

    // paint colour: yellow sprite, blue background
    always_comb begin
        paint_r = (drawing && pix) ? 4'hF : 4'h1;
        paint_g = (drawing && pix) ? 4'hC : 4'h3;
        paint_b = (drawing && pix) ? 4'h0 : 4'h7;
    end
*/

/*
    // screen dimensions (must match display_inst)
    localparam H_RES = 640;

    // sprite parameters
    localparam SPRX       = 32;  // horizontal position
    localparam SPRY       = 16;  // vertical position
    localparam SPR_WIDTH  =  8;  // bitmap width in pixels
    localparam SPR_HEIGHT =  8;  // bitmap height in pixels
    localparam SPR_SCALE  =  3;  // 2^3 = 8x scale
    localparam SPR_DATAW  =  1;  // bits per pixel
    localparam SPR_FILE = "tinyf.mem";  // bitmap file

    // sprite
    logic drawing;  // drawing at (sx,sy)
    logic [SPR_DATAW-1:0] pix;  // pixel colour index
    sprite #(
        .CORDW(CORDW),
        .H_RES(H_RES),
        .SPR_FILE(SPR_FILE),
        .SPR_WIDTH(SPR_WIDTH),
        .SPR_HEIGHT(SPR_HEIGHT),
        .SPR_SCALE(SPR_SCALE),
        .SPR_DATAW(SPR_DATAW)
        ) sprite_f (
        .clk(clk_pix),
        .rst(rst_pix),
        .line,
        .sx,
        .sy,
        .sprx(SPRX),
        .spry(SPRY),
        .pix,
        .drawing
    );

    // paint colour: yellow sprite, blue background
    always_comb begin
        paint_r = (drawing && pix) ? 4'hF : 4'h1;
        paint_g = (drawing && pix) ? 4'hC : 4'h3;
        paint_b = (drawing && pix) ? 4'h0 : 4'h7;
    end
*/

//*
    // screen dimensions (must match display_inst)
    localparam H_RES = 640;
    localparam V_RES = 480;

    // sprite parameters
    localparam SPR_WIDTH  = 8;  // bitmap width in pixels
    localparam SPR_HEIGHT = 8;  // bitmap height in pixels
    localparam SPR_SCALE  = 3;  // 2^3 = 8x scale
    localparam SPR_DATAW  = 1;  // bits per pixel
    localparam SPR_DRAWW  = SPR_WIDTH  * 2**SPR_SCALE;  // draw width
    localparam SPR_DRAWH  = SPR_HEIGHT * 2**SPR_SCALE;  // draw height
    localparam SPR_SPX    = 4;  // horizontal speed (pixels/frame)
    localparam SPR_FILE   = "tinyf.mem";  // bitmap file

    // draw sprite at position (sprx,spry)
    logic signed [CORDW-1:0] sprx, spry;
    logic dx;  // direction: 0 is right/down

    // update sprite position once per frame
    always_ff @(posedge clk_pix) begin
        if (frame) begin
            if (dx == 0) begin  // moving right
                if (sprx + SPR_DRAWW >= H_RES + 2*SPR_DRAWW) dx <= 1;  // move left
                else sprx <= sprx + SPR_SPX;  // continue right
            end else begin  // moving left
                if (sprx <= -2*SPR_DRAWW) dx <= 0;  // move right
                else sprx <= sprx - SPR_SPX;  // continue left
            end
        end
        if (rst_pix) begin  // centre sprite and set direction right
            sprx <= H_RES/2 - SPR_DRAWW/2;
            spry <= V_RES/2 - SPR_DRAWH/2;
            dx <= 0;
        end
    end

    logic drawing;  // drawing at (sx,sy)
    logic [SPR_DATAW-1:0] pix;  // pixel colour index
    sprite #(
        .CORDW(CORDW),
        .H_RES(H_RES),
        .SPR_FILE(SPR_FILE),
        .SPR_WIDTH(SPR_WIDTH),
        .SPR_HEIGHT(SPR_HEIGHT),
        .SPR_SCALE(SPR_SCALE),
        .SPR_DATAW(SPR_DATAW)
        ) sprite_f (
        .clk(clk_pix),
        .rst(rst_pix),
        .line,
        .sx,
        .sy,
        .sprx,
        .spry,
        .pix,
        .drawing
    );

    // paint colour: yellow sprite, blue background
    always_comb begin
        paint_r = (drawing && pix) ? 4'hF : 4'h1;
        paint_g = (drawing && pix) ? 4'hC : 4'h3;
        paint_b = (drawing && pix) ? 4'h0 : 4'h7;
    end
//*/
endmodule
