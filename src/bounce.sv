// Project F: Racing the Beam - Bounce
// (C)2023 Will Green, open source hardware released under the MIT License
// Learn more at https://projectf.io/posts/racing-the-beam/

`default_nettype none
`timescale 1ns / 1ps

localparam CORDW = 10;  // screen coordinate width in bits

module bounce (
    input       logic clk_pix,         // pixel clock
    input       logic [CORDW-1:0] sx,  // screen x coordinate
    input       logic [CORDW-1:0] sy,  // screen y coordinate
    output      logic [3:0] paint_r,  // 4-bit DVI red
    output      logic [3:0] paint_g,  // 4-bit DVI green
    output      logic [3:0] paint_b   // 4-bit DVI blue
    );

    // screen dimensions (must match display_inst)
    localparam H_RES = 640;  // horizontal screen resolution
    localparam V_RES = 480;  // vertical screen resolution

    logic frame;  // high for one clock tick at the start of vertical blanking
    always_comb frame = (sy == V_RES && sx == 0);

    // frame counter lets us to slow down the action
    localparam FRAME_NUM = 1;  // slow-mo: animate every N frames
    logic [$clog2(FRAME_NUM):0] cnt_frame;  // frame counter
    always_ff @(posedge clk_pix) begin
        if (frame) cnt_frame <= (cnt_frame == FRAME_NUM-1) ? 0 : cnt_frame + 1;
    end

    // square parameters
    localparam Q_SIZE = 200;   // size in pixels
    logic [CORDW-1:0] qx, qy;  // position (origin at top left)
    logic qdx, qdy;            // direction: 0 is right/down
    logic [CORDW-1:0] qs = 2;  // speed in pixels/frame

    // update square position once per frame
    always_ff @(posedge clk_pix) begin
        if (frame && cnt_frame == 0) begin
            // horizontal position
            if (qdx == 0) begin  // moving right
                if (qx + Q_SIZE + qs >= H_RES-1) begin  // hitting right of screen?
                    qx <= H_RES - Q_SIZE - 1;  // move right as far as we can
                    qdx <= 1;  // move left next frame
                end else qx <= qx + qs;  // continue moving right
            end else begin  // moving left
                if (qx < qs) begin  // hitting left of screen?
                    qx <= 0;  // move left as far as we can
                    qdx <= 0;  // move right next frame
                end else qx <= qx - qs;  // continue moving left
            end

            // vertical position
            if (qdy == 0) begin  // moving down
                if (qy + Q_SIZE + qs >= V_RES-1) begin  // hitting bottom of screen?
                    qy <= V_RES - Q_SIZE - 1;  // move down as far as we can
                    qdy <= 1;  // move up next frame
                end else qy <= qy + qs;  // continue moving down
            end else begin  // moving up
                if (qy < qs) begin  // hitting top of screen?
                    qy <= 0;  // move up as far as we can
                    qdy <= 0;  // move down next frame
                end else qy <= qy - qs;  // continue moving up
            end
        end
    end

    // define a square with screen coordinates
    logic square;
    always_comb begin
        square = (sx >= qx) && (sx < qx + Q_SIZE) && (sy >= qy) && (sy < qy + Q_SIZE);
    end

    // paint colour: white inside square, blue outside
    always_comb begin
        paint_r = (square) ? 4'hF : 4'h1;
        paint_g = (square) ? 4'hF : 4'h3;
        paint_b = (square) ? 4'hF : 4'h7;
    end
endmodule
