/*
[Bare framework] Leave empty, this is used when exporting to verilog
*/

module M_frame_display (
in_pix_x,
in_pix_y,
in_pix_active,
in_pix_vblank,
in_vga_hs,
in_vga_vs,
out_pix_r,
out_pix_g,
out_pix_b,
in_run,
out_done,
reset,
out_clock,
clock
);
input  [10:0] in_pix_x;
input  [10:0] in_pix_y;
input  [0:0] in_pix_active;
input  [0:0] in_pix_vblank;
input  [0:0] in_vga_hs;
input  [0:0] in_vga_vs;
output  [7:0] out_pix_r;
output  [7:0] out_pix_g;
output  [7:0] out_pix_b;
input in_run;
output out_done;
input reset;
output out_clock;
input clock;
assign out_clock = clock;
wire signed [15:0] _c___stage___block_29_R;
assign _c___stage___block_29_R = 420;
wire signed [15:0] _c___stage___block_29_B;
assign _c___stage___block_29_B = 520;
wire signed [15:0] _c___stage___block_47_B;
assign _c___stage___block_47_B = 50;
reg signed [15:0] _t___stage___block_27_x;
reg signed [15:0] _t___stage___block_27_y;
reg signed [15:0] _t___stage___block_28_u;
reg signed [15:0] _t___stage___block_28_v;
reg  [21:0] _t___stage___block_28_u2;
reg  [21:0] _t___stage___block_28_v2;
reg  [21:0] _t___stage___block_29_h;
reg  [21:0] _t___stage___block_29_t;
reg signed [15:0] _t___stage___block_30_p;
reg signed [15:0] _t___stage___block_30_q;
reg signed [15:0] _t___stage___block_31_w;
reg signed [21:0] _t___stage___block_38_o;
reg signed [21:0] _t___stage___block_39_w;
reg signed [15:0] _t___stage___block_39_R_s;
reg signed [15:0] _t___stage___block_39_B_s;
reg signed [15:0] _t___stage___block_47_R;
reg signed [21:0] _t___stage___block_47_p;
reg signed [21:0] _t___stage___block_47_c;
reg signed [21:0] _t___stage___block_49_o1;
reg signed [21:0] _t___stage___block_50_o_t1;
reg signed [23:0] _t___stage___block_51_o_t2;
reg signed [21:0] _t___stage___block_52_o;
reg signed [21:0] _t___stage___block_53_B_g;
reg signed [15:0] _t___stage___block_61_r;
reg signed [15:0] _t___stage___block_61_d;
reg signed [21:0] _t___stage___block_62_R_g;
reg signed [15:0] _t___stage___block_70_R_k;
reg signed [15:0] _t___stage___block_70_B_k;
reg signed [15:0] _t___stage___block_70_c;
reg  [7:0] _t___stage___block_86_r;
reg  [7:0] _t___stage___block_86_b;
reg  [15:0] _t___stage___block_86_G;
reg  [7:0] _t___stage___block_86_g;
reg  [7:0] _t_pix_r;
reg  [7:0] _t_pix_g;
reg  [7:0] _t_pix_b;

reg  [16:0] _d___block_15_wait;
reg  [16:0] _q___block_15_wait;
reg  [11:0] _d___block_20_px;
reg  [11:0] _q___block_20_px;
reg  [11:0] _d___block_20_py;
reg  [11:0] _q___block_20_py;
reg  [11:0] _d___pip_19_1_0___block_20_px;
reg  [11:0] _q___pip_19_1_0___block_20_px;
reg  [11:0] _d___pip_19_1_1___block_20_px;
reg  [11:0] _q___pip_19_1_1___block_20_px;
reg  [11:0] _d___pip_19_1_2___block_20_px;
reg  [11:0] _q___pip_19_1_2___block_20_px;
reg  [11:0] _d___pip_19_1_3___block_20_px;
reg  [11:0] _q___pip_19_1_3___block_20_px;
reg  [11:0] _d___pip_19_1_4___block_20_px;
reg  [11:0] _q___pip_19_1_4___block_20_px;
reg  [11:0] _d___pip_19_1_5___block_20_px;
reg  [11:0] _q___pip_19_1_5___block_20_px;
reg  [11:0] _d___pip_19_1_6___block_20_px;
reg  [11:0] _q___pip_19_1_6___block_20_px;
reg  [11:0] _d___pip_19_1_7___block_20_px;
reg  [11:0] _q___pip_19_1_7___block_20_px;
reg  [11:0] _d___pip_19_1_8___block_20_px;
reg  [11:0] _q___pip_19_1_8___block_20_px;
reg  [11:0] _d___pip_19_1_9___block_20_px;
reg  [11:0] _q___pip_19_1_9___block_20_px;
reg  [11:0] _d___pip_19_1_10___block_20_px;
reg  [11:0] _q___pip_19_1_10___block_20_px;
reg  [11:0] _d___pip_19_1_11___block_20_px;
reg  [11:0] _q___pip_19_1_11___block_20_px;
reg  [11:0] _d___pip_19_1_12___block_20_px;
reg  [11:0] _q___pip_19_1_12___block_20_px;
reg  [11:0] _d___pip_19_1_13___block_20_px;
reg  [11:0] _q___pip_19_1_13___block_20_px;
reg  [11:0] _d___pip_19_1_14___block_20_px;
reg  [11:0] _q___pip_19_1_14___block_20_px;
reg  [11:0] _d___pip_19_1_15___block_20_px;
reg  [11:0] _q___pip_19_1_15___block_20_px;
reg  [11:0] _d___pip_19_1_16___block_20_px;
reg  [11:0] _q___pip_19_1_16___block_20_px;
reg  [11:0] _d___pip_19_1_17___block_20_px;
reg  [11:0] _q___pip_19_1_17___block_20_px;
reg  [11:0] _d___pip_19_1_18___block_20_px;
reg  [11:0] _q___pip_19_1_18___block_20_px;
reg  [11:0] _d___pip_19_1_19___block_20_px;
reg  [11:0] _q___pip_19_1_19___block_20_px;
reg  [11:0] _d___pip_19_1_20___block_20_px;
reg  [11:0] _q___pip_19_1_20___block_20_px;
reg signed [15:0] _d___pip_19_1_0___stage___block_27_x;
reg signed [15:0] _q___pip_19_1_0___stage___block_27_x;
reg signed [15:0] _d___pip_19_1_1___stage___block_27_x;
reg signed [15:0] _q___pip_19_1_1___stage___block_27_x;
reg signed [15:0] _d___pip_19_1_2___stage___block_27_x;
reg signed [15:0] _q___pip_19_1_2___stage___block_27_x;
reg signed [15:0] _d___pip_19_1_3___stage___block_27_x;
reg signed [15:0] _q___pip_19_1_3___stage___block_27_x;
reg signed [15:0] _d___pip_19_1_4___stage___block_27_x;
reg signed [15:0] _q___pip_19_1_4___stage___block_27_x;
reg signed [15:0] _d___pip_19_1_5___stage___block_27_x;
reg signed [15:0] _q___pip_19_1_5___stage___block_27_x;
reg signed [15:0] _d___pip_19_1_6___stage___block_27_x;
reg signed [15:0] _q___pip_19_1_6___stage___block_27_x;
reg signed [15:0] _d___pip_19_1_7___stage___block_27_x;
reg signed [15:0] _q___pip_19_1_7___stage___block_27_x;
reg signed [15:0] _d___pip_19_1_8___stage___block_27_x;
reg signed [15:0] _q___pip_19_1_8___stage___block_27_x;
reg signed [15:0] _d___pip_19_1_9___stage___block_27_x;
reg signed [15:0] _q___pip_19_1_9___stage___block_27_x;
reg signed [15:0] _d___pip_19_1_10___stage___block_27_x;
reg signed [15:0] _q___pip_19_1_10___stage___block_27_x;
reg signed [15:0] _d___pip_19_1_11___stage___block_27_x;
reg signed [15:0] _q___pip_19_1_11___stage___block_27_x;
reg signed [15:0] _d___pip_19_1_12___stage___block_27_x;
reg signed [15:0] _q___pip_19_1_12___stage___block_27_x;
reg signed [15:0] _d___pip_19_1_13___stage___block_27_x;
reg signed [15:0] _q___pip_19_1_13___stage___block_27_x;
reg signed [15:0] _d___pip_19_1_14___stage___block_27_x;
reg signed [15:0] _q___pip_19_1_14___stage___block_27_x;
reg signed [15:0] _d___pip_19_1_15___stage___block_27_x;
reg signed [15:0] _q___pip_19_1_15___stage___block_27_x;
reg signed [15:0] _d___pip_19_1_16___stage___block_27_x;
reg signed [15:0] _q___pip_19_1_16___stage___block_27_x;
reg signed [15:0] _d___pip_19_1_17___stage___block_27_x;
reg signed [15:0] _q___pip_19_1_17___stage___block_27_x;
reg signed [15:0] _d___pip_19_1_0___stage___block_27_y;
reg signed [15:0] _q___pip_19_1_0___stage___block_27_y;
reg signed [15:0] _d___pip_19_1_1___stage___block_27_y;
reg signed [15:0] _q___pip_19_1_1___stage___block_27_y;
reg signed [15:0] _d___pip_19_1_2___stage___block_27_y;
reg signed [15:0] _q___pip_19_1_2___stage___block_27_y;
reg signed [15:0] _d___pip_19_1_3___stage___block_27_y;
reg signed [15:0] _q___pip_19_1_3___stage___block_27_y;
reg signed [15:0] _d___pip_19_1_4___stage___block_27_y;
reg signed [15:0] _q___pip_19_1_4___stage___block_27_y;
reg signed [15:0] _d___pip_19_1_5___stage___block_27_y;
reg signed [15:0] _q___pip_19_1_5___stage___block_27_y;
reg signed [15:0] _d___pip_19_1_6___stage___block_27_y;
reg signed [15:0] _q___pip_19_1_6___stage___block_27_y;
reg signed [15:0] _d___pip_19_1_7___stage___block_27_y;
reg signed [15:0] _q___pip_19_1_7___stage___block_27_y;
reg signed [15:0] _d___pip_19_1_8___stage___block_27_y;
reg signed [15:0] _q___pip_19_1_8___stage___block_27_y;
reg signed [15:0] _d___pip_19_1_9___stage___block_27_y;
reg signed [15:0] _q___pip_19_1_9___stage___block_27_y;
reg signed [15:0] _d___pip_19_1_10___stage___block_27_y;
reg signed [15:0] _q___pip_19_1_10___stage___block_27_y;
reg signed [15:0] _d___pip_19_1_11___stage___block_27_y;
reg signed [15:0] _q___pip_19_1_11___stage___block_27_y;
reg signed [15:0] _d___pip_19_1_12___stage___block_27_y;
reg signed [15:0] _q___pip_19_1_12___stage___block_27_y;
reg signed [15:0] _d___pip_19_1_13___stage___block_27_y;
reg signed [15:0] _q___pip_19_1_13___stage___block_27_y;
reg signed [15:0] _d___pip_19_1_14___stage___block_27_y;
reg signed [15:0] _q___pip_19_1_14___stage___block_27_y;
reg signed [15:0] _d___pip_19_1_15___stage___block_27_y;
reg signed [15:0] _q___pip_19_1_15___stage___block_27_y;
reg signed [15:0] _d___pip_19_1_16___stage___block_27_y;
reg signed [15:0] _q___pip_19_1_16___stage___block_27_y;
reg signed [15:0] _d___pip_19_1_17___stage___block_27_y;
reg signed [15:0] _q___pip_19_1_17___stage___block_27_y;
reg signed [15:0] _d___pip_19_1_1___stage___block_28_u;
reg signed [15:0] _q___pip_19_1_1___stage___block_28_u;
reg signed [15:0] _d___pip_19_1_2___stage___block_28_u;
reg signed [15:0] _q___pip_19_1_2___stage___block_28_u;
reg signed [15:0] _d___pip_19_1_3___stage___block_28_u;
reg signed [15:0] _q___pip_19_1_3___stage___block_28_u;
reg signed [15:0] _d___pip_19_1_4___stage___block_28_u;
reg signed [15:0] _q___pip_19_1_4___stage___block_28_u;
reg signed [15:0] _d___pip_19_1_5___stage___block_28_u;
reg signed [15:0] _q___pip_19_1_5___stage___block_28_u;
reg signed [15:0] _d___pip_19_1_6___stage___block_28_u;
reg signed [15:0] _q___pip_19_1_6___stage___block_28_u;
reg signed [15:0] _d___pip_19_1_7___stage___block_28_u;
reg signed [15:0] _q___pip_19_1_7___stage___block_28_u;
reg signed [15:0] _d___pip_19_1_8___stage___block_28_u;
reg signed [15:0] _q___pip_19_1_8___stage___block_28_u;
reg signed [15:0] _d___pip_19_1_9___stage___block_28_u;
reg signed [15:0] _q___pip_19_1_9___stage___block_28_u;
reg signed [15:0] _d___pip_19_1_10___stage___block_28_u;
reg signed [15:0] _q___pip_19_1_10___stage___block_28_u;
reg signed [15:0] _d___pip_19_1_11___stage___block_28_u;
reg signed [15:0] _q___pip_19_1_11___stage___block_28_u;
reg signed [15:0] _d___pip_19_1_12___stage___block_28_u;
reg signed [15:0] _q___pip_19_1_12___stage___block_28_u;
reg signed [15:0] _d___pip_19_1_13___stage___block_28_u;
reg signed [15:0] _q___pip_19_1_13___stage___block_28_u;
reg signed [15:0] _d___pip_19_1_14___stage___block_28_u;
reg signed [15:0] _q___pip_19_1_14___stage___block_28_u;
reg signed [15:0] _d___pip_19_1_15___stage___block_28_u;
reg signed [15:0] _q___pip_19_1_15___stage___block_28_u;
reg  [21:0] _d___pip_19_1_1___stage___block_28_u2;
reg  [21:0] _q___pip_19_1_1___stage___block_28_u2;
reg  [21:0] _d___pip_19_1_2___stage___block_28_u2;
reg  [21:0] _q___pip_19_1_2___stage___block_28_u2;
reg signed [15:0] _d___pip_19_1_1___stage___block_28_v;
reg signed [15:0] _q___pip_19_1_1___stage___block_28_v;
reg signed [15:0] _d___pip_19_1_2___stage___block_28_v;
reg signed [15:0] _q___pip_19_1_2___stage___block_28_v;
reg signed [15:0] _d___pip_19_1_3___stage___block_28_v;
reg signed [15:0] _q___pip_19_1_3___stage___block_28_v;
reg signed [15:0] _d___pip_19_1_4___stage___block_28_v;
reg signed [15:0] _q___pip_19_1_4___stage___block_28_v;
reg signed [15:0] _d___pip_19_1_5___stage___block_28_v;
reg signed [15:0] _q___pip_19_1_5___stage___block_28_v;
reg signed [15:0] _d___pip_19_1_6___stage___block_28_v;
reg signed [15:0] _q___pip_19_1_6___stage___block_28_v;
reg signed [15:0] _d___pip_19_1_7___stage___block_28_v;
reg signed [15:0] _q___pip_19_1_7___stage___block_28_v;
reg signed [15:0] _d___pip_19_1_8___stage___block_28_v;
reg signed [15:0] _q___pip_19_1_8___stage___block_28_v;
reg signed [15:0] _d___pip_19_1_9___stage___block_28_v;
reg signed [15:0] _q___pip_19_1_9___stage___block_28_v;
reg signed [15:0] _d___pip_19_1_10___stage___block_28_v;
reg signed [15:0] _q___pip_19_1_10___stage___block_28_v;
reg signed [15:0] _d___pip_19_1_11___stage___block_28_v;
reg signed [15:0] _q___pip_19_1_11___stage___block_28_v;
reg signed [15:0] _d___pip_19_1_12___stage___block_28_v;
reg signed [15:0] _q___pip_19_1_12___stage___block_28_v;
reg signed [15:0] _d___pip_19_1_13___stage___block_28_v;
reg signed [15:0] _q___pip_19_1_13___stage___block_28_v;
reg signed [15:0] _d___pip_19_1_14___stage___block_28_v;
reg signed [15:0] _q___pip_19_1_14___stage___block_28_v;
reg signed [15:0] _d___pip_19_1_15___stage___block_28_v;
reg signed [15:0] _q___pip_19_1_15___stage___block_28_v;
reg signed [15:0] _d___pip_19_1_16___stage___block_28_v;
reg signed [15:0] _q___pip_19_1_16___stage___block_28_v;
reg signed [15:0] _d___pip_19_1_17___stage___block_28_v;
reg signed [15:0] _q___pip_19_1_17___stage___block_28_v;
reg signed [15:0] _d___pip_19_1_18___stage___block_28_v;
reg signed [15:0] _q___pip_19_1_18___stage___block_28_v;
reg  [21:0] _d___pip_19_1_1___stage___block_28_v2;
reg  [21:0] _q___pip_19_1_1___stage___block_28_v2;
reg  [21:0] _d___pip_19_1_2___stage___block_28_v2;
reg  [21:0] _q___pip_19_1_2___stage___block_28_v2;
reg  [21:0] _d___pip_19_1_3___stage___block_28_v2;
reg  [21:0] _q___pip_19_1_3___stage___block_28_v2;
reg  [21:0] _d___pip_19_1_4___stage___block_28_v2;
reg  [21:0] _q___pip_19_1_4___stage___block_28_v2;
reg  [21:0] _d___pip_19_1_5___stage___block_28_v2;
reg  [21:0] _q___pip_19_1_5___stage___block_28_v2;
reg  [21:0] _d___pip_19_1_6___stage___block_28_v2;
reg  [21:0] _q___pip_19_1_6___stage___block_28_v2;
reg  [21:0] _d___pip_19_1_7___stage___block_28_v2;
reg  [21:0] _q___pip_19_1_7___stage___block_28_v2;
reg  [21:0] _d___pip_19_1_8___stage___block_28_v2;
reg  [21:0] _q___pip_19_1_8___stage___block_28_v2;
reg signed [15:0] _d___pip_19_1_2___stage___block_29_B;
reg signed [15:0] _q___pip_19_1_2___stage___block_29_B;
reg signed [15:0] _d___pip_19_1_3___stage___block_29_B;
reg signed [15:0] _q___pip_19_1_3___stage___block_29_B;
reg signed [15:0] _d___pip_19_1_4___stage___block_29_B;
reg signed [15:0] _q___pip_19_1_4___stage___block_29_B;
reg signed [15:0] _d___pip_19_1_5___stage___block_29_B;
reg signed [15:0] _q___pip_19_1_5___stage___block_29_B;
reg signed [15:0] _d___pip_19_1_6___stage___block_29_B;
reg signed [15:0] _q___pip_19_1_6___stage___block_29_B;
reg signed [15:0] _d___pip_19_1_7___stage___block_29_B;
reg signed [15:0] _q___pip_19_1_7___stage___block_29_B;
reg signed [15:0] _d___pip_19_1_2___stage___block_29_R;
reg signed [15:0] _q___pip_19_1_2___stage___block_29_R;
reg signed [15:0] _d___pip_19_1_3___stage___block_29_R;
reg signed [15:0] _q___pip_19_1_3___stage___block_29_R;
reg signed [15:0] _d___pip_19_1_4___stage___block_29_R;
reg signed [15:0] _q___pip_19_1_4___stage___block_29_R;
reg signed [15:0] _d___pip_19_1_5___stage___block_29_R;
reg signed [15:0] _q___pip_19_1_5___stage___block_29_R;
reg signed [15:0] _d___pip_19_1_6___stage___block_29_R;
reg signed [15:0] _q___pip_19_1_6___stage___block_29_R;
reg signed [15:0] _d___pip_19_1_7___stage___block_29_R;
reg signed [15:0] _q___pip_19_1_7___stage___block_29_R;
reg  [21:0] _d___pip_19_1_2___stage___block_29_h;
reg  [21:0] _q___pip_19_1_2___stage___block_29_h;
reg  [21:0] _d___pip_19_1_3___stage___block_29_h;
reg  [21:0] _q___pip_19_1_3___stage___block_29_h;
reg  [21:0] _d___pip_19_1_4___stage___block_29_h;
reg  [21:0] _q___pip_19_1_4___stage___block_29_h;
reg  [21:0] _d___pip_19_1_5___stage___block_29_h;
reg  [21:0] _q___pip_19_1_5___stage___block_29_h;
reg  [21:0] _d___pip_19_1_6___stage___block_29_h;
reg  [21:0] _q___pip_19_1_6___stage___block_29_h;
reg  [21:0] _d___pip_19_1_7___stage___block_29_h;
reg  [21:0] _q___pip_19_1_7___stage___block_29_h;
reg  [21:0] _d___pip_19_1_8___stage___block_29_h;
reg  [21:0] _q___pip_19_1_8___stage___block_29_h;
reg  [21:0] _d___pip_19_1_9___stage___block_29_h;
reg  [21:0] _q___pip_19_1_9___stage___block_29_h;
reg  [21:0] _d___pip_19_1_10___stage___block_29_h;
reg  [21:0] _q___pip_19_1_10___stage___block_29_h;
reg  [21:0] _d___pip_19_1_11___stage___block_29_h;
reg  [21:0] _q___pip_19_1_11___stage___block_29_h;
reg  [21:0] _d___pip_19_1_12___stage___block_29_h;
reg  [21:0] _q___pip_19_1_12___stage___block_29_h;
reg  [21:0] _d___pip_19_1_13___stage___block_29_h;
reg  [21:0] _q___pip_19_1_13___stage___block_29_h;
reg  [21:0] _d___pip_19_1_14___stage___block_29_h;
reg  [21:0] _q___pip_19_1_14___stage___block_29_h;
reg  [21:0] _d___pip_19_1_15___stage___block_29_h;
reg  [21:0] _q___pip_19_1_15___stage___block_29_h;
reg  [21:0] _d___pip_19_1_16___stage___block_29_h;
reg  [21:0] _q___pip_19_1_16___stage___block_29_h;
reg  [21:0] _d___pip_19_1_17___stage___block_29_h;
reg  [21:0] _q___pip_19_1_17___stage___block_29_h;
reg  [21:0] _d___pip_19_1_18___stage___block_29_h;
reg  [21:0] _q___pip_19_1_18___stage___block_29_h;
reg  [21:0] _d___pip_19_1_2___stage___block_29_t;
reg  [21:0] _q___pip_19_1_2___stage___block_29_t;
reg  [21:0] _d___pip_19_1_3___stage___block_29_t;
reg  [21:0] _q___pip_19_1_3___stage___block_29_t;
reg signed [15:0] _d___pip_19_1_3___stage___block_30_p;
reg signed [15:0] _q___pip_19_1_3___stage___block_30_p;
reg signed [15:0] _d___pip_19_1_4___stage___block_30_p;
reg signed [15:0] _q___pip_19_1_4___stage___block_30_p;
reg signed [15:0] _d___pip_19_1_5___stage___block_30_p;
reg signed [15:0] _q___pip_19_1_5___stage___block_30_p;
reg signed [15:0] _d___pip_19_1_6___stage___block_30_p;
reg signed [15:0] _q___pip_19_1_6___stage___block_30_p;
reg signed [15:0] _d___pip_19_1_7___stage___block_30_p;
reg signed [15:0] _q___pip_19_1_7___stage___block_30_p;
reg signed [15:0] _d___pip_19_1_3___stage___block_30_q;
reg signed [15:0] _q___pip_19_1_3___stage___block_30_q;
reg signed [15:0] _d___pip_19_1_4___stage___block_30_q;
reg signed [15:0] _q___pip_19_1_4___stage___block_30_q;
reg signed [15:0] _d___pip_19_1_5___stage___block_30_q;
reg signed [15:0] _q___pip_19_1_5___stage___block_30_q;
reg signed [15:0] _d___pip_19_1_6___stage___block_30_q;
reg signed [15:0] _q___pip_19_1_6___stage___block_30_q;
reg signed [15:0] _d___pip_19_1_7___stage___block_30_q;
reg signed [15:0] _q___pip_19_1_7___stage___block_30_q;
reg signed [15:0] _d___pip_19_1_4___stage___block_31_w;
reg signed [15:0] _q___pip_19_1_4___stage___block_31_w;
reg signed [15:0] _d___pip_19_1_5___stage___block_31_w;
reg signed [15:0] _q___pip_19_1_5___stage___block_31_w;
reg signed [15:0] _d___pip_19_1_7___stage___block_39_B_s;
reg signed [15:0] _q___pip_19_1_7___stage___block_39_B_s;
reg signed [15:0] _d___pip_19_1_8___stage___block_39_B_s;
reg signed [15:0] _q___pip_19_1_8___stage___block_39_B_s;
reg signed [15:0] _d___pip_19_1_9___stage___block_39_B_s;
reg signed [15:0] _q___pip_19_1_9___stage___block_39_B_s;
reg signed [15:0] _d___pip_19_1_10___stage___block_39_B_s;
reg signed [15:0] _q___pip_19_1_10___stage___block_39_B_s;
reg signed [15:0] _d___pip_19_1_11___stage___block_39_B_s;
reg signed [15:0] _q___pip_19_1_11___stage___block_39_B_s;
reg signed [15:0] _d___pip_19_1_12___stage___block_39_B_s;
reg signed [15:0] _q___pip_19_1_12___stage___block_39_B_s;
reg signed [15:0] _d___pip_19_1_13___stage___block_39_B_s;
reg signed [15:0] _q___pip_19_1_13___stage___block_39_B_s;
reg signed [15:0] _d___pip_19_1_14___stage___block_39_B_s;
reg signed [15:0] _q___pip_19_1_14___stage___block_39_B_s;
reg signed [15:0] _d___pip_19_1_15___stage___block_39_B_s;
reg signed [15:0] _q___pip_19_1_15___stage___block_39_B_s;
reg signed [15:0] _d___pip_19_1_16___stage___block_39_B_s;
reg signed [15:0] _q___pip_19_1_16___stage___block_39_B_s;
reg signed [15:0] _d___pip_19_1_17___stage___block_39_B_s;
reg signed [15:0] _q___pip_19_1_17___stage___block_39_B_s;
reg signed [15:0] _d___pip_19_1_18___stage___block_39_B_s;
reg signed [15:0] _q___pip_19_1_18___stage___block_39_B_s;
reg signed [15:0] _d___pip_19_1_7___stage___block_39_R_s;
reg signed [15:0] _q___pip_19_1_7___stage___block_39_R_s;
reg signed [15:0] _d___pip_19_1_8___stage___block_39_R_s;
reg signed [15:0] _q___pip_19_1_8___stage___block_39_R_s;
reg signed [15:0] _d___pip_19_1_9___stage___block_39_R_s;
reg signed [15:0] _q___pip_19_1_9___stage___block_39_R_s;
reg signed [15:0] _d___pip_19_1_10___stage___block_39_R_s;
reg signed [15:0] _q___pip_19_1_10___stage___block_39_R_s;
reg signed [15:0] _d___pip_19_1_11___stage___block_39_R_s;
reg signed [15:0] _q___pip_19_1_11___stage___block_39_R_s;
reg signed [15:0] _d___pip_19_1_12___stage___block_39_R_s;
reg signed [15:0] _q___pip_19_1_12___stage___block_39_R_s;
reg signed [15:0] _d___pip_19_1_13___stage___block_39_R_s;
reg signed [15:0] _q___pip_19_1_13___stage___block_39_R_s;
reg signed [15:0] _d___pip_19_1_14___stage___block_39_R_s;
reg signed [15:0] _q___pip_19_1_14___stage___block_39_R_s;
reg signed [15:0] _d___pip_19_1_15___stage___block_39_R_s;
reg signed [15:0] _q___pip_19_1_15___stage___block_39_R_s;
reg signed [15:0] _d___pip_19_1_16___stage___block_39_R_s;
reg signed [15:0] _q___pip_19_1_16___stage___block_39_R_s;
reg signed [15:0] _d___pip_19_1_17___stage___block_39_R_s;
reg signed [15:0] _q___pip_19_1_17___stage___block_39_R_s;
reg signed [15:0] _d___pip_19_1_18___stage___block_39_R_s;
reg signed [15:0] _q___pip_19_1_18___stage___block_39_R_s;
reg signed [15:0] _d___pip_19_1_8___stage___block_47_B;
reg signed [15:0] _q___pip_19_1_8___stage___block_47_B;
reg signed [15:0] _d___pip_19_1_9___stage___block_47_B;
reg signed [15:0] _q___pip_19_1_9___stage___block_47_B;
reg signed [15:0] _d___pip_19_1_10___stage___block_47_B;
reg signed [15:0] _q___pip_19_1_10___stage___block_47_B;
reg signed [15:0] _d___pip_19_1_11___stage___block_47_B;
reg signed [15:0] _q___pip_19_1_11___stage___block_47_B;
reg signed [15:0] _d___pip_19_1_12___stage___block_47_B;
reg signed [15:0] _q___pip_19_1_12___stage___block_47_B;
reg signed [15:0] _d___pip_19_1_13___stage___block_47_B;
reg signed [15:0] _q___pip_19_1_13___stage___block_47_B;
reg signed [15:0] _d___pip_19_1_14___stage___block_47_B;
reg signed [15:0] _q___pip_19_1_14___stage___block_47_B;
reg signed [15:0] _d___pip_19_1_15___stage___block_47_B;
reg signed [15:0] _q___pip_19_1_15___stage___block_47_B;
reg signed [15:0] _d___pip_19_1_16___stage___block_47_B;
reg signed [15:0] _q___pip_19_1_16___stage___block_47_B;
reg signed [15:0] _d___pip_19_1_17___stage___block_47_B;
reg signed [15:0] _q___pip_19_1_17___stage___block_47_B;
reg signed [15:0] _d___pip_19_1_18___stage___block_47_B;
reg signed [15:0] _q___pip_19_1_18___stage___block_47_B;
reg signed [15:0] _d___pip_19_1_19___stage___block_47_B;
reg signed [15:0] _q___pip_19_1_19___stage___block_47_B;
reg signed [15:0] _d___pip_19_1_8___stage___block_47_R;
reg signed [15:0] _q___pip_19_1_8___stage___block_47_R;
reg signed [15:0] _d___pip_19_1_9___stage___block_47_R;
reg signed [15:0] _q___pip_19_1_9___stage___block_47_R;
reg signed [15:0] _d___pip_19_1_10___stage___block_47_R;
reg signed [15:0] _q___pip_19_1_10___stage___block_47_R;
reg signed [15:0] _d___pip_19_1_11___stage___block_47_R;
reg signed [15:0] _q___pip_19_1_11___stage___block_47_R;
reg signed [15:0] _d___pip_19_1_12___stage___block_47_R;
reg signed [15:0] _q___pip_19_1_12___stage___block_47_R;
reg signed [15:0] _d___pip_19_1_13___stage___block_47_R;
reg signed [15:0] _q___pip_19_1_13___stage___block_47_R;
reg signed [15:0] _d___pip_19_1_14___stage___block_47_R;
reg signed [15:0] _q___pip_19_1_14___stage___block_47_R;
reg signed [15:0] _d___pip_19_1_15___stage___block_47_R;
reg signed [15:0] _q___pip_19_1_15___stage___block_47_R;
reg signed [15:0] _d___pip_19_1_16___stage___block_47_R;
reg signed [15:0] _q___pip_19_1_16___stage___block_47_R;
reg signed [15:0] _d___pip_19_1_17___stage___block_47_R;
reg signed [15:0] _q___pip_19_1_17___stage___block_47_R;
reg signed [15:0] _d___pip_19_1_18___stage___block_47_R;
reg signed [15:0] _q___pip_19_1_18___stage___block_47_R;
reg signed [15:0] _d___pip_19_1_19___stage___block_47_R;
reg signed [15:0] _q___pip_19_1_19___stage___block_47_R;
reg signed [21:0] _d___pip_19_1_8___stage___block_47_c;
reg signed [21:0] _q___pip_19_1_8___stage___block_47_c;
reg signed [21:0] _d___pip_19_1_9___stage___block_47_c;
reg signed [21:0] _q___pip_19_1_9___stage___block_47_c;
reg signed [21:0] _d___pip_19_1_10___stage___block_47_c;
reg signed [21:0] _q___pip_19_1_10___stage___block_47_c;
reg signed [21:0] _d___pip_19_1_11___stage___block_47_c;
reg signed [21:0] _q___pip_19_1_11___stage___block_47_c;
reg signed [21:0] _d___pip_19_1_12___stage___block_47_c;
reg signed [21:0] _q___pip_19_1_12___stage___block_47_c;
reg signed [21:0] _d___pip_19_1_13___stage___block_47_c;
reg signed [21:0] _q___pip_19_1_13___stage___block_47_c;
reg signed [21:0] _d___pip_19_1_14___stage___block_47_c;
reg signed [21:0] _q___pip_19_1_14___stage___block_47_c;
reg signed [21:0] _d___pip_19_1_15___stage___block_47_c;
reg signed [21:0] _q___pip_19_1_15___stage___block_47_c;
reg signed [21:0] _d___pip_19_1_8___stage___block_47_p;
reg signed [21:0] _q___pip_19_1_8___stage___block_47_p;
reg signed [21:0] _d___pip_19_1_9___stage___block_47_p;
reg signed [21:0] _q___pip_19_1_9___stage___block_47_p;
reg signed [21:0] _d___pip_19_1_10___stage___block_49_o1;
reg signed [21:0] _q___pip_19_1_10___stage___block_49_o1;
reg signed [21:0] _d___pip_19_1_11___stage___block_49_o1;
reg signed [21:0] _q___pip_19_1_11___stage___block_49_o1;
reg signed [21:0] _d___pip_19_1_11___stage___block_50_o_t1;
reg signed [21:0] _q___pip_19_1_11___stage___block_50_o_t1;
reg signed [21:0] _d___pip_19_1_12___stage___block_50_o_t1;
reg signed [21:0] _q___pip_19_1_12___stage___block_50_o_t1;
reg signed [23:0] _d___pip_19_1_12___stage___block_51_o_t2;
reg signed [23:0] _q___pip_19_1_12___stage___block_51_o_t2;
reg signed [23:0] _d___pip_19_1_13___stage___block_51_o_t2;
reg signed [23:0] _q___pip_19_1_13___stage___block_51_o_t2;
reg signed [21:0] _d___pip_19_1_13___stage___block_52_o;
reg signed [21:0] _q___pip_19_1_13___stage___block_52_o;
reg signed [21:0] _d___pip_19_1_14___stage___block_52_o;
reg signed [21:0] _q___pip_19_1_14___stage___block_52_o;
reg signed [21:0] _d___pip_19_1_14___stage___block_53_B_g;
reg signed [21:0] _q___pip_19_1_14___stage___block_53_B_g;
reg signed [21:0] _d___pip_19_1_15___stage___block_53_B_g;
reg signed [21:0] _q___pip_19_1_15___stage___block_53_B_g;
reg signed [21:0] _d___pip_19_1_16___stage___block_53_B_g;
reg signed [21:0] _q___pip_19_1_16___stage___block_53_B_g;
reg signed [21:0] _d___pip_19_1_17___stage___block_53_B_g;
reg signed [21:0] _q___pip_19_1_17___stage___block_53_B_g;
reg signed [21:0] _d___pip_19_1_18___stage___block_53_B_g;
reg signed [21:0] _q___pip_19_1_18___stage___block_53_B_g;
reg signed [15:0] _d___pip_19_1_15___stage___block_61_d;
reg signed [15:0] _q___pip_19_1_15___stage___block_61_d;
reg signed [15:0] _d___pip_19_1_16___stage___block_61_d;
reg signed [15:0] _q___pip_19_1_16___stage___block_61_d;
reg signed [21:0] _d___pip_19_1_16___stage___block_62_R_g;
reg signed [21:0] _q___pip_19_1_16___stage___block_62_R_g;
reg signed [21:0] _d___pip_19_1_17___stage___block_62_R_g;
reg signed [21:0] _q___pip_19_1_17___stage___block_62_R_g;
reg signed [21:0] _d___pip_19_1_18___stage___block_62_R_g;
reg signed [21:0] _q___pip_19_1_18___stage___block_62_R_g;
reg signed [15:0] _d___pip_19_1_17___stage___block_70_B_k;
reg signed [15:0] _q___pip_19_1_17___stage___block_70_B_k;
reg signed [15:0] _d___pip_19_1_18___stage___block_70_B_k;
reg signed [15:0] _q___pip_19_1_18___stage___block_70_B_k;
reg signed [15:0] _d___pip_19_1_17___stage___block_70_R_k;
reg signed [15:0] _q___pip_19_1_17___stage___block_70_R_k;
reg signed [15:0] _d___pip_19_1_18___stage___block_70_R_k;
reg signed [15:0] _q___pip_19_1_18___stage___block_70_R_k;
reg  [7:0] _d___pip_19_1_19___stage___block_86_b;
reg  [7:0] _q___pip_19_1_19___stage___block_86_b;
reg  [7:0] _d___pip_19_1_20___stage___block_86_b;
reg  [7:0] _q___pip_19_1_20___stage___block_86_b;
reg  [7:0] _d___pip_19_1_19___stage___block_86_g;
reg  [7:0] _q___pip_19_1_19___stage___block_86_g;
reg  [7:0] _d___pip_19_1_20___stage___block_86_g;
reg  [7:0] _q___pip_19_1_20___stage___block_86_g;
reg  [7:0] _d___pip_19_1_19___stage___block_86_r;
reg  [7:0] _q___pip_19_1_19___stage___block_86_r;
reg  [7:0] _d___pip_19_1_20___stage___block_86_r;
reg  [7:0] _q___pip_19_1_20___stage___block_86_r;
reg  [2:0] _d__idx_fsm0,_q__idx_fsm0;
reg  _autorun = 0;
reg  [0:0] _d__idx_fsm___pip_19_1_0,_q__idx_fsm___pip_19_1_0;
wire _ready_fsm___pip_19_1_0 = (_q__idx_fsm___pip_19_1_0 == 1) || (_q__idx_fsm___pip_19_1_0 == 0);
reg  [0:0] _d__full_fsm___pip_19_1_0 = 0,_q__full_fsm___pip_19_1_0 = 0;
reg  [0:0] _t__stall_fsm___pip_19_1_0 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_19_1_0 = 0;
reg  [0:0] _d__idx_fsm___pip_19_1_1,_q__idx_fsm___pip_19_1_1;
wire _ready_fsm___pip_19_1_1 = (_q__idx_fsm___pip_19_1_1 == 1) || (_q__idx_fsm___pip_19_1_1 == 0);
reg  [0:0] _d__full_fsm___pip_19_1_1 = 0,_q__full_fsm___pip_19_1_1 = 0;
reg  [0:0] _t__stall_fsm___pip_19_1_1 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_19_1_1 = 0;
reg  [0:0] _d__idx_fsm___pip_19_1_2,_q__idx_fsm___pip_19_1_2;
wire _ready_fsm___pip_19_1_2 = (_q__idx_fsm___pip_19_1_2 == 1) || (_q__idx_fsm___pip_19_1_2 == 0);
reg  [0:0] _d__full_fsm___pip_19_1_2 = 0,_q__full_fsm___pip_19_1_2 = 0;
reg  [0:0] _t__stall_fsm___pip_19_1_2 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_19_1_2 = 0;
reg  [0:0] _d__idx_fsm___pip_19_1_3,_q__idx_fsm___pip_19_1_3;
wire _ready_fsm___pip_19_1_3 = (_q__idx_fsm___pip_19_1_3 == 1) || (_q__idx_fsm___pip_19_1_3 == 0);
reg  [0:0] _d__full_fsm___pip_19_1_3 = 0,_q__full_fsm___pip_19_1_3 = 0;
reg  [0:0] _t__stall_fsm___pip_19_1_3 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_19_1_3 = 0;
reg  [0:0] _d__idx_fsm___pip_19_1_4,_q__idx_fsm___pip_19_1_4;
wire _ready_fsm___pip_19_1_4 = (_q__idx_fsm___pip_19_1_4 == 1) || (_q__idx_fsm___pip_19_1_4 == 0);
reg  [0:0] _d__full_fsm___pip_19_1_4 = 0,_q__full_fsm___pip_19_1_4 = 0;
reg  [0:0] _t__stall_fsm___pip_19_1_4 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_19_1_4 = 0;
reg  [0:0] _d__idx_fsm___pip_19_1_5,_q__idx_fsm___pip_19_1_5;
wire _ready_fsm___pip_19_1_5 = (_q__idx_fsm___pip_19_1_5 == 1) || (_q__idx_fsm___pip_19_1_5 == 0);
reg  [0:0] _d__full_fsm___pip_19_1_5 = 0,_q__full_fsm___pip_19_1_5 = 0;
reg  [0:0] _t__stall_fsm___pip_19_1_5 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_19_1_5 = 0;
reg  [0:0] _d__idx_fsm___pip_19_1_6,_q__idx_fsm___pip_19_1_6;
wire _ready_fsm___pip_19_1_6 = (_q__idx_fsm___pip_19_1_6 == 1) || (_q__idx_fsm___pip_19_1_6 == 0);
reg  [0:0] _d__full_fsm___pip_19_1_6 = 0,_q__full_fsm___pip_19_1_6 = 0;
reg  [0:0] _t__stall_fsm___pip_19_1_6 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_19_1_6 = 0;
reg  [0:0] _d__idx_fsm___pip_19_1_7,_q__idx_fsm___pip_19_1_7;
wire _ready_fsm___pip_19_1_7 = (_q__idx_fsm___pip_19_1_7 == 1) || (_q__idx_fsm___pip_19_1_7 == 0);
reg  [0:0] _d__full_fsm___pip_19_1_7 = 0,_q__full_fsm___pip_19_1_7 = 0;
reg  [0:0] _t__stall_fsm___pip_19_1_7 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_19_1_7 = 0;
reg  [0:0] _d__idx_fsm___pip_19_1_8,_q__idx_fsm___pip_19_1_8;
wire _ready_fsm___pip_19_1_8 = (_q__idx_fsm___pip_19_1_8 == 1) || (_q__idx_fsm___pip_19_1_8 == 0);
reg  [0:0] _d__full_fsm___pip_19_1_8 = 0,_q__full_fsm___pip_19_1_8 = 0;
reg  [0:0] _t__stall_fsm___pip_19_1_8 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_19_1_8 = 0;
reg  [0:0] _d__idx_fsm___pip_19_1_9,_q__idx_fsm___pip_19_1_9;
wire _ready_fsm___pip_19_1_9 = (_q__idx_fsm___pip_19_1_9 == 1) || (_q__idx_fsm___pip_19_1_9 == 0);
reg  [0:0] _d__full_fsm___pip_19_1_9 = 0,_q__full_fsm___pip_19_1_9 = 0;
reg  [0:0] _t__stall_fsm___pip_19_1_9 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_19_1_9 = 0;
reg  [0:0] _d__idx_fsm___pip_19_1_10,_q__idx_fsm___pip_19_1_10;
wire _ready_fsm___pip_19_1_10 = (_q__idx_fsm___pip_19_1_10 == 1) || (_q__idx_fsm___pip_19_1_10 == 0);
reg  [0:0] _d__full_fsm___pip_19_1_10 = 0,_q__full_fsm___pip_19_1_10 = 0;
reg  [0:0] _t__stall_fsm___pip_19_1_10 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_19_1_10 = 0;
reg  [0:0] _d__idx_fsm___pip_19_1_11,_q__idx_fsm___pip_19_1_11;
wire _ready_fsm___pip_19_1_11 = (_q__idx_fsm___pip_19_1_11 == 1) || (_q__idx_fsm___pip_19_1_11 == 0);
reg  [0:0] _d__full_fsm___pip_19_1_11 = 0,_q__full_fsm___pip_19_1_11 = 0;
reg  [0:0] _t__stall_fsm___pip_19_1_11 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_19_1_11 = 0;
reg  [0:0] _d__idx_fsm___pip_19_1_12,_q__idx_fsm___pip_19_1_12;
wire _ready_fsm___pip_19_1_12 = (_q__idx_fsm___pip_19_1_12 == 1) || (_q__idx_fsm___pip_19_1_12 == 0);
reg  [0:0] _d__full_fsm___pip_19_1_12 = 0,_q__full_fsm___pip_19_1_12 = 0;
reg  [0:0] _t__stall_fsm___pip_19_1_12 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_19_1_12 = 0;
reg  [0:0] _d__idx_fsm___pip_19_1_13,_q__idx_fsm___pip_19_1_13;
wire _ready_fsm___pip_19_1_13 = (_q__idx_fsm___pip_19_1_13 == 1) || (_q__idx_fsm___pip_19_1_13 == 0);
reg  [0:0] _d__full_fsm___pip_19_1_13 = 0,_q__full_fsm___pip_19_1_13 = 0;
reg  [0:0] _t__stall_fsm___pip_19_1_13 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_19_1_13 = 0;
reg  [0:0] _d__idx_fsm___pip_19_1_14,_q__idx_fsm___pip_19_1_14;
wire _ready_fsm___pip_19_1_14 = (_q__idx_fsm___pip_19_1_14 == 1) || (_q__idx_fsm___pip_19_1_14 == 0);
reg  [0:0] _d__full_fsm___pip_19_1_14 = 0,_q__full_fsm___pip_19_1_14 = 0;
reg  [0:0] _t__stall_fsm___pip_19_1_14 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_19_1_14 = 0;
reg  [0:0] _d__idx_fsm___pip_19_1_15,_q__idx_fsm___pip_19_1_15;
wire _ready_fsm___pip_19_1_15 = (_q__idx_fsm___pip_19_1_15 == 1) || (_q__idx_fsm___pip_19_1_15 == 0);
reg  [0:0] _d__full_fsm___pip_19_1_15 = 0,_q__full_fsm___pip_19_1_15 = 0;
reg  [0:0] _t__stall_fsm___pip_19_1_15 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_19_1_15 = 0;
reg  [0:0] _d__idx_fsm___pip_19_1_16,_q__idx_fsm___pip_19_1_16;
wire _ready_fsm___pip_19_1_16 = (_q__idx_fsm___pip_19_1_16 == 1) || (_q__idx_fsm___pip_19_1_16 == 0);
reg  [0:0] _d__full_fsm___pip_19_1_16 = 0,_q__full_fsm___pip_19_1_16 = 0;
reg  [0:0] _t__stall_fsm___pip_19_1_16 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_19_1_16 = 0;
reg  [0:0] _d__idx_fsm___pip_19_1_17,_q__idx_fsm___pip_19_1_17;
wire _ready_fsm___pip_19_1_17 = (_q__idx_fsm___pip_19_1_17 == 1) || (_q__idx_fsm___pip_19_1_17 == 0);
reg  [0:0] _d__full_fsm___pip_19_1_17 = 0,_q__full_fsm___pip_19_1_17 = 0;
reg  [0:0] _t__stall_fsm___pip_19_1_17 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_19_1_17 = 0;
reg  [0:0] _d__idx_fsm___pip_19_1_18,_q__idx_fsm___pip_19_1_18;
wire _ready_fsm___pip_19_1_18 = (_q__idx_fsm___pip_19_1_18 == 1) || (_q__idx_fsm___pip_19_1_18 == 0);
reg  [0:0] _d__full_fsm___pip_19_1_18 = 0,_q__full_fsm___pip_19_1_18 = 0;
reg  [0:0] _t__stall_fsm___pip_19_1_18 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_19_1_18 = 0;
reg  [0:0] _d__idx_fsm___pip_19_1_19,_q__idx_fsm___pip_19_1_19;
wire _ready_fsm___pip_19_1_19 = (_q__idx_fsm___pip_19_1_19 == 1) || (_q__idx_fsm___pip_19_1_19 == 0);
reg  [0:0] _d__full_fsm___pip_19_1_19 = 0,_q__full_fsm___pip_19_1_19 = 0;
reg  [0:0] _t__stall_fsm___pip_19_1_19 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_19_1_19 = 0;
reg  [0:0] _d__idx_fsm___pip_19_1_20,_q__idx_fsm___pip_19_1_20;
wire _ready_fsm___pip_19_1_20 = (_q__idx_fsm___pip_19_1_20 == 1) || (_q__idx_fsm___pip_19_1_20 == 0);
reg  [0:0] _d__full_fsm___pip_19_1_20 = 0,_q__full_fsm___pip_19_1_20 = 0;
reg  [0:0] _t__stall_fsm___pip_19_1_20 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_19_1_20 = 0;
assign out_pix_r = _t_pix_r;
assign out_pix_g = _t_pix_g;
assign out_pix_b = _t_pix_b;
assign out_done = (_q__idx_fsm0 == 0) && _autorun
 &&   _q__idx_fsm___pip_19_1_0 == 0 && ~ _q__full_fsm___pip_19_1_0
 &&   _q__idx_fsm___pip_19_1_1 == 0 && ~ _q__full_fsm___pip_19_1_1
 &&   _q__idx_fsm___pip_19_1_2 == 0 && ~ _q__full_fsm___pip_19_1_2
 &&   _q__idx_fsm___pip_19_1_3 == 0 && ~ _q__full_fsm___pip_19_1_3
 &&   _q__idx_fsm___pip_19_1_4 == 0 && ~ _q__full_fsm___pip_19_1_4
 &&   _q__idx_fsm___pip_19_1_5 == 0 && ~ _q__full_fsm___pip_19_1_5
 &&   _q__idx_fsm___pip_19_1_6 == 0 && ~ _q__full_fsm___pip_19_1_6
 &&   _q__idx_fsm___pip_19_1_7 == 0 && ~ _q__full_fsm___pip_19_1_7
 &&   _q__idx_fsm___pip_19_1_8 == 0 && ~ _q__full_fsm___pip_19_1_8
 &&   _q__idx_fsm___pip_19_1_9 == 0 && ~ _q__full_fsm___pip_19_1_9
 &&   _q__idx_fsm___pip_19_1_10 == 0 && ~ _q__full_fsm___pip_19_1_10
 &&   _q__idx_fsm___pip_19_1_11 == 0 && ~ _q__full_fsm___pip_19_1_11
 &&   _q__idx_fsm___pip_19_1_12 == 0 && ~ _q__full_fsm___pip_19_1_12
 &&   _q__idx_fsm___pip_19_1_13 == 0 && ~ _q__full_fsm___pip_19_1_13
 &&   _q__idx_fsm___pip_19_1_14 == 0 && ~ _q__full_fsm___pip_19_1_14
 &&   _q__idx_fsm___pip_19_1_15 == 0 && ~ _q__full_fsm___pip_19_1_15
 &&   _q__idx_fsm___pip_19_1_16 == 0 && ~ _q__full_fsm___pip_19_1_16
 &&   _q__idx_fsm___pip_19_1_17 == 0 && ~ _q__full_fsm___pip_19_1_17
 &&   _q__idx_fsm___pip_19_1_18 == 0 && ~ _q__full_fsm___pip_19_1_18
 &&   _q__idx_fsm___pip_19_1_19 == 0 && ~ _q__full_fsm___pip_19_1_19
 &&   _q__idx_fsm___pip_19_1_20 == 0
;



`ifdef FORMAL
initial begin
assume(reset);
end
assume property($initstate || (out_done));
`endif
always @* begin
_d___block_15_wait = _q___block_15_wait;
_d___block_20_px = _q___block_20_px;
_d___block_20_py = _q___block_20_py;
_d___pip_19_1_0___block_20_px = _q___pip_19_1_0___block_20_px;
_d___pip_19_1_1___block_20_px = _q___pip_19_1_1___block_20_px;
_d___pip_19_1_2___block_20_px = _q___pip_19_1_2___block_20_px;
_d___pip_19_1_3___block_20_px = _q___pip_19_1_3___block_20_px;
_d___pip_19_1_4___block_20_px = _q___pip_19_1_4___block_20_px;
_d___pip_19_1_5___block_20_px = _q___pip_19_1_5___block_20_px;
_d___pip_19_1_6___block_20_px = _q___pip_19_1_6___block_20_px;
_d___pip_19_1_7___block_20_px = _q___pip_19_1_7___block_20_px;
_d___pip_19_1_8___block_20_px = _q___pip_19_1_8___block_20_px;
_d___pip_19_1_9___block_20_px = _q___pip_19_1_9___block_20_px;
_d___pip_19_1_10___block_20_px = _q___pip_19_1_10___block_20_px;
_d___pip_19_1_11___block_20_px = _q___pip_19_1_11___block_20_px;
_d___pip_19_1_12___block_20_px = _q___pip_19_1_12___block_20_px;
_d___pip_19_1_13___block_20_px = _q___pip_19_1_13___block_20_px;
_d___pip_19_1_14___block_20_px = _q___pip_19_1_14___block_20_px;
_d___pip_19_1_15___block_20_px = _q___pip_19_1_15___block_20_px;
_d___pip_19_1_16___block_20_px = _q___pip_19_1_16___block_20_px;
_d___pip_19_1_17___block_20_px = _q___pip_19_1_17___block_20_px;
_d___pip_19_1_18___block_20_px = _q___pip_19_1_18___block_20_px;
_d___pip_19_1_19___block_20_px = _q___pip_19_1_19___block_20_px;
_d___pip_19_1_20___block_20_px = _q___pip_19_1_20___block_20_px;
_d___pip_19_1_0___stage___block_27_x = _q___pip_19_1_0___stage___block_27_x;
_d___pip_19_1_1___stage___block_27_x = _q___pip_19_1_1___stage___block_27_x;
_d___pip_19_1_2___stage___block_27_x = _q___pip_19_1_2___stage___block_27_x;
_d___pip_19_1_3___stage___block_27_x = _q___pip_19_1_3___stage___block_27_x;
_d___pip_19_1_4___stage___block_27_x = _q___pip_19_1_4___stage___block_27_x;
_d___pip_19_1_5___stage___block_27_x = _q___pip_19_1_5___stage___block_27_x;
_d___pip_19_1_6___stage___block_27_x = _q___pip_19_1_6___stage___block_27_x;
_d___pip_19_1_7___stage___block_27_x = _q___pip_19_1_7___stage___block_27_x;
_d___pip_19_1_8___stage___block_27_x = _q___pip_19_1_8___stage___block_27_x;
_d___pip_19_1_9___stage___block_27_x = _q___pip_19_1_9___stage___block_27_x;
_d___pip_19_1_10___stage___block_27_x = _q___pip_19_1_10___stage___block_27_x;
_d___pip_19_1_11___stage___block_27_x = _q___pip_19_1_11___stage___block_27_x;
_d___pip_19_1_12___stage___block_27_x = _q___pip_19_1_12___stage___block_27_x;
_d___pip_19_1_13___stage___block_27_x = _q___pip_19_1_13___stage___block_27_x;
_d___pip_19_1_14___stage___block_27_x = _q___pip_19_1_14___stage___block_27_x;
_d___pip_19_1_15___stage___block_27_x = _q___pip_19_1_15___stage___block_27_x;
_d___pip_19_1_16___stage___block_27_x = _q___pip_19_1_16___stage___block_27_x;
_d___pip_19_1_17___stage___block_27_x = _q___pip_19_1_17___stage___block_27_x;
_d___pip_19_1_0___stage___block_27_y = _q___pip_19_1_0___stage___block_27_y;
_d___pip_19_1_1___stage___block_27_y = _q___pip_19_1_1___stage___block_27_y;
_d___pip_19_1_2___stage___block_27_y = _q___pip_19_1_2___stage___block_27_y;
_d___pip_19_1_3___stage___block_27_y = _q___pip_19_1_3___stage___block_27_y;
_d___pip_19_1_4___stage___block_27_y = _q___pip_19_1_4___stage___block_27_y;
_d___pip_19_1_5___stage___block_27_y = _q___pip_19_1_5___stage___block_27_y;
_d___pip_19_1_6___stage___block_27_y = _q___pip_19_1_6___stage___block_27_y;
_d___pip_19_1_7___stage___block_27_y = _q___pip_19_1_7___stage___block_27_y;
_d___pip_19_1_8___stage___block_27_y = _q___pip_19_1_8___stage___block_27_y;
_d___pip_19_1_9___stage___block_27_y = _q___pip_19_1_9___stage___block_27_y;
_d___pip_19_1_10___stage___block_27_y = _q___pip_19_1_10___stage___block_27_y;
_d___pip_19_1_11___stage___block_27_y = _q___pip_19_1_11___stage___block_27_y;
_d___pip_19_1_12___stage___block_27_y = _q___pip_19_1_12___stage___block_27_y;
_d___pip_19_1_13___stage___block_27_y = _q___pip_19_1_13___stage___block_27_y;
_d___pip_19_1_14___stage___block_27_y = _q___pip_19_1_14___stage___block_27_y;
_d___pip_19_1_15___stage___block_27_y = _q___pip_19_1_15___stage___block_27_y;
_d___pip_19_1_16___stage___block_27_y = _q___pip_19_1_16___stage___block_27_y;
_d___pip_19_1_17___stage___block_27_y = _q___pip_19_1_17___stage___block_27_y;
_d___pip_19_1_1___stage___block_28_u = _q___pip_19_1_1___stage___block_28_u;
_d___pip_19_1_2___stage___block_28_u = _q___pip_19_1_2___stage___block_28_u;
_d___pip_19_1_3___stage___block_28_u = _q___pip_19_1_3___stage___block_28_u;
_d___pip_19_1_4___stage___block_28_u = _q___pip_19_1_4___stage___block_28_u;
_d___pip_19_1_5___stage___block_28_u = _q___pip_19_1_5___stage___block_28_u;
_d___pip_19_1_6___stage___block_28_u = _q___pip_19_1_6___stage___block_28_u;
_d___pip_19_1_7___stage___block_28_u = _q___pip_19_1_7___stage___block_28_u;
_d___pip_19_1_8___stage___block_28_u = _q___pip_19_1_8___stage___block_28_u;
_d___pip_19_1_9___stage___block_28_u = _q___pip_19_1_9___stage___block_28_u;
_d___pip_19_1_10___stage___block_28_u = _q___pip_19_1_10___stage___block_28_u;
_d___pip_19_1_11___stage___block_28_u = _q___pip_19_1_11___stage___block_28_u;
_d___pip_19_1_12___stage___block_28_u = _q___pip_19_1_12___stage___block_28_u;
_d___pip_19_1_13___stage___block_28_u = _q___pip_19_1_13___stage___block_28_u;
_d___pip_19_1_14___stage___block_28_u = _q___pip_19_1_14___stage___block_28_u;
_d___pip_19_1_15___stage___block_28_u = _q___pip_19_1_15___stage___block_28_u;
_d___pip_19_1_1___stage___block_28_u2 = _q___pip_19_1_1___stage___block_28_u2;
_d___pip_19_1_2___stage___block_28_u2 = _q___pip_19_1_2___stage___block_28_u2;
_d___pip_19_1_1___stage___block_28_v = _q___pip_19_1_1___stage___block_28_v;
_d___pip_19_1_2___stage___block_28_v = _q___pip_19_1_2___stage___block_28_v;
_d___pip_19_1_3___stage___block_28_v = _q___pip_19_1_3___stage___block_28_v;
_d___pip_19_1_4___stage___block_28_v = _q___pip_19_1_4___stage___block_28_v;
_d___pip_19_1_5___stage___block_28_v = _q___pip_19_1_5___stage___block_28_v;
_d___pip_19_1_6___stage___block_28_v = _q___pip_19_1_6___stage___block_28_v;
_d___pip_19_1_7___stage___block_28_v = _q___pip_19_1_7___stage___block_28_v;
_d___pip_19_1_8___stage___block_28_v = _q___pip_19_1_8___stage___block_28_v;
_d___pip_19_1_9___stage___block_28_v = _q___pip_19_1_9___stage___block_28_v;
_d___pip_19_1_10___stage___block_28_v = _q___pip_19_1_10___stage___block_28_v;
_d___pip_19_1_11___stage___block_28_v = _q___pip_19_1_11___stage___block_28_v;
_d___pip_19_1_12___stage___block_28_v = _q___pip_19_1_12___stage___block_28_v;
_d___pip_19_1_13___stage___block_28_v = _q___pip_19_1_13___stage___block_28_v;
_d___pip_19_1_14___stage___block_28_v = _q___pip_19_1_14___stage___block_28_v;
_d___pip_19_1_15___stage___block_28_v = _q___pip_19_1_15___stage___block_28_v;
_d___pip_19_1_16___stage___block_28_v = _q___pip_19_1_16___stage___block_28_v;
_d___pip_19_1_17___stage___block_28_v = _q___pip_19_1_17___stage___block_28_v;
_d___pip_19_1_18___stage___block_28_v = _q___pip_19_1_18___stage___block_28_v;
_d___pip_19_1_1___stage___block_28_v2 = _q___pip_19_1_1___stage___block_28_v2;
_d___pip_19_1_2___stage___block_28_v2 = _q___pip_19_1_2___stage___block_28_v2;
_d___pip_19_1_3___stage___block_28_v2 = _q___pip_19_1_3___stage___block_28_v2;
_d___pip_19_1_4___stage___block_28_v2 = _q___pip_19_1_4___stage___block_28_v2;
_d___pip_19_1_5___stage___block_28_v2 = _q___pip_19_1_5___stage___block_28_v2;
_d___pip_19_1_6___stage___block_28_v2 = _q___pip_19_1_6___stage___block_28_v2;
_d___pip_19_1_7___stage___block_28_v2 = _q___pip_19_1_7___stage___block_28_v2;
_d___pip_19_1_8___stage___block_28_v2 = _q___pip_19_1_8___stage___block_28_v2;
_d___pip_19_1_2___stage___block_29_B = _q___pip_19_1_2___stage___block_29_B;
_d___pip_19_1_3___stage___block_29_B = _q___pip_19_1_3___stage___block_29_B;
_d___pip_19_1_4___stage___block_29_B = _q___pip_19_1_4___stage___block_29_B;
_d___pip_19_1_5___stage___block_29_B = _q___pip_19_1_5___stage___block_29_B;
_d___pip_19_1_6___stage___block_29_B = _q___pip_19_1_6___stage___block_29_B;
_d___pip_19_1_7___stage___block_29_B = _q___pip_19_1_7___stage___block_29_B;
_d___pip_19_1_2___stage___block_29_R = _q___pip_19_1_2___stage___block_29_R;
_d___pip_19_1_3___stage___block_29_R = _q___pip_19_1_3___stage___block_29_R;
_d___pip_19_1_4___stage___block_29_R = _q___pip_19_1_4___stage___block_29_R;
_d___pip_19_1_5___stage___block_29_R = _q___pip_19_1_5___stage___block_29_R;
_d___pip_19_1_6___stage___block_29_R = _q___pip_19_1_6___stage___block_29_R;
_d___pip_19_1_7___stage___block_29_R = _q___pip_19_1_7___stage___block_29_R;
_d___pip_19_1_2___stage___block_29_h = _q___pip_19_1_2___stage___block_29_h;
_d___pip_19_1_3___stage___block_29_h = _q___pip_19_1_3___stage___block_29_h;
_d___pip_19_1_4___stage___block_29_h = _q___pip_19_1_4___stage___block_29_h;
_d___pip_19_1_5___stage___block_29_h = _q___pip_19_1_5___stage___block_29_h;
_d___pip_19_1_6___stage___block_29_h = _q___pip_19_1_6___stage___block_29_h;
_d___pip_19_1_7___stage___block_29_h = _q___pip_19_1_7___stage___block_29_h;
_d___pip_19_1_8___stage___block_29_h = _q___pip_19_1_8___stage___block_29_h;
_d___pip_19_1_9___stage___block_29_h = _q___pip_19_1_9___stage___block_29_h;
_d___pip_19_1_10___stage___block_29_h = _q___pip_19_1_10___stage___block_29_h;
_d___pip_19_1_11___stage___block_29_h = _q___pip_19_1_11___stage___block_29_h;
_d___pip_19_1_12___stage___block_29_h = _q___pip_19_1_12___stage___block_29_h;
_d___pip_19_1_13___stage___block_29_h = _q___pip_19_1_13___stage___block_29_h;
_d___pip_19_1_14___stage___block_29_h = _q___pip_19_1_14___stage___block_29_h;
_d___pip_19_1_15___stage___block_29_h = _q___pip_19_1_15___stage___block_29_h;
_d___pip_19_1_16___stage___block_29_h = _q___pip_19_1_16___stage___block_29_h;
_d___pip_19_1_17___stage___block_29_h = _q___pip_19_1_17___stage___block_29_h;
_d___pip_19_1_18___stage___block_29_h = _q___pip_19_1_18___stage___block_29_h;
_d___pip_19_1_2___stage___block_29_t = _q___pip_19_1_2___stage___block_29_t;
_d___pip_19_1_3___stage___block_29_t = _q___pip_19_1_3___stage___block_29_t;
_d___pip_19_1_3___stage___block_30_p = _q___pip_19_1_3___stage___block_30_p;
_d___pip_19_1_4___stage___block_30_p = _q___pip_19_1_4___stage___block_30_p;
_d___pip_19_1_5___stage___block_30_p = _q___pip_19_1_5___stage___block_30_p;
_d___pip_19_1_6___stage___block_30_p = _q___pip_19_1_6___stage___block_30_p;
_d___pip_19_1_7___stage___block_30_p = _q___pip_19_1_7___stage___block_30_p;
_d___pip_19_1_3___stage___block_30_q = _q___pip_19_1_3___stage___block_30_q;
_d___pip_19_1_4___stage___block_30_q = _q___pip_19_1_4___stage___block_30_q;
_d___pip_19_1_5___stage___block_30_q = _q___pip_19_1_5___stage___block_30_q;
_d___pip_19_1_6___stage___block_30_q = _q___pip_19_1_6___stage___block_30_q;
_d___pip_19_1_7___stage___block_30_q = _q___pip_19_1_7___stage___block_30_q;
_d___pip_19_1_4___stage___block_31_w = _q___pip_19_1_4___stage___block_31_w;
_d___pip_19_1_5___stage___block_31_w = _q___pip_19_1_5___stage___block_31_w;
_d___pip_19_1_7___stage___block_39_B_s = _q___pip_19_1_7___stage___block_39_B_s;
_d___pip_19_1_8___stage___block_39_B_s = _q___pip_19_1_8___stage___block_39_B_s;
_d___pip_19_1_9___stage___block_39_B_s = _q___pip_19_1_9___stage___block_39_B_s;
_d___pip_19_1_10___stage___block_39_B_s = _q___pip_19_1_10___stage___block_39_B_s;
_d___pip_19_1_11___stage___block_39_B_s = _q___pip_19_1_11___stage___block_39_B_s;
_d___pip_19_1_12___stage___block_39_B_s = _q___pip_19_1_12___stage___block_39_B_s;
_d___pip_19_1_13___stage___block_39_B_s = _q___pip_19_1_13___stage___block_39_B_s;
_d___pip_19_1_14___stage___block_39_B_s = _q___pip_19_1_14___stage___block_39_B_s;
_d___pip_19_1_15___stage___block_39_B_s = _q___pip_19_1_15___stage___block_39_B_s;
_d___pip_19_1_16___stage___block_39_B_s = _q___pip_19_1_16___stage___block_39_B_s;
_d___pip_19_1_17___stage___block_39_B_s = _q___pip_19_1_17___stage___block_39_B_s;
_d___pip_19_1_18___stage___block_39_B_s = _q___pip_19_1_18___stage___block_39_B_s;
_d___pip_19_1_7___stage___block_39_R_s = _q___pip_19_1_7___stage___block_39_R_s;
_d___pip_19_1_8___stage___block_39_R_s = _q___pip_19_1_8___stage___block_39_R_s;
_d___pip_19_1_9___stage___block_39_R_s = _q___pip_19_1_9___stage___block_39_R_s;
_d___pip_19_1_10___stage___block_39_R_s = _q___pip_19_1_10___stage___block_39_R_s;
_d___pip_19_1_11___stage___block_39_R_s = _q___pip_19_1_11___stage___block_39_R_s;
_d___pip_19_1_12___stage___block_39_R_s = _q___pip_19_1_12___stage___block_39_R_s;
_d___pip_19_1_13___stage___block_39_R_s = _q___pip_19_1_13___stage___block_39_R_s;
_d___pip_19_1_14___stage___block_39_R_s = _q___pip_19_1_14___stage___block_39_R_s;
_d___pip_19_1_15___stage___block_39_R_s = _q___pip_19_1_15___stage___block_39_R_s;
_d___pip_19_1_16___stage___block_39_R_s = _q___pip_19_1_16___stage___block_39_R_s;
_d___pip_19_1_17___stage___block_39_R_s = _q___pip_19_1_17___stage___block_39_R_s;
_d___pip_19_1_18___stage___block_39_R_s = _q___pip_19_1_18___stage___block_39_R_s;
_d___pip_19_1_8___stage___block_47_B = _q___pip_19_1_8___stage___block_47_B;
_d___pip_19_1_9___stage___block_47_B = _q___pip_19_1_9___stage___block_47_B;
_d___pip_19_1_10___stage___block_47_B = _q___pip_19_1_10___stage___block_47_B;
_d___pip_19_1_11___stage___block_47_B = _q___pip_19_1_11___stage___block_47_B;
_d___pip_19_1_12___stage___block_47_B = _q___pip_19_1_12___stage___block_47_B;
_d___pip_19_1_13___stage___block_47_B = _q___pip_19_1_13___stage___block_47_B;
_d___pip_19_1_14___stage___block_47_B = _q___pip_19_1_14___stage___block_47_B;
_d___pip_19_1_15___stage___block_47_B = _q___pip_19_1_15___stage___block_47_B;
_d___pip_19_1_16___stage___block_47_B = _q___pip_19_1_16___stage___block_47_B;
_d___pip_19_1_17___stage___block_47_B = _q___pip_19_1_17___stage___block_47_B;
_d___pip_19_1_18___stage___block_47_B = _q___pip_19_1_18___stage___block_47_B;
_d___pip_19_1_19___stage___block_47_B = _q___pip_19_1_19___stage___block_47_B;
_d___pip_19_1_8___stage___block_47_R = _q___pip_19_1_8___stage___block_47_R;
_d___pip_19_1_9___stage___block_47_R = _q___pip_19_1_9___stage___block_47_R;
_d___pip_19_1_10___stage___block_47_R = _q___pip_19_1_10___stage___block_47_R;
_d___pip_19_1_11___stage___block_47_R = _q___pip_19_1_11___stage___block_47_R;
_d___pip_19_1_12___stage___block_47_R = _q___pip_19_1_12___stage___block_47_R;
_d___pip_19_1_13___stage___block_47_R = _q___pip_19_1_13___stage___block_47_R;
_d___pip_19_1_14___stage___block_47_R = _q___pip_19_1_14___stage___block_47_R;
_d___pip_19_1_15___stage___block_47_R = _q___pip_19_1_15___stage___block_47_R;
_d___pip_19_1_16___stage___block_47_R = _q___pip_19_1_16___stage___block_47_R;
_d___pip_19_1_17___stage___block_47_R = _q___pip_19_1_17___stage___block_47_R;
_d___pip_19_1_18___stage___block_47_R = _q___pip_19_1_18___stage___block_47_R;
_d___pip_19_1_19___stage___block_47_R = _q___pip_19_1_19___stage___block_47_R;
_d___pip_19_1_8___stage___block_47_c = _q___pip_19_1_8___stage___block_47_c;
_d___pip_19_1_9___stage___block_47_c = _q___pip_19_1_9___stage___block_47_c;
_d___pip_19_1_10___stage___block_47_c = _q___pip_19_1_10___stage___block_47_c;
_d___pip_19_1_11___stage___block_47_c = _q___pip_19_1_11___stage___block_47_c;
_d___pip_19_1_12___stage___block_47_c = _q___pip_19_1_12___stage___block_47_c;
_d___pip_19_1_13___stage___block_47_c = _q___pip_19_1_13___stage___block_47_c;
_d___pip_19_1_14___stage___block_47_c = _q___pip_19_1_14___stage___block_47_c;
_d___pip_19_1_15___stage___block_47_c = _q___pip_19_1_15___stage___block_47_c;
_d___pip_19_1_8___stage___block_47_p = _q___pip_19_1_8___stage___block_47_p;
_d___pip_19_1_9___stage___block_47_p = _q___pip_19_1_9___stage___block_47_p;
_d___pip_19_1_10___stage___block_49_o1 = _q___pip_19_1_10___stage___block_49_o1;
_d___pip_19_1_11___stage___block_49_o1 = _q___pip_19_1_11___stage___block_49_o1;
_d___pip_19_1_11___stage___block_50_o_t1 = _q___pip_19_1_11___stage___block_50_o_t1;
_d___pip_19_1_12___stage___block_50_o_t1 = _q___pip_19_1_12___stage___block_50_o_t1;
_d___pip_19_1_12___stage___block_51_o_t2 = _q___pip_19_1_12___stage___block_51_o_t2;
_d___pip_19_1_13___stage___block_51_o_t2 = _q___pip_19_1_13___stage___block_51_o_t2;
_d___pip_19_1_13___stage___block_52_o = _q___pip_19_1_13___stage___block_52_o;
_d___pip_19_1_14___stage___block_52_o = _q___pip_19_1_14___stage___block_52_o;
_d___pip_19_1_14___stage___block_53_B_g = _q___pip_19_1_14___stage___block_53_B_g;
_d___pip_19_1_15___stage___block_53_B_g = _q___pip_19_1_15___stage___block_53_B_g;
_d___pip_19_1_16___stage___block_53_B_g = _q___pip_19_1_16___stage___block_53_B_g;
_d___pip_19_1_17___stage___block_53_B_g = _q___pip_19_1_17___stage___block_53_B_g;
_d___pip_19_1_18___stage___block_53_B_g = _q___pip_19_1_18___stage___block_53_B_g;
_d___pip_19_1_15___stage___block_61_d = _q___pip_19_1_15___stage___block_61_d;
_d___pip_19_1_16___stage___block_61_d = _q___pip_19_1_16___stage___block_61_d;
_d___pip_19_1_16___stage___block_62_R_g = _q___pip_19_1_16___stage___block_62_R_g;
_d___pip_19_1_17___stage___block_62_R_g = _q___pip_19_1_17___stage___block_62_R_g;
_d___pip_19_1_18___stage___block_62_R_g = _q___pip_19_1_18___stage___block_62_R_g;
_d___pip_19_1_17___stage___block_70_B_k = _q___pip_19_1_17___stage___block_70_B_k;
_d___pip_19_1_18___stage___block_70_B_k = _q___pip_19_1_18___stage___block_70_B_k;
_d___pip_19_1_17___stage___block_70_R_k = _q___pip_19_1_17___stage___block_70_R_k;
_d___pip_19_1_18___stage___block_70_R_k = _q___pip_19_1_18___stage___block_70_R_k;
_d___pip_19_1_19___stage___block_86_b = _q___pip_19_1_19___stage___block_86_b;
_d___pip_19_1_20___stage___block_86_b = _q___pip_19_1_20___stage___block_86_b;
_d___pip_19_1_19___stage___block_86_g = _q___pip_19_1_19___stage___block_86_g;
_d___pip_19_1_20___stage___block_86_g = _q___pip_19_1_20___stage___block_86_g;
_d___pip_19_1_19___stage___block_86_r = _q___pip_19_1_19___stage___block_86_r;
_d___pip_19_1_20___stage___block_86_r = _q___pip_19_1_20___stage___block_86_r;
_d__idx_fsm0 = _q__idx_fsm0;
_d__idx_fsm___pip_19_1_0 = _q__idx_fsm___pip_19_1_0;
_d__full_fsm___pip_19_1_0 = _q__full_fsm___pip_19_1_0;
_t__stall_fsm___pip_19_1_0 = 0;
_t__1stdisable_fsm___pip_19_1_0 = 0;
_d__idx_fsm___pip_19_1_1 = _q__idx_fsm___pip_19_1_1;
_d__full_fsm___pip_19_1_1 = _q__full_fsm___pip_19_1_1;
_t__stall_fsm___pip_19_1_1 = 0;
_t__1stdisable_fsm___pip_19_1_1 = 0;
_d__idx_fsm___pip_19_1_2 = _q__idx_fsm___pip_19_1_2;
_d__full_fsm___pip_19_1_2 = _q__full_fsm___pip_19_1_2;
_t__stall_fsm___pip_19_1_2 = 0;
_t__1stdisable_fsm___pip_19_1_2 = 0;
_d__idx_fsm___pip_19_1_3 = _q__idx_fsm___pip_19_1_3;
_d__full_fsm___pip_19_1_3 = _q__full_fsm___pip_19_1_3;
_t__stall_fsm___pip_19_1_3 = 0;
_t__1stdisable_fsm___pip_19_1_3 = 0;
_d__idx_fsm___pip_19_1_4 = _q__idx_fsm___pip_19_1_4;
_d__full_fsm___pip_19_1_4 = _q__full_fsm___pip_19_1_4;
_t__stall_fsm___pip_19_1_4 = 0;
_t__1stdisable_fsm___pip_19_1_4 = 0;
_d__idx_fsm___pip_19_1_5 = _q__idx_fsm___pip_19_1_5;
_d__full_fsm___pip_19_1_5 = _q__full_fsm___pip_19_1_5;
_t__stall_fsm___pip_19_1_5 = 0;
_t__1stdisable_fsm___pip_19_1_5 = 0;
_d__idx_fsm___pip_19_1_6 = _q__idx_fsm___pip_19_1_6;
_d__full_fsm___pip_19_1_6 = _q__full_fsm___pip_19_1_6;
_t__stall_fsm___pip_19_1_6 = 0;
_t__1stdisable_fsm___pip_19_1_6 = 0;
_d__idx_fsm___pip_19_1_7 = _q__idx_fsm___pip_19_1_7;
_d__full_fsm___pip_19_1_7 = _q__full_fsm___pip_19_1_7;
_t__stall_fsm___pip_19_1_7 = 0;
_t__1stdisable_fsm___pip_19_1_7 = 0;
_d__idx_fsm___pip_19_1_8 = _q__idx_fsm___pip_19_1_8;
_d__full_fsm___pip_19_1_8 = _q__full_fsm___pip_19_1_8;
_t__stall_fsm___pip_19_1_8 = 0;
_t__1stdisable_fsm___pip_19_1_8 = 0;
_d__idx_fsm___pip_19_1_9 = _q__idx_fsm___pip_19_1_9;
_d__full_fsm___pip_19_1_9 = _q__full_fsm___pip_19_1_9;
_t__stall_fsm___pip_19_1_9 = 0;
_t__1stdisable_fsm___pip_19_1_9 = 0;
_d__idx_fsm___pip_19_1_10 = _q__idx_fsm___pip_19_1_10;
_d__full_fsm___pip_19_1_10 = _q__full_fsm___pip_19_1_10;
_t__stall_fsm___pip_19_1_10 = 0;
_t__1stdisable_fsm___pip_19_1_10 = 0;
_d__idx_fsm___pip_19_1_11 = _q__idx_fsm___pip_19_1_11;
_d__full_fsm___pip_19_1_11 = _q__full_fsm___pip_19_1_11;
_t__stall_fsm___pip_19_1_11 = 0;
_t__1stdisable_fsm___pip_19_1_11 = 0;
_d__idx_fsm___pip_19_1_12 = _q__idx_fsm___pip_19_1_12;
_d__full_fsm___pip_19_1_12 = _q__full_fsm___pip_19_1_12;
_t__stall_fsm___pip_19_1_12 = 0;
_t__1stdisable_fsm___pip_19_1_12 = 0;
_d__idx_fsm___pip_19_1_13 = _q__idx_fsm___pip_19_1_13;
_d__full_fsm___pip_19_1_13 = _q__full_fsm___pip_19_1_13;
_t__stall_fsm___pip_19_1_13 = 0;
_t__1stdisable_fsm___pip_19_1_13 = 0;
_d__idx_fsm___pip_19_1_14 = _q__idx_fsm___pip_19_1_14;
_d__full_fsm___pip_19_1_14 = _q__full_fsm___pip_19_1_14;
_t__stall_fsm___pip_19_1_14 = 0;
_t__1stdisable_fsm___pip_19_1_14 = 0;
_d__idx_fsm___pip_19_1_15 = _q__idx_fsm___pip_19_1_15;
_d__full_fsm___pip_19_1_15 = _q__full_fsm___pip_19_1_15;
_t__stall_fsm___pip_19_1_15 = 0;
_t__1stdisable_fsm___pip_19_1_15 = 0;
_d__idx_fsm___pip_19_1_16 = _q__idx_fsm___pip_19_1_16;
_d__full_fsm___pip_19_1_16 = _q__full_fsm___pip_19_1_16;
_t__stall_fsm___pip_19_1_16 = 0;
_t__1stdisable_fsm___pip_19_1_16 = 0;
_d__idx_fsm___pip_19_1_17 = _q__idx_fsm___pip_19_1_17;
_d__full_fsm___pip_19_1_17 = _q__full_fsm___pip_19_1_17;
_t__stall_fsm___pip_19_1_17 = 0;
_t__1stdisable_fsm___pip_19_1_17 = 0;
_d__idx_fsm___pip_19_1_18 = _q__idx_fsm___pip_19_1_18;
_d__full_fsm___pip_19_1_18 = _q__full_fsm___pip_19_1_18;
_t__stall_fsm___pip_19_1_18 = 0;
_t__1stdisable_fsm___pip_19_1_18 = 0;
_d__idx_fsm___pip_19_1_19 = _q__idx_fsm___pip_19_1_19;
_d__full_fsm___pip_19_1_19 = _q__full_fsm___pip_19_1_19;
_t__stall_fsm___pip_19_1_19 = 0;
_t__1stdisable_fsm___pip_19_1_19 = 0;
_d__idx_fsm___pip_19_1_20 = _q__idx_fsm___pip_19_1_20;
_d__full_fsm___pip_19_1_20 = _q__full_fsm___pip_19_1_20;
_t__stall_fsm___pip_19_1_20 = 0;
_t__1stdisable_fsm___pip_19_1_20 = 0;
_t___stage___block_27_x = 0;
_t___stage___block_27_y = 0;
_t___stage___block_28_u = 0;
_t___stage___block_28_v = 0;
_t___stage___block_28_u2 = 0;
_t___stage___block_28_v2 = 0;
_t___stage___block_29_h = 0;
_t___stage___block_29_t = 0;
_t___stage___block_30_p = 0;
_t___stage___block_30_q = 0;
_t___stage___block_31_w = 0;
_t___stage___block_38_o = 0;
_t___stage___block_39_w = 0;
_t___stage___block_39_R_s = 0;
_t___stage___block_39_B_s = 0;
_t___stage___block_47_R = 0;
_t___stage___block_47_p = 0;
_t___stage___block_47_c = 0;
_t___stage___block_49_o1 = 0;
_t___stage___block_50_o_t1 = 0;
_t___stage___block_51_o_t2 = 0;
_t___stage___block_52_o = 0;
_t___stage___block_53_B_g = 0;
_t___stage___block_61_r = 0;
_t___stage___block_61_d = 0;
_t___stage___block_62_R_g = 0;
_t___stage___block_70_R_k = 0;
_t___stage___block_70_B_k = 0;
_t___stage___block_70_c = 0;
_t___stage___block_86_r = 0;
_t___stage___block_86_b = 0;
_t___stage___block_86_G = 0;
_t___stage___block_86_g = 0;
// _always_pre
// __block_1
_t_pix_r = 0;

_t_pix_g = 0;

_t_pix_b = 0;

// __block_2
(* full_case *)
case (_q__idx_fsm0)
1: begin
// _top
// __block_3
_d__idx_fsm0 = 2;
end
2: begin
// __while__block_4
if (1) begin
// __block_5
// __block_7
_d__idx_fsm0 = 3;
end else begin
// __block_6
// __block_96
_d__idx_fsm0 = 0;
end
end
3: begin
// __while__block_8
if (~in_vga_vs) begin
// __block_9
// __block_11
// __block_12
_d__idx_fsm0 = 3;
end else begin
// __block_10
_d__idx_fsm0 = 4;
end
end
4: begin
// __while__block_13
if (in_vga_vs) begin
// __block_14
// __block_16
// __block_17
_d__idx_fsm0 = 4;
end else begin
// __block_15
// var inits
_d___block_15_wait = 0;
// --
_d__idx_fsm0 = 5;
end
end
5: begin
// __while__block_18
if (_q___block_15_wait!=27338) begin
// __block_19
// __block_21
_d___block_15_wait = _q___block_15_wait+1;

// __block_22
_d__idx_fsm0 = 5;
end else begin
// __block_20
// var inits
_d___block_20_px = -1;
_d___block_20_py = -1;
// --
_d__idx_fsm0 = 6;
end
end
6: begin
// __while__block_23
if (!(_q___block_20_px==799&&_q___block_20_py==479)) begin
// __block_24
// __block_26
// --> pipeline __pip_19_1 starts here
_t__1stdisable_fsm___pip_19_1_0 = 0;
// __block_93
// __block_94
_d__idx_fsm0 = 6;
end else begin
// __block_25
// __block_95
_d__idx_fsm0 = 2;
_t__1stdisable_fsm___pip_19_1_0 = 1;
end
end
0: begin 
end
default: begin 
_d__idx_fsm0 = {3{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// ==== pipelines ====
// pipeline
// -------- stage 0
(* full_case *)
case (_q__idx_fsm___pip_19_1_0)
1: begin
if (~_t__1stdisable_fsm___pip_19_1_0) begin 
// __stage___block_27
_t___stage___block_27_x = _q___block_20_px>>3;

_t___stage___block_27_y = _q___block_20_py>>3;

_d___block_20_py = _q___block_20_px==799 ? (_q___block_20_py+1):_q___block_20_py;

_d___block_20_px = _q___block_20_px==799 ? 0:(_q___block_20_px+1);

// end of pipeline stage
_d__full_fsm___pip_19_1_0 = 1;
end // 7
_d__idx_fsm___pip_19_1_0 = _t__stall_fsm___pip_19_1_0 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_19_1_0 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
if (_q__idx_fsm___pip_19_1_0 == 1  ) begin
_d___pip_19_1_0___stage___block_27_x = _t___stage___block_27_x;
end else begin
_d___pip_19_1_0___stage___block_27_x = _q___pip_19_1_0___stage___block_27_x;
end
if (_q__idx_fsm___pip_19_1_0 == 1  ) begin
_d___pip_19_1_0___block_20_px = _d___block_20_px;
end else begin
_d___pip_19_1_0___block_20_px = _q___pip_19_1_0___block_20_px;
end
if (_q__idx_fsm___pip_19_1_0 == 1  ) begin
_d___pip_19_1_0___stage___block_27_y = _t___stage___block_27_y;
end else begin
_d___pip_19_1_0___stage___block_27_y = _q___pip_19_1_0___stage___block_27_y;
end
// -------- stage 1
(* full_case *)
case (_q__idx_fsm___pip_19_1_1)
1: begin
// __stage___block_28
_t___stage___block_28_u = _q___pip_19_1_1___stage___block_27_x-36;

_t___stage___block_28_v = 18-_q___pip_19_1_1___stage___block_27_y;

_t___stage___block_28_u2 = _t___stage___block_28_u*_t___stage___block_28_u;

_t___stage___block_28_v2 = _t___stage___block_28_v*_t___stage___block_28_v;

// end of pipeline stage
_d__full_fsm___pip_19_1_1 = 1;
_d__idx_fsm___pip_19_1_1 = _t__stall_fsm___pip_19_1_1 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_19_1_1 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
if (_q__idx_fsm___pip_19_1_1 == 1  ) begin
_d___pip_19_1_1___stage___block_28_u = _t___stage___block_28_u;
end else begin
_d___pip_19_1_1___stage___block_28_u = _q___pip_19_1_1___stage___block_28_u;
end
if (_q__idx_fsm___pip_19_1_1 == 1  ) begin
_d___pip_19_1_1___stage___block_28_v2 = _t___stage___block_28_v2;
end else begin
_d___pip_19_1_1___stage___block_28_v2 = _q___pip_19_1_1___stage___block_28_v2;
end
if (_q__idx_fsm___pip_19_1_1 == 1  ) begin
_d___pip_19_1_1___stage___block_28_u2 = _t___stage___block_28_u2;
end else begin
_d___pip_19_1_1___stage___block_28_u2 = _q___pip_19_1_1___stage___block_28_u2;
end
if (_q__idx_fsm___pip_19_1_1 == 1  ) begin
_d___pip_19_1_1___stage___block_28_v = _t___stage___block_28_v;
end else begin
_d___pip_19_1_1___stage___block_28_v = _q___pip_19_1_1___stage___block_28_v;
end
// -------- stage 2
(* full_case *)
case (_q__idx_fsm___pip_19_1_2)
1: begin
// __stage___block_29
// var inits
// --
_t___stage___block_29_h = _q___pip_19_1_2___stage___block_28_u2+_q___pip_19_1_2___stage___block_28_v2;

_t___stage___block_29_t = 5200+(_t___stage___block_29_h<<3);

// end of pipeline stage
_d__full_fsm___pip_19_1_2 = 1;
_d__idx_fsm___pip_19_1_2 = _t__stall_fsm___pip_19_1_2 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_19_1_2 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
if (_q__idx_fsm___pip_19_1_2 == 1  ) begin
_d___pip_19_1_2___stage___block_29_R = _c___stage___block_29_R;
end else begin
_d___pip_19_1_2___stage___block_29_R = _q___pip_19_1_2___stage___block_29_R;
end
if (_q__idx_fsm___pip_19_1_2 == 1  ) begin
_d___pip_19_1_2___stage___block_29_h = _t___stage___block_29_h;
end else begin
_d___pip_19_1_2___stage___block_29_h = _q___pip_19_1_2___stage___block_29_h;
end
if (_q__idx_fsm___pip_19_1_2 == 1  ) begin
_d___pip_19_1_2___stage___block_29_t = _t___stage___block_29_t;
end else begin
_d___pip_19_1_2___stage___block_29_t = _q___pip_19_1_2___stage___block_29_t;
end
if (_q__idx_fsm___pip_19_1_2 == 1  ) begin
_d___pip_19_1_2___stage___block_29_B = _c___stage___block_29_B;
end else begin
_d___pip_19_1_2___stage___block_29_B = _q___pip_19_1_2___stage___block_29_B;
end
// -------- stage 3
(* full_case *)
case (_q__idx_fsm___pip_19_1_3)
1: begin
// __stage___block_30
_t___stage___block_30_p = ($signed(_q___pip_19_1_3___stage___block_29_t)*_q___pip_19_1_3___stage___block_28_u)>>>7;

_t___stage___block_30_q = ($signed(_q___pip_19_1_3___stage___block_29_t)*_q___pip_19_1_3___stage___block_28_v)>>>7;

// end of pipeline stage
_d__full_fsm___pip_19_1_3 = 1;
_d__idx_fsm___pip_19_1_3 = _t__stall_fsm___pip_19_1_3 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_19_1_3 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
if (_q__idx_fsm___pip_19_1_3 == 1  ) begin
_d___pip_19_1_3___stage___block_30_q = _t___stage___block_30_q;
end else begin
_d___pip_19_1_3___stage___block_30_q = _q___pip_19_1_3___stage___block_30_q;
end
if (_q__idx_fsm___pip_19_1_3 == 1  ) begin
_d___pip_19_1_3___stage___block_30_p = _t___stage___block_30_p;
end else begin
_d___pip_19_1_3___stage___block_30_p = _q___pip_19_1_3___stage___block_30_p;
end
// -------- stage 4
(* full_case *)
case (_q__idx_fsm___pip_19_1_4)
1: begin
// __stage___block_31
_t___stage___block_31_w = 18+(((_q___pip_19_1_4___stage___block_30_p*5-_q___pip_19_1_4___stage___block_30_q*13))>>>9);

// end of pipeline stage
_d__full_fsm___pip_19_1_4 = 1;
_d__idx_fsm___pip_19_1_4 = _t__stall_fsm___pip_19_1_4 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_19_1_4 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
if (_q__idx_fsm___pip_19_1_4 == 1  ) begin
_d___pip_19_1_4___stage___block_31_w = _t___stage___block_31_w;
end else begin
_d___pip_19_1_4___stage___block_31_w = _q___pip_19_1_4___stage___block_31_w;
end
// -------- stage 5
(* full_case *)
case (_q__idx_fsm___pip_19_1_5)
1: begin
// __stage___block_32
if (_q___pip_19_1_5___stage___block_31_w>0) begin
// __block_33
// __block_35
_d___pip_19_1_5___stage___block_29_R = _q___pip_19_1_5___stage___block_29_R+_q___pip_19_1_5___stage___block_31_w*_q___pip_19_1_5___stage___block_31_w;

// __block_36
_t__1stdisable_fsm___pip_19_1_0 = 1;
end else begin
// __block_34
_t__1stdisable_fsm___pip_19_1_0 = 1;
end
// 'after'
// __block_37
// end of pipeline stage
_d__full_fsm___pip_19_1_5 = 1;
_d__idx_fsm___pip_19_1_5 = _t__stall_fsm___pip_19_1_5 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_19_1_5 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 6
(* full_case *)
case (_q__idx_fsm___pip_19_1_6)
1: begin
// __stage___block_38
_t___stage___block_38_o = _q___pip_19_1_6___stage___block_30_q+900;

_d___pip_19_1_6___stage___block_29_R = (_q___pip_19_1_6___stage___block_29_R*_t___stage___block_38_o)>>>$signed(12);

_d___pip_19_1_6___stage___block_29_B = (_q___pip_19_1_6___stage___block_29_B*_t___stage___block_38_o)>>>$signed(12);

// end of pipeline stage
_d__full_fsm___pip_19_1_6 = 1;
_d__idx_fsm___pip_19_1_6 = _t__stall_fsm___pip_19_1_6 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_19_1_6 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 7
(* full_case *)
case (_q__idx_fsm___pip_19_1_7)
1: begin
// __stage___block_39
_t___stage___block_39_w = (_q___pip_19_1_7___stage___block_30_p+_q___pip_19_1_7___stage___block_30_q)>>>$signed(3);

if (_q___pip_19_1_7___stage___block_30_p>-_q___pip_19_1_7___stage___block_30_q) begin
// __block_40
// __block_42
_t___stage___block_39_R_s = _q___pip_19_1_7___stage___block_29_R+_t___stage___block_39_w;

_t___stage___block_39_B_s = _q___pip_19_1_7___stage___block_29_B+_t___stage___block_39_w;

// __block_43
_t__1stdisable_fsm___pip_19_1_0 = 1;
end else begin
// __block_41
// __block_44
_t___stage___block_39_R_s = _q___pip_19_1_7___stage___block_29_R;

_t___stage___block_39_B_s = _q___pip_19_1_7___stage___block_29_B;

// __block_45
_t__1stdisable_fsm___pip_19_1_0 = 1;
end
// 'after'
// __block_46
// end of pipeline stage
_d__full_fsm___pip_19_1_7 = 1;
_d__idx_fsm___pip_19_1_7 = _t__stall_fsm___pip_19_1_7 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_19_1_7 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
if (_q__idx_fsm___pip_19_1_7 == 1  ) begin
_d___pip_19_1_7___stage___block_39_R_s = _t___stage___block_39_R_s;
end else begin
_d___pip_19_1_7___stage___block_39_R_s = _q___pip_19_1_7___stage___block_39_R_s;
end
if (_q__idx_fsm___pip_19_1_7 == 1  ) begin
_d___pip_19_1_7___stage___block_39_B_s = _t___stage___block_39_B_s;
end else begin
_d___pip_19_1_7___stage___block_39_B_s = _q___pip_19_1_7___stage___block_39_B_s;
end
// -------- stage 8
(* full_case *)
case (_q__idx_fsm___pip_19_1_8)
1: begin
// __stage___block_47
// var inits
// --
_t___stage___block_47_R = 150+(_q___pip_19_1_8___stage___block_28_v<<1);

_t___stage___block_47_p = _q___pip_19_1_8___stage___block_29_h+(_q___pip_19_1_8___stage___block_28_v2<<3);

_t___stage___block_47_c = 240*(-_q___pip_19_1_8___stage___block_28_v);

// end of pipeline stage
_d__full_fsm___pip_19_1_8 = 1;
_d__idx_fsm___pip_19_1_8 = _t__stall_fsm___pip_19_1_8 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_19_1_8 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
if (_q__idx_fsm___pip_19_1_8 == 1  ) begin
_d___pip_19_1_8___stage___block_47_p = _t___stage___block_47_p;
end else begin
_d___pip_19_1_8___stage___block_47_p = _q___pip_19_1_8___stage___block_47_p;
end
if (_q__idx_fsm___pip_19_1_8 == 1  ) begin
_d___pip_19_1_8___stage___block_47_B = _c___stage___block_47_B;
end else begin
_d___pip_19_1_8___stage___block_47_B = _q___pip_19_1_8___stage___block_47_B;
end
if (_q__idx_fsm___pip_19_1_8 == 1  ) begin
_d___pip_19_1_8___stage___block_47_R = _t___stage___block_47_R;
end else begin
_d___pip_19_1_8___stage___block_47_R = _q___pip_19_1_8___stage___block_47_R;
end
if (_q__idx_fsm___pip_19_1_8 == 1  ) begin
_d___pip_19_1_8___stage___block_47_c = _t___stage___block_47_c;
end else begin
_d___pip_19_1_8___stage___block_47_c = _q___pip_19_1_8___stage___block_47_c;
end
// -------- stage 9
(* full_case *)
case (_q__idx_fsm___pip_19_1_9)
1: begin
// __stage___block_48
_d___pip_19_1_9___stage___block_47_c = _q___pip_19_1_9___stage___block_47_c-_q___pip_19_1_9___stage___block_47_p;

// end of pipeline stage
_d__full_fsm___pip_19_1_9 = 1;
_d__idx_fsm___pip_19_1_9 = _t__stall_fsm___pip_19_1_9 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_19_1_9 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 10
(* full_case *)
case (_q__idx_fsm___pip_19_1_10)
1: begin
// __stage___block_49
_t___stage___block_49_o1 = (25*_q___pip_19_1_10___stage___block_47_c)>>3;

// end of pipeline stage
_d__full_fsm___pip_19_1_10 = 1;
_d__idx_fsm___pip_19_1_10 = _t__stall_fsm___pip_19_1_10 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_19_1_10 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
if (_q__idx_fsm___pip_19_1_10 == 1  ) begin
_d___pip_19_1_10___stage___block_49_o1 = _t___stage___block_49_o1;
end else begin
_d___pip_19_1_10___stage___block_49_o1 = _q___pip_19_1_10___stage___block_49_o1;
end
// -------- stage 11
(* full_case *)
case (_q__idx_fsm___pip_19_1_11)
1: begin
// __stage___block_50
_t___stage___block_50_o_t1 = (7840-_q___pip_19_1_11___stage___block_49_o1);

// end of pipeline stage
_d__full_fsm___pip_19_1_11 = 1;
_d__idx_fsm___pip_19_1_11 = _t__stall_fsm___pip_19_1_11 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_19_1_11 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
if (_q__idx_fsm___pip_19_1_11 == 1  ) begin
_d___pip_19_1_11___stage___block_50_o_t1 = _t___stage___block_50_o_t1;
end else begin
_d___pip_19_1_11___stage___block_50_o_t1 = _q___pip_19_1_11___stage___block_50_o_t1;
end
// -------- stage 12
(* full_case *)
case (_q__idx_fsm___pip_19_1_12)
1: begin
// __stage___block_51
_t___stage___block_51_o_t2 = _q___pip_19_1_12___stage___block_47_c*_q___pip_19_1_12___stage___block_50_o_t1;

// end of pipeline stage
_d__full_fsm___pip_19_1_12 = 1;
_d__idx_fsm___pip_19_1_12 = _t__stall_fsm___pip_19_1_12 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_19_1_12 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
if (_q__idx_fsm___pip_19_1_12 == 1  ) begin
_d___pip_19_1_12___stage___block_51_o_t2 = _t___stage___block_51_o_t2;
end else begin
_d___pip_19_1_12___stage___block_51_o_t2 = _q___pip_19_1_12___stage___block_51_o_t2;
end
// -------- stage 13
(* full_case *)
case (_q__idx_fsm___pip_19_1_13)
1: begin
// __stage___block_52
_t___stage___block_52_o = (_q___pip_19_1_13___stage___block_51_o_t2>>>9)-8560;

// end of pipeline stage
_d__full_fsm___pip_19_1_13 = 1;
_d__idx_fsm___pip_19_1_13 = _t__stall_fsm___pip_19_1_13 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_19_1_13 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
if (_q__idx_fsm___pip_19_1_13 == 1  ) begin
_d___pip_19_1_13___stage___block_52_o = _t___stage___block_52_o;
end else begin
_d___pip_19_1_13___stage___block_52_o = _q___pip_19_1_13___stage___block_52_o;
end
// -------- stage 14
(* full_case *)
case (_q__idx_fsm___pip_19_1_14)
1: begin
// __stage___block_53
if (_q___pip_19_1_14___stage___block_47_c>1200) begin
// __block_54
// __block_56
_d___pip_19_1_14___stage___block_47_R = (_q___pip_19_1_14___stage___block_47_R*_q___pip_19_1_14___stage___block_52_o)>>10;

_t___stage___block_53_B_g = (_q___pip_19_1_14___stage___block_47_B*_q___pip_19_1_14___stage___block_52_o)>>10;

// __block_57
_t__1stdisable_fsm___pip_19_1_0 = 1;
end else begin
// __block_55
// __block_58
_t___stage___block_53_B_g = _q___pip_19_1_14___stage___block_47_B;

// __block_59
_t__1stdisable_fsm___pip_19_1_0 = 1;
end
// 'after'
// __block_60
// end of pipeline stage
_d__full_fsm___pip_19_1_14 = 1;
_d__idx_fsm___pip_19_1_14 = _t__stall_fsm___pip_19_1_14 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_19_1_14 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
if (_q__idx_fsm___pip_19_1_14 == 1  ) begin
_d___pip_19_1_14___stage___block_53_B_g = _t___stage___block_53_B_g;
end else begin
_d___pip_19_1_14___stage___block_53_B_g = _q___pip_19_1_14___stage___block_53_B_g;
end
// -------- stage 15
(* full_case *)
case (_q__idx_fsm___pip_19_1_15)
1: begin
// __stage___block_61
_t___stage___block_61_r = _q___pip_19_1_15___stage___block_47_c+_q___pip_19_1_15___stage___block_28_u*_q___pip_19_1_15___stage___block_28_v;

_t___stage___block_61_d = 3200-_q___pip_19_1_15___stage___block_29_h-(_t___stage___block_61_r<<<1);

// end of pipeline stage
_d__full_fsm___pip_19_1_15 = 1;
_d__idx_fsm___pip_19_1_15 = _t__stall_fsm___pip_19_1_15 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_19_1_15 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
if (_q__idx_fsm___pip_19_1_15 == 1  ) begin
_d___pip_19_1_15___stage___block_61_d = _t___stage___block_61_d;
end else begin
_d___pip_19_1_15___stage___block_61_d = _q___pip_19_1_15___stage___block_61_d;
end
// -------- stage 16
(* full_case *)
case (_q__idx_fsm___pip_19_1_16)
1: begin
// __stage___block_62
if (_q___pip_19_1_16___stage___block_61_d>0) begin
// __block_63
// __block_65
_t___stage___block_62_R_g = _q___pip_19_1_16___stage___block_47_R+_q___pip_19_1_16___stage___block_61_d;

// __block_66
_t__1stdisable_fsm___pip_19_1_0 = 1;
end else begin
// __block_64
// __block_67
_t___stage___block_62_R_g = _q___pip_19_1_16___stage___block_47_R;

// __block_68
_t__1stdisable_fsm___pip_19_1_0 = 1;
end
// 'after'
// __block_69
// end of pipeline stage
_d__full_fsm___pip_19_1_16 = 1;
_d__idx_fsm___pip_19_1_16 = _t__stall_fsm___pip_19_1_16 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_19_1_16 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
if (_q__idx_fsm___pip_19_1_16 == 1  ) begin
_d___pip_19_1_16___stage___block_62_R_g = _t___stage___block_62_R_g;
end else begin
_d___pip_19_1_16___stage___block_62_R_g = _q___pip_19_1_16___stage___block_62_R_g;
end
// -------- stage 17
(* full_case *)
case (_q__idx_fsm___pip_19_1_17)
1: begin
// __stage___block_70
_t___stage___block_70_c = _q___pip_19_1_17___stage___block_27_x+(_q___pip_19_1_17___stage___block_27_y<<2);

_t___stage___block_70_R_k = 132+_t___stage___block_70_c;

_t___stage___block_70_B_k = 192+_t___stage___block_70_c;

// end of pipeline stage
_d__full_fsm___pip_19_1_17 = 1;
_d__idx_fsm___pip_19_1_17 = _t__stall_fsm___pip_19_1_17 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_19_1_17 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
if (_q__idx_fsm___pip_19_1_17 == 1  ) begin
_d___pip_19_1_17___stage___block_70_B_k = _t___stage___block_70_B_k;
end else begin
_d___pip_19_1_17___stage___block_70_B_k = _q___pip_19_1_17___stage___block_70_B_k;
end
if (_q__idx_fsm___pip_19_1_17 == 1  ) begin
_d___pip_19_1_17___stage___block_70_R_k = _t___stage___block_70_R_k;
end else begin
_d___pip_19_1_17___stage___block_70_R_k = _q___pip_19_1_17___stage___block_70_R_k;
end
// -------- stage 18
(* full_case *)
case (_q__idx_fsm___pip_19_1_18)
1: begin
// __stage___block_71
if (_q___pip_19_1_18___stage___block_29_h<200) begin
// __block_72
// __block_74
_d___pip_19_1_18___stage___block_47_R = _q___pip_19_1_18___stage___block_39_R_s;

_d___pip_19_1_18___stage___block_47_B = _q___pip_19_1_18___stage___block_39_B_s;

// __block_75
_t__1stdisable_fsm___pip_19_1_0 = 1;
end else begin
// __block_73
// __block_76
if (_q___pip_19_1_18___stage___block_28_v<0) begin
// __block_77
// __block_79
_d___pip_19_1_18___stage___block_47_R = _q___pip_19_1_18___stage___block_62_R_g;

_d___pip_19_1_18___stage___block_47_B = _q___pip_19_1_18___stage___block_53_B_g;

// __block_80
_t__1stdisable_fsm___pip_19_1_0 = 1;
end else begin
// __block_78
// __block_81
_d___pip_19_1_18___stage___block_47_R = _q___pip_19_1_18___stage___block_70_R_k;

_d___pip_19_1_18___stage___block_47_B = _q___pip_19_1_18___stage___block_70_B_k;

// __block_82
_t__1stdisable_fsm___pip_19_1_0 = 1;
end
// 'after'
// __block_83
// __block_84
_t__1stdisable_fsm___pip_19_1_0 = 1;
end
// 'after'
// __block_85
// end of pipeline stage
_d__full_fsm___pip_19_1_18 = 1;
_d__idx_fsm___pip_19_1_18 = _t__stall_fsm___pip_19_1_18 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_19_1_18 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 19
(* full_case *)
case (_q__idx_fsm___pip_19_1_19)
1: begin
// __stage___block_86
_t___stage___block_86_r = _q___pip_19_1_19___stage___block_47_R<255 ? _q___pip_19_1_19___stage___block_47_R:255;

_t___stage___block_86_b = _q___pip_19_1_19___stage___block_47_B<255 ? _q___pip_19_1_19___stage___block_47_B:255;

_t___stage___block_86_G = (_t___stage___block_86_r*11+5*_t___stage___block_86_b)>>4;

_t___stage___block_86_g = _t___stage___block_86_G<255 ? _t___stage___block_86_G:255;

// end of pipeline stage
_d__full_fsm___pip_19_1_19 = 1;
_d__idx_fsm___pip_19_1_19 = _t__stall_fsm___pip_19_1_19 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_19_1_19 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
if (_q__idx_fsm___pip_19_1_19 == 1  ) begin
_d___pip_19_1_19___stage___block_86_r = _t___stage___block_86_r;
end else begin
_d___pip_19_1_19___stage___block_86_r = _q___pip_19_1_19___stage___block_86_r;
end
if (_q__idx_fsm___pip_19_1_19 == 1  ) begin
_d___pip_19_1_19___stage___block_86_g = _t___stage___block_86_g;
end else begin
_d___pip_19_1_19___stage___block_86_g = _q___pip_19_1_19___stage___block_86_g;
end
if (_q__idx_fsm___pip_19_1_19 == 1  ) begin
_d___pip_19_1_19___stage___block_86_b = _t___stage___block_86_b;
end else begin
_d___pip_19_1_19___stage___block_86_b = _q___pip_19_1_19___stage___block_86_b;
end
// -------- stage 20
(* full_case *)
case (_q__idx_fsm___pip_19_1_20)
1: begin
// __stage___block_87
if (_q___pip_19_1_20___block_20_px<640) begin
// __block_88
// __block_90
_t_pix_r = _q___pip_19_1_20___stage___block_86_r;

_t_pix_g = _q___pip_19_1_20___stage___block_86_g;

_t_pix_b = _q___pip_19_1_20___stage___block_86_b;

// __block_91
end else begin
// __block_89
end
// 'after'
// __block_92
// end of last pipeline stage
_d__full_fsm___pip_19_1_20 = 1;
_d__idx_fsm___pip_19_1_20 = _t__stall_fsm___pip_19_1_20 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_19_1_20 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// ===================
// _always_post
// pipeline stage triggers
if ( (_ready_fsm___pip_19_1_20)   && (_d__full_fsm___pip_19_1_19)   && (!_t__stall_fsm___pip_19_1_19)   && (!_t__stall_fsm___pip_19_1_20)   ) begin
   _d__idx_fsm___pip_19_1_20 = 1;
   _d__full_fsm___pip_19_1_19 = 0;
end
if ( (_ready_fsm___pip_19_1_19)   && (_d__full_fsm___pip_19_1_18)   && (!_t__stall_fsm___pip_19_1_18)   && (!_d__full_fsm___pip_19_1_19)   && (!_t__stall_fsm___pip_19_1_19)   ) begin
   _d__idx_fsm___pip_19_1_19 = 1;
   _d__full_fsm___pip_19_1_18 = 0;
end
if ( (_ready_fsm___pip_19_1_18)   && (_d__full_fsm___pip_19_1_17)   && (!_t__stall_fsm___pip_19_1_17)   && (!_d__full_fsm___pip_19_1_18)   && (!_t__stall_fsm___pip_19_1_18)   ) begin
   _d__idx_fsm___pip_19_1_18 = 1;
   _d__full_fsm___pip_19_1_17 = 0;
end
if ( (_ready_fsm___pip_19_1_17)   && (_d__full_fsm___pip_19_1_16)   && (!_t__stall_fsm___pip_19_1_16)   && (!_d__full_fsm___pip_19_1_17)   && (!_t__stall_fsm___pip_19_1_17)   ) begin
   _d__idx_fsm___pip_19_1_17 = 1;
   _d__full_fsm___pip_19_1_16 = 0;
end
if ( (_ready_fsm___pip_19_1_16)   && (_d__full_fsm___pip_19_1_15)   && (!_t__stall_fsm___pip_19_1_15)   && (!_d__full_fsm___pip_19_1_16)   && (!_t__stall_fsm___pip_19_1_16)   ) begin
   _d__idx_fsm___pip_19_1_16 = 1;
   _d__full_fsm___pip_19_1_15 = 0;
end
if ( (_ready_fsm___pip_19_1_15)   && (_d__full_fsm___pip_19_1_14)   && (!_t__stall_fsm___pip_19_1_14)   && (!_d__full_fsm___pip_19_1_15)   && (!_t__stall_fsm___pip_19_1_15)   ) begin
   _d__idx_fsm___pip_19_1_15 = 1;
   _d__full_fsm___pip_19_1_14 = 0;
end
if ( (_ready_fsm___pip_19_1_14)   && (_d__full_fsm___pip_19_1_13)   && (!_t__stall_fsm___pip_19_1_13)   && (!_d__full_fsm___pip_19_1_14)   && (!_t__stall_fsm___pip_19_1_14)   ) begin
   _d__idx_fsm___pip_19_1_14 = 1;
   _d__full_fsm___pip_19_1_13 = 0;
end
if ( (_ready_fsm___pip_19_1_13)   && (_d__full_fsm___pip_19_1_12)   && (!_t__stall_fsm___pip_19_1_12)   && (!_d__full_fsm___pip_19_1_13)   && (!_t__stall_fsm___pip_19_1_13)   ) begin
   _d__idx_fsm___pip_19_1_13 = 1;
   _d__full_fsm___pip_19_1_12 = 0;
end
if ( (_ready_fsm___pip_19_1_12)   && (_d__full_fsm___pip_19_1_11)   && (!_t__stall_fsm___pip_19_1_11)   && (!_d__full_fsm___pip_19_1_12)   && (!_t__stall_fsm___pip_19_1_12)   ) begin
   _d__idx_fsm___pip_19_1_12 = 1;
   _d__full_fsm___pip_19_1_11 = 0;
end
if ( (_ready_fsm___pip_19_1_11)   && (_d__full_fsm___pip_19_1_10)   && (!_t__stall_fsm___pip_19_1_10)   && (!_d__full_fsm___pip_19_1_11)   && (!_t__stall_fsm___pip_19_1_11)   ) begin
   _d__idx_fsm___pip_19_1_11 = 1;
   _d__full_fsm___pip_19_1_10 = 0;
end
if ( (_ready_fsm___pip_19_1_10)   && (_d__full_fsm___pip_19_1_9)   && (!_t__stall_fsm___pip_19_1_9)   && (!_d__full_fsm___pip_19_1_10)   && (!_t__stall_fsm___pip_19_1_10)   ) begin
   _d__idx_fsm___pip_19_1_10 = 1;
   _d__full_fsm___pip_19_1_9 = 0;
end
if ( (_ready_fsm___pip_19_1_9)   && (_d__full_fsm___pip_19_1_8)   && (!_t__stall_fsm___pip_19_1_8)   && (!_d__full_fsm___pip_19_1_9)   && (!_t__stall_fsm___pip_19_1_9)   ) begin
   _d__idx_fsm___pip_19_1_9 = 1;
   _d__full_fsm___pip_19_1_8 = 0;
end
if ( (_ready_fsm___pip_19_1_8)   && (_d__full_fsm___pip_19_1_7)   && (!_t__stall_fsm___pip_19_1_7)   && (!_d__full_fsm___pip_19_1_8)   && (!_t__stall_fsm___pip_19_1_8)   ) begin
   _d__idx_fsm___pip_19_1_8 = 1;
   _d__full_fsm___pip_19_1_7 = 0;
end
if ( (_ready_fsm___pip_19_1_7)   && (_d__full_fsm___pip_19_1_6)   && (!_t__stall_fsm___pip_19_1_6)   && (!_d__full_fsm___pip_19_1_7)   && (!_t__stall_fsm___pip_19_1_7)   ) begin
   _d__idx_fsm___pip_19_1_7 = 1;
   _d__full_fsm___pip_19_1_6 = 0;
end
if ( (_ready_fsm___pip_19_1_6)   && (_d__full_fsm___pip_19_1_5)   && (!_t__stall_fsm___pip_19_1_5)   && (!_d__full_fsm___pip_19_1_6)   && (!_t__stall_fsm___pip_19_1_6)   ) begin
   _d__idx_fsm___pip_19_1_6 = 1;
   _d__full_fsm___pip_19_1_5 = 0;
end
if ( (_ready_fsm___pip_19_1_5)   && (_d__full_fsm___pip_19_1_4)   && (!_t__stall_fsm___pip_19_1_4)   && (!_d__full_fsm___pip_19_1_5)   && (!_t__stall_fsm___pip_19_1_5)   ) begin
   _d__idx_fsm___pip_19_1_5 = 1;
   _d__full_fsm___pip_19_1_4 = 0;
end
if ( (_ready_fsm___pip_19_1_4)   && (_d__full_fsm___pip_19_1_3)   && (!_t__stall_fsm___pip_19_1_3)   && (!_d__full_fsm___pip_19_1_4)   && (!_t__stall_fsm___pip_19_1_4)   ) begin
   _d__idx_fsm___pip_19_1_4 = 1;
   _d__full_fsm___pip_19_1_3 = 0;
end
if ( (_ready_fsm___pip_19_1_3)   && (_d__full_fsm___pip_19_1_2)   && (!_t__stall_fsm___pip_19_1_2)   && (!_d__full_fsm___pip_19_1_3)   && (!_t__stall_fsm___pip_19_1_3)   ) begin
   _d__idx_fsm___pip_19_1_3 = 1;
   _d__full_fsm___pip_19_1_2 = 0;
end
if ( (_ready_fsm___pip_19_1_2)   && (_d__full_fsm___pip_19_1_1)   && (!_t__stall_fsm___pip_19_1_1)   && (!_d__full_fsm___pip_19_1_2)   && (!_t__stall_fsm___pip_19_1_2)   ) begin
   _d__idx_fsm___pip_19_1_2 = 1;
   _d__full_fsm___pip_19_1_1 = 0;
end
if ( (_ready_fsm___pip_19_1_1)   && (_d__full_fsm___pip_19_1_0)   && (!_t__stall_fsm___pip_19_1_0)   && (!_d__full_fsm___pip_19_1_1)   && (!_t__stall_fsm___pip_19_1_1)   ) begin
   _d__idx_fsm___pip_19_1_1 = 1;
   _d__full_fsm___pip_19_1_0 = 0;
end
if ( (_ready_fsm___pip_19_1_0)   && ((( ~_autorun ? 1 : _d__idx_fsm0)) == 6)
  && (!_d__full_fsm___pip_19_1_0)   && (!_t__stall_fsm___pip_19_1_0)   ) begin
   _d__idx_fsm___pip_19_1_0 = 1;
end
end

always @(posedge clock) begin
_q___block_15_wait <= (reset) ? 0 : _d___block_15_wait;
_q___block_20_px <= (reset) ? -1 : _d___block_20_px;
_q___block_20_py <= (reset) ? -1 : _d___block_20_py;
_q___pip_19_1_0___block_20_px <= _d___pip_19_1_0___block_20_px;
_q___pip_19_1_1___block_20_px <= (_d__idx_fsm___pip_19_1_1 == 1 && !_t__stall_fsm___pip_19_1_1) ? _d___pip_19_1_0___block_20_px : _d___pip_19_1_1___block_20_px;
_q___pip_19_1_2___block_20_px <= (_d__idx_fsm___pip_19_1_2 == 1 && !_t__stall_fsm___pip_19_1_2) ? _d___pip_19_1_1___block_20_px : _d___pip_19_1_2___block_20_px;
_q___pip_19_1_3___block_20_px <= (_d__idx_fsm___pip_19_1_3 == 1 && !_t__stall_fsm___pip_19_1_3) ? _d___pip_19_1_2___block_20_px : _d___pip_19_1_3___block_20_px;
_q___pip_19_1_4___block_20_px <= (_d__idx_fsm___pip_19_1_4 == 1 && !_t__stall_fsm___pip_19_1_4) ? _d___pip_19_1_3___block_20_px : _d___pip_19_1_4___block_20_px;
_q___pip_19_1_5___block_20_px <= (_d__idx_fsm___pip_19_1_5 == 1 && !_t__stall_fsm___pip_19_1_5) ? _d___pip_19_1_4___block_20_px : _d___pip_19_1_5___block_20_px;
_q___pip_19_1_6___block_20_px <= (_d__idx_fsm___pip_19_1_6 == 1 && !_t__stall_fsm___pip_19_1_6) ? _d___pip_19_1_5___block_20_px : _d___pip_19_1_6___block_20_px;
_q___pip_19_1_7___block_20_px <= (_d__idx_fsm___pip_19_1_7 == 1 && !_t__stall_fsm___pip_19_1_7) ? _d___pip_19_1_6___block_20_px : _d___pip_19_1_7___block_20_px;
_q___pip_19_1_8___block_20_px <= (_d__idx_fsm___pip_19_1_8 == 1 && !_t__stall_fsm___pip_19_1_8) ? _d___pip_19_1_7___block_20_px : _d___pip_19_1_8___block_20_px;
_q___pip_19_1_9___block_20_px <= (_d__idx_fsm___pip_19_1_9 == 1 && !_t__stall_fsm___pip_19_1_9) ? _d___pip_19_1_8___block_20_px : _d___pip_19_1_9___block_20_px;
_q___pip_19_1_10___block_20_px <= (_d__idx_fsm___pip_19_1_10 == 1 && !_t__stall_fsm___pip_19_1_10) ? _d___pip_19_1_9___block_20_px : _d___pip_19_1_10___block_20_px;
_q___pip_19_1_11___block_20_px <= (_d__idx_fsm___pip_19_1_11 == 1 && !_t__stall_fsm___pip_19_1_11) ? _d___pip_19_1_10___block_20_px : _d___pip_19_1_11___block_20_px;
_q___pip_19_1_12___block_20_px <= (_d__idx_fsm___pip_19_1_12 == 1 && !_t__stall_fsm___pip_19_1_12) ? _d___pip_19_1_11___block_20_px : _d___pip_19_1_12___block_20_px;
_q___pip_19_1_13___block_20_px <= (_d__idx_fsm___pip_19_1_13 == 1 && !_t__stall_fsm___pip_19_1_13) ? _d___pip_19_1_12___block_20_px : _d___pip_19_1_13___block_20_px;
_q___pip_19_1_14___block_20_px <= (_d__idx_fsm___pip_19_1_14 == 1 && !_t__stall_fsm___pip_19_1_14) ? _d___pip_19_1_13___block_20_px : _d___pip_19_1_14___block_20_px;
_q___pip_19_1_15___block_20_px <= (_d__idx_fsm___pip_19_1_15 == 1 && !_t__stall_fsm___pip_19_1_15) ? _d___pip_19_1_14___block_20_px : _d___pip_19_1_15___block_20_px;
_q___pip_19_1_16___block_20_px <= (_d__idx_fsm___pip_19_1_16 == 1 && !_t__stall_fsm___pip_19_1_16) ? _d___pip_19_1_15___block_20_px : _d___pip_19_1_16___block_20_px;
_q___pip_19_1_17___block_20_px <= (_d__idx_fsm___pip_19_1_17 == 1 && !_t__stall_fsm___pip_19_1_17) ? _d___pip_19_1_16___block_20_px : _d___pip_19_1_17___block_20_px;
_q___pip_19_1_18___block_20_px <= (_d__idx_fsm___pip_19_1_18 == 1 && !_t__stall_fsm___pip_19_1_18) ? _d___pip_19_1_17___block_20_px : _d___pip_19_1_18___block_20_px;
_q___pip_19_1_19___block_20_px <= (_d__idx_fsm___pip_19_1_19 == 1 && !_t__stall_fsm___pip_19_1_19) ? _d___pip_19_1_18___block_20_px : _d___pip_19_1_19___block_20_px;
_q___pip_19_1_20___block_20_px <= (_d__idx_fsm___pip_19_1_20 == 1 && !_t__stall_fsm___pip_19_1_20) ? _d___pip_19_1_19___block_20_px : _d___pip_19_1_20___block_20_px;
_q___pip_19_1_0___stage___block_27_x <= _d___pip_19_1_0___stage___block_27_x;
_q___pip_19_1_1___stage___block_27_x <= (_d__idx_fsm___pip_19_1_1 == 1 && !_t__stall_fsm___pip_19_1_1) ? _d___pip_19_1_0___stage___block_27_x : _d___pip_19_1_1___stage___block_27_x;
_q___pip_19_1_2___stage___block_27_x <= (_d__idx_fsm___pip_19_1_2 == 1 && !_t__stall_fsm___pip_19_1_2) ? _d___pip_19_1_1___stage___block_27_x : _d___pip_19_1_2___stage___block_27_x;
_q___pip_19_1_3___stage___block_27_x <= (_d__idx_fsm___pip_19_1_3 == 1 && !_t__stall_fsm___pip_19_1_3) ? _d___pip_19_1_2___stage___block_27_x : _d___pip_19_1_3___stage___block_27_x;
_q___pip_19_1_4___stage___block_27_x <= (_d__idx_fsm___pip_19_1_4 == 1 && !_t__stall_fsm___pip_19_1_4) ? _d___pip_19_1_3___stage___block_27_x : _d___pip_19_1_4___stage___block_27_x;
_q___pip_19_1_5___stage___block_27_x <= (_d__idx_fsm___pip_19_1_5 == 1 && !_t__stall_fsm___pip_19_1_5) ? _d___pip_19_1_4___stage___block_27_x : _d___pip_19_1_5___stage___block_27_x;
_q___pip_19_1_6___stage___block_27_x <= (_d__idx_fsm___pip_19_1_6 == 1 && !_t__stall_fsm___pip_19_1_6) ? _d___pip_19_1_5___stage___block_27_x : _d___pip_19_1_6___stage___block_27_x;
_q___pip_19_1_7___stage___block_27_x <= (_d__idx_fsm___pip_19_1_7 == 1 && !_t__stall_fsm___pip_19_1_7) ? _d___pip_19_1_6___stage___block_27_x : _d___pip_19_1_7___stage___block_27_x;
_q___pip_19_1_8___stage___block_27_x <= (_d__idx_fsm___pip_19_1_8 == 1 && !_t__stall_fsm___pip_19_1_8) ? _d___pip_19_1_7___stage___block_27_x : _d___pip_19_1_8___stage___block_27_x;
_q___pip_19_1_9___stage___block_27_x <= (_d__idx_fsm___pip_19_1_9 == 1 && !_t__stall_fsm___pip_19_1_9) ? _d___pip_19_1_8___stage___block_27_x : _d___pip_19_1_9___stage___block_27_x;
_q___pip_19_1_10___stage___block_27_x <= (_d__idx_fsm___pip_19_1_10 == 1 && !_t__stall_fsm___pip_19_1_10) ? _d___pip_19_1_9___stage___block_27_x : _d___pip_19_1_10___stage___block_27_x;
_q___pip_19_1_11___stage___block_27_x <= (_d__idx_fsm___pip_19_1_11 == 1 && !_t__stall_fsm___pip_19_1_11) ? _d___pip_19_1_10___stage___block_27_x : _d___pip_19_1_11___stage___block_27_x;
_q___pip_19_1_12___stage___block_27_x <= (_d__idx_fsm___pip_19_1_12 == 1 && !_t__stall_fsm___pip_19_1_12) ? _d___pip_19_1_11___stage___block_27_x : _d___pip_19_1_12___stage___block_27_x;
_q___pip_19_1_13___stage___block_27_x <= (_d__idx_fsm___pip_19_1_13 == 1 && !_t__stall_fsm___pip_19_1_13) ? _d___pip_19_1_12___stage___block_27_x : _d___pip_19_1_13___stage___block_27_x;
_q___pip_19_1_14___stage___block_27_x <= (_d__idx_fsm___pip_19_1_14 == 1 && !_t__stall_fsm___pip_19_1_14) ? _d___pip_19_1_13___stage___block_27_x : _d___pip_19_1_14___stage___block_27_x;
_q___pip_19_1_15___stage___block_27_x <= (_d__idx_fsm___pip_19_1_15 == 1 && !_t__stall_fsm___pip_19_1_15) ? _d___pip_19_1_14___stage___block_27_x : _d___pip_19_1_15___stage___block_27_x;
_q___pip_19_1_16___stage___block_27_x <= (_d__idx_fsm___pip_19_1_16 == 1 && !_t__stall_fsm___pip_19_1_16) ? _d___pip_19_1_15___stage___block_27_x : _d___pip_19_1_16___stage___block_27_x;
_q___pip_19_1_17___stage___block_27_x <= (_d__idx_fsm___pip_19_1_17 == 1 && !_t__stall_fsm___pip_19_1_17) ? _d___pip_19_1_16___stage___block_27_x : _d___pip_19_1_17___stage___block_27_x;
_q___pip_19_1_0___stage___block_27_y <= _d___pip_19_1_0___stage___block_27_y;
_q___pip_19_1_1___stage___block_27_y <= (_d__idx_fsm___pip_19_1_1 == 1 && !_t__stall_fsm___pip_19_1_1) ? _d___pip_19_1_0___stage___block_27_y : _d___pip_19_1_1___stage___block_27_y;
_q___pip_19_1_2___stage___block_27_y <= (_d__idx_fsm___pip_19_1_2 == 1 && !_t__stall_fsm___pip_19_1_2) ? _d___pip_19_1_1___stage___block_27_y : _d___pip_19_1_2___stage___block_27_y;
_q___pip_19_1_3___stage___block_27_y <= (_d__idx_fsm___pip_19_1_3 == 1 && !_t__stall_fsm___pip_19_1_3) ? _d___pip_19_1_2___stage___block_27_y : _d___pip_19_1_3___stage___block_27_y;
_q___pip_19_1_4___stage___block_27_y <= (_d__idx_fsm___pip_19_1_4 == 1 && !_t__stall_fsm___pip_19_1_4) ? _d___pip_19_1_3___stage___block_27_y : _d___pip_19_1_4___stage___block_27_y;
_q___pip_19_1_5___stage___block_27_y <= (_d__idx_fsm___pip_19_1_5 == 1 && !_t__stall_fsm___pip_19_1_5) ? _d___pip_19_1_4___stage___block_27_y : _d___pip_19_1_5___stage___block_27_y;
_q___pip_19_1_6___stage___block_27_y <= (_d__idx_fsm___pip_19_1_6 == 1 && !_t__stall_fsm___pip_19_1_6) ? _d___pip_19_1_5___stage___block_27_y : _d___pip_19_1_6___stage___block_27_y;
_q___pip_19_1_7___stage___block_27_y <= (_d__idx_fsm___pip_19_1_7 == 1 && !_t__stall_fsm___pip_19_1_7) ? _d___pip_19_1_6___stage___block_27_y : _d___pip_19_1_7___stage___block_27_y;
_q___pip_19_1_8___stage___block_27_y <= (_d__idx_fsm___pip_19_1_8 == 1 && !_t__stall_fsm___pip_19_1_8) ? _d___pip_19_1_7___stage___block_27_y : _d___pip_19_1_8___stage___block_27_y;
_q___pip_19_1_9___stage___block_27_y <= (_d__idx_fsm___pip_19_1_9 == 1 && !_t__stall_fsm___pip_19_1_9) ? _d___pip_19_1_8___stage___block_27_y : _d___pip_19_1_9___stage___block_27_y;
_q___pip_19_1_10___stage___block_27_y <= (_d__idx_fsm___pip_19_1_10 == 1 && !_t__stall_fsm___pip_19_1_10) ? _d___pip_19_1_9___stage___block_27_y : _d___pip_19_1_10___stage___block_27_y;
_q___pip_19_1_11___stage___block_27_y <= (_d__idx_fsm___pip_19_1_11 == 1 && !_t__stall_fsm___pip_19_1_11) ? _d___pip_19_1_10___stage___block_27_y : _d___pip_19_1_11___stage___block_27_y;
_q___pip_19_1_12___stage___block_27_y <= (_d__idx_fsm___pip_19_1_12 == 1 && !_t__stall_fsm___pip_19_1_12) ? _d___pip_19_1_11___stage___block_27_y : _d___pip_19_1_12___stage___block_27_y;
_q___pip_19_1_13___stage___block_27_y <= (_d__idx_fsm___pip_19_1_13 == 1 && !_t__stall_fsm___pip_19_1_13) ? _d___pip_19_1_12___stage___block_27_y : _d___pip_19_1_13___stage___block_27_y;
_q___pip_19_1_14___stage___block_27_y <= (_d__idx_fsm___pip_19_1_14 == 1 && !_t__stall_fsm___pip_19_1_14) ? _d___pip_19_1_13___stage___block_27_y : _d___pip_19_1_14___stage___block_27_y;
_q___pip_19_1_15___stage___block_27_y <= (_d__idx_fsm___pip_19_1_15 == 1 && !_t__stall_fsm___pip_19_1_15) ? _d___pip_19_1_14___stage___block_27_y : _d___pip_19_1_15___stage___block_27_y;
_q___pip_19_1_16___stage___block_27_y <= (_d__idx_fsm___pip_19_1_16 == 1 && !_t__stall_fsm___pip_19_1_16) ? _d___pip_19_1_15___stage___block_27_y : _d___pip_19_1_16___stage___block_27_y;
_q___pip_19_1_17___stage___block_27_y <= (_d__idx_fsm___pip_19_1_17 == 1 && !_t__stall_fsm___pip_19_1_17) ? _d___pip_19_1_16___stage___block_27_y : _d___pip_19_1_17___stage___block_27_y;
_q___pip_19_1_1___stage___block_28_u <= _d___pip_19_1_1___stage___block_28_u;
_q___pip_19_1_2___stage___block_28_u <= (_d__idx_fsm___pip_19_1_2 == 1 && !_t__stall_fsm___pip_19_1_2) ? _d___pip_19_1_1___stage___block_28_u : _d___pip_19_1_2___stage___block_28_u;
_q___pip_19_1_3___stage___block_28_u <= (_d__idx_fsm___pip_19_1_3 == 1 && !_t__stall_fsm___pip_19_1_3) ? _d___pip_19_1_2___stage___block_28_u : _d___pip_19_1_3___stage___block_28_u;
_q___pip_19_1_4___stage___block_28_u <= (_d__idx_fsm___pip_19_1_4 == 1 && !_t__stall_fsm___pip_19_1_4) ? _d___pip_19_1_3___stage___block_28_u : _d___pip_19_1_4___stage___block_28_u;
_q___pip_19_1_5___stage___block_28_u <= (_d__idx_fsm___pip_19_1_5 == 1 && !_t__stall_fsm___pip_19_1_5) ? _d___pip_19_1_4___stage___block_28_u : _d___pip_19_1_5___stage___block_28_u;
_q___pip_19_1_6___stage___block_28_u <= (_d__idx_fsm___pip_19_1_6 == 1 && !_t__stall_fsm___pip_19_1_6) ? _d___pip_19_1_5___stage___block_28_u : _d___pip_19_1_6___stage___block_28_u;
_q___pip_19_1_7___stage___block_28_u <= (_d__idx_fsm___pip_19_1_7 == 1 && !_t__stall_fsm___pip_19_1_7) ? _d___pip_19_1_6___stage___block_28_u : _d___pip_19_1_7___stage___block_28_u;
_q___pip_19_1_8___stage___block_28_u <= (_d__idx_fsm___pip_19_1_8 == 1 && !_t__stall_fsm___pip_19_1_8) ? _d___pip_19_1_7___stage___block_28_u : _d___pip_19_1_8___stage___block_28_u;
_q___pip_19_1_9___stage___block_28_u <= (_d__idx_fsm___pip_19_1_9 == 1 && !_t__stall_fsm___pip_19_1_9) ? _d___pip_19_1_8___stage___block_28_u : _d___pip_19_1_9___stage___block_28_u;
_q___pip_19_1_10___stage___block_28_u <= (_d__idx_fsm___pip_19_1_10 == 1 && !_t__stall_fsm___pip_19_1_10) ? _d___pip_19_1_9___stage___block_28_u : _d___pip_19_1_10___stage___block_28_u;
_q___pip_19_1_11___stage___block_28_u <= (_d__idx_fsm___pip_19_1_11 == 1 && !_t__stall_fsm___pip_19_1_11) ? _d___pip_19_1_10___stage___block_28_u : _d___pip_19_1_11___stage___block_28_u;
_q___pip_19_1_12___stage___block_28_u <= (_d__idx_fsm___pip_19_1_12 == 1 && !_t__stall_fsm___pip_19_1_12) ? _d___pip_19_1_11___stage___block_28_u : _d___pip_19_1_12___stage___block_28_u;
_q___pip_19_1_13___stage___block_28_u <= (_d__idx_fsm___pip_19_1_13 == 1 && !_t__stall_fsm___pip_19_1_13) ? _d___pip_19_1_12___stage___block_28_u : _d___pip_19_1_13___stage___block_28_u;
_q___pip_19_1_14___stage___block_28_u <= (_d__idx_fsm___pip_19_1_14 == 1 && !_t__stall_fsm___pip_19_1_14) ? _d___pip_19_1_13___stage___block_28_u : _d___pip_19_1_14___stage___block_28_u;
_q___pip_19_1_15___stage___block_28_u <= (_d__idx_fsm___pip_19_1_15 == 1 && !_t__stall_fsm___pip_19_1_15) ? _d___pip_19_1_14___stage___block_28_u : _d___pip_19_1_15___stage___block_28_u;
_q___pip_19_1_1___stage___block_28_u2 <= _d___pip_19_1_1___stage___block_28_u2;
_q___pip_19_1_2___stage___block_28_u2 <= (_d__idx_fsm___pip_19_1_2 == 1 && !_t__stall_fsm___pip_19_1_2) ? _d___pip_19_1_1___stage___block_28_u2 : _d___pip_19_1_2___stage___block_28_u2;
_q___pip_19_1_1___stage___block_28_v <= _d___pip_19_1_1___stage___block_28_v;
_q___pip_19_1_2___stage___block_28_v <= (_d__idx_fsm___pip_19_1_2 == 1 && !_t__stall_fsm___pip_19_1_2) ? _d___pip_19_1_1___stage___block_28_v : _d___pip_19_1_2___stage___block_28_v;
_q___pip_19_1_3___stage___block_28_v <= (_d__idx_fsm___pip_19_1_3 == 1 && !_t__stall_fsm___pip_19_1_3) ? _d___pip_19_1_2___stage___block_28_v : _d___pip_19_1_3___stage___block_28_v;
_q___pip_19_1_4___stage___block_28_v <= (_d__idx_fsm___pip_19_1_4 == 1 && !_t__stall_fsm___pip_19_1_4) ? _d___pip_19_1_3___stage___block_28_v : _d___pip_19_1_4___stage___block_28_v;
_q___pip_19_1_5___stage___block_28_v <= (_d__idx_fsm___pip_19_1_5 == 1 && !_t__stall_fsm___pip_19_1_5) ? _d___pip_19_1_4___stage___block_28_v : _d___pip_19_1_5___stage___block_28_v;
_q___pip_19_1_6___stage___block_28_v <= (_d__idx_fsm___pip_19_1_6 == 1 && !_t__stall_fsm___pip_19_1_6) ? _d___pip_19_1_5___stage___block_28_v : _d___pip_19_1_6___stage___block_28_v;
_q___pip_19_1_7___stage___block_28_v <= (_d__idx_fsm___pip_19_1_7 == 1 && !_t__stall_fsm___pip_19_1_7) ? _d___pip_19_1_6___stage___block_28_v : _d___pip_19_1_7___stage___block_28_v;
_q___pip_19_1_8___stage___block_28_v <= (_d__idx_fsm___pip_19_1_8 == 1 && !_t__stall_fsm___pip_19_1_8) ? _d___pip_19_1_7___stage___block_28_v : _d___pip_19_1_8___stage___block_28_v;
_q___pip_19_1_9___stage___block_28_v <= (_d__idx_fsm___pip_19_1_9 == 1 && !_t__stall_fsm___pip_19_1_9) ? _d___pip_19_1_8___stage___block_28_v : _d___pip_19_1_9___stage___block_28_v;
_q___pip_19_1_10___stage___block_28_v <= (_d__idx_fsm___pip_19_1_10 == 1 && !_t__stall_fsm___pip_19_1_10) ? _d___pip_19_1_9___stage___block_28_v : _d___pip_19_1_10___stage___block_28_v;
_q___pip_19_1_11___stage___block_28_v <= (_d__idx_fsm___pip_19_1_11 == 1 && !_t__stall_fsm___pip_19_1_11) ? _d___pip_19_1_10___stage___block_28_v : _d___pip_19_1_11___stage___block_28_v;
_q___pip_19_1_12___stage___block_28_v <= (_d__idx_fsm___pip_19_1_12 == 1 && !_t__stall_fsm___pip_19_1_12) ? _d___pip_19_1_11___stage___block_28_v : _d___pip_19_1_12___stage___block_28_v;
_q___pip_19_1_13___stage___block_28_v <= (_d__idx_fsm___pip_19_1_13 == 1 && !_t__stall_fsm___pip_19_1_13) ? _d___pip_19_1_12___stage___block_28_v : _d___pip_19_1_13___stage___block_28_v;
_q___pip_19_1_14___stage___block_28_v <= (_d__idx_fsm___pip_19_1_14 == 1 && !_t__stall_fsm___pip_19_1_14) ? _d___pip_19_1_13___stage___block_28_v : _d___pip_19_1_14___stage___block_28_v;
_q___pip_19_1_15___stage___block_28_v <= (_d__idx_fsm___pip_19_1_15 == 1 && !_t__stall_fsm___pip_19_1_15) ? _d___pip_19_1_14___stage___block_28_v : _d___pip_19_1_15___stage___block_28_v;
_q___pip_19_1_16___stage___block_28_v <= (_d__idx_fsm___pip_19_1_16 == 1 && !_t__stall_fsm___pip_19_1_16) ? _d___pip_19_1_15___stage___block_28_v : _d___pip_19_1_16___stage___block_28_v;
_q___pip_19_1_17___stage___block_28_v <= (_d__idx_fsm___pip_19_1_17 == 1 && !_t__stall_fsm___pip_19_1_17) ? _d___pip_19_1_16___stage___block_28_v : _d___pip_19_1_17___stage___block_28_v;
_q___pip_19_1_18___stage___block_28_v <= (_d__idx_fsm___pip_19_1_18 == 1 && !_t__stall_fsm___pip_19_1_18) ? _d___pip_19_1_17___stage___block_28_v : _d___pip_19_1_18___stage___block_28_v;
_q___pip_19_1_1___stage___block_28_v2 <= _d___pip_19_1_1___stage___block_28_v2;
_q___pip_19_1_2___stage___block_28_v2 <= (_d__idx_fsm___pip_19_1_2 == 1 && !_t__stall_fsm___pip_19_1_2) ? _d___pip_19_1_1___stage___block_28_v2 : _d___pip_19_1_2___stage___block_28_v2;
_q___pip_19_1_3___stage___block_28_v2 <= (_d__idx_fsm___pip_19_1_3 == 1 && !_t__stall_fsm___pip_19_1_3) ? _d___pip_19_1_2___stage___block_28_v2 : _d___pip_19_1_3___stage___block_28_v2;
_q___pip_19_1_4___stage___block_28_v2 <= (_d__idx_fsm___pip_19_1_4 == 1 && !_t__stall_fsm___pip_19_1_4) ? _d___pip_19_1_3___stage___block_28_v2 : _d___pip_19_1_4___stage___block_28_v2;
_q___pip_19_1_5___stage___block_28_v2 <= (_d__idx_fsm___pip_19_1_5 == 1 && !_t__stall_fsm___pip_19_1_5) ? _d___pip_19_1_4___stage___block_28_v2 : _d___pip_19_1_5___stage___block_28_v2;
_q___pip_19_1_6___stage___block_28_v2 <= (_d__idx_fsm___pip_19_1_6 == 1 && !_t__stall_fsm___pip_19_1_6) ? _d___pip_19_1_5___stage___block_28_v2 : _d___pip_19_1_6___stage___block_28_v2;
_q___pip_19_1_7___stage___block_28_v2 <= (_d__idx_fsm___pip_19_1_7 == 1 && !_t__stall_fsm___pip_19_1_7) ? _d___pip_19_1_6___stage___block_28_v2 : _d___pip_19_1_7___stage___block_28_v2;
_q___pip_19_1_8___stage___block_28_v2 <= (_d__idx_fsm___pip_19_1_8 == 1 && !_t__stall_fsm___pip_19_1_8) ? _d___pip_19_1_7___stage___block_28_v2 : _d___pip_19_1_8___stage___block_28_v2;
_q___pip_19_1_2___stage___block_29_B <= _d___pip_19_1_2___stage___block_29_B;
_q___pip_19_1_3___stage___block_29_B <= (_d__idx_fsm___pip_19_1_3 == 1 && !_t__stall_fsm___pip_19_1_3) ? _d___pip_19_1_2___stage___block_29_B : _d___pip_19_1_3___stage___block_29_B;
_q___pip_19_1_4___stage___block_29_B <= (_d__idx_fsm___pip_19_1_4 == 1 && !_t__stall_fsm___pip_19_1_4) ? _d___pip_19_1_3___stage___block_29_B : _d___pip_19_1_4___stage___block_29_B;
_q___pip_19_1_5___stage___block_29_B <= (_d__idx_fsm___pip_19_1_5 == 1 && !_t__stall_fsm___pip_19_1_5) ? _d___pip_19_1_4___stage___block_29_B : _d___pip_19_1_5___stage___block_29_B;
_q___pip_19_1_6___stage___block_29_B <= (_d__idx_fsm___pip_19_1_6 == 1 && !_t__stall_fsm___pip_19_1_6) ? _d___pip_19_1_5___stage___block_29_B : _d___pip_19_1_6___stage___block_29_B;
_q___pip_19_1_7___stage___block_29_B <= (_d__idx_fsm___pip_19_1_7 == 1 && !_t__stall_fsm___pip_19_1_7) ? _d___pip_19_1_6___stage___block_29_B : _d___pip_19_1_7___stage___block_29_B;
_q___pip_19_1_2___stage___block_29_R <= _d___pip_19_1_2___stage___block_29_R;
_q___pip_19_1_3___stage___block_29_R <= (_d__idx_fsm___pip_19_1_3 == 1 && !_t__stall_fsm___pip_19_1_3) ? _d___pip_19_1_2___stage___block_29_R : _d___pip_19_1_3___stage___block_29_R;
_q___pip_19_1_4___stage___block_29_R <= (_d__idx_fsm___pip_19_1_4 == 1 && !_t__stall_fsm___pip_19_1_4) ? _d___pip_19_1_3___stage___block_29_R : _d___pip_19_1_4___stage___block_29_R;
_q___pip_19_1_5___stage___block_29_R <= (_d__idx_fsm___pip_19_1_5 == 1 && !_t__stall_fsm___pip_19_1_5) ? _d___pip_19_1_4___stage___block_29_R : _d___pip_19_1_5___stage___block_29_R;
_q___pip_19_1_6___stage___block_29_R <= (_d__idx_fsm___pip_19_1_6 == 1 && !_t__stall_fsm___pip_19_1_6) ? _d___pip_19_1_5___stage___block_29_R : _d___pip_19_1_6___stage___block_29_R;
_q___pip_19_1_7___stage___block_29_R <= (_d__idx_fsm___pip_19_1_7 == 1 && !_t__stall_fsm___pip_19_1_7) ? _d___pip_19_1_6___stage___block_29_R : _d___pip_19_1_7___stage___block_29_R;
_q___pip_19_1_2___stage___block_29_h <= _d___pip_19_1_2___stage___block_29_h;
_q___pip_19_1_3___stage___block_29_h <= (_d__idx_fsm___pip_19_1_3 == 1 && !_t__stall_fsm___pip_19_1_3) ? _d___pip_19_1_2___stage___block_29_h : _d___pip_19_1_3___stage___block_29_h;
_q___pip_19_1_4___stage___block_29_h <= (_d__idx_fsm___pip_19_1_4 == 1 && !_t__stall_fsm___pip_19_1_4) ? _d___pip_19_1_3___stage___block_29_h : _d___pip_19_1_4___stage___block_29_h;
_q___pip_19_1_5___stage___block_29_h <= (_d__idx_fsm___pip_19_1_5 == 1 && !_t__stall_fsm___pip_19_1_5) ? _d___pip_19_1_4___stage___block_29_h : _d___pip_19_1_5___stage___block_29_h;
_q___pip_19_1_6___stage___block_29_h <= (_d__idx_fsm___pip_19_1_6 == 1 && !_t__stall_fsm___pip_19_1_6) ? _d___pip_19_1_5___stage___block_29_h : _d___pip_19_1_6___stage___block_29_h;
_q___pip_19_1_7___stage___block_29_h <= (_d__idx_fsm___pip_19_1_7 == 1 && !_t__stall_fsm___pip_19_1_7) ? _d___pip_19_1_6___stage___block_29_h : _d___pip_19_1_7___stage___block_29_h;
_q___pip_19_1_8___stage___block_29_h <= (_d__idx_fsm___pip_19_1_8 == 1 && !_t__stall_fsm___pip_19_1_8) ? _d___pip_19_1_7___stage___block_29_h : _d___pip_19_1_8___stage___block_29_h;
_q___pip_19_1_9___stage___block_29_h <= (_d__idx_fsm___pip_19_1_9 == 1 && !_t__stall_fsm___pip_19_1_9) ? _d___pip_19_1_8___stage___block_29_h : _d___pip_19_1_9___stage___block_29_h;
_q___pip_19_1_10___stage___block_29_h <= (_d__idx_fsm___pip_19_1_10 == 1 && !_t__stall_fsm___pip_19_1_10) ? _d___pip_19_1_9___stage___block_29_h : _d___pip_19_1_10___stage___block_29_h;
_q___pip_19_1_11___stage___block_29_h <= (_d__idx_fsm___pip_19_1_11 == 1 && !_t__stall_fsm___pip_19_1_11) ? _d___pip_19_1_10___stage___block_29_h : _d___pip_19_1_11___stage___block_29_h;
_q___pip_19_1_12___stage___block_29_h <= (_d__idx_fsm___pip_19_1_12 == 1 && !_t__stall_fsm___pip_19_1_12) ? _d___pip_19_1_11___stage___block_29_h : _d___pip_19_1_12___stage___block_29_h;
_q___pip_19_1_13___stage___block_29_h <= (_d__idx_fsm___pip_19_1_13 == 1 && !_t__stall_fsm___pip_19_1_13) ? _d___pip_19_1_12___stage___block_29_h : _d___pip_19_1_13___stage___block_29_h;
_q___pip_19_1_14___stage___block_29_h <= (_d__idx_fsm___pip_19_1_14 == 1 && !_t__stall_fsm___pip_19_1_14) ? _d___pip_19_1_13___stage___block_29_h : _d___pip_19_1_14___stage___block_29_h;
_q___pip_19_1_15___stage___block_29_h <= (_d__idx_fsm___pip_19_1_15 == 1 && !_t__stall_fsm___pip_19_1_15) ? _d___pip_19_1_14___stage___block_29_h : _d___pip_19_1_15___stage___block_29_h;
_q___pip_19_1_16___stage___block_29_h <= (_d__idx_fsm___pip_19_1_16 == 1 && !_t__stall_fsm___pip_19_1_16) ? _d___pip_19_1_15___stage___block_29_h : _d___pip_19_1_16___stage___block_29_h;
_q___pip_19_1_17___stage___block_29_h <= (_d__idx_fsm___pip_19_1_17 == 1 && !_t__stall_fsm___pip_19_1_17) ? _d___pip_19_1_16___stage___block_29_h : _d___pip_19_1_17___stage___block_29_h;
_q___pip_19_1_18___stage___block_29_h <= (_d__idx_fsm___pip_19_1_18 == 1 && !_t__stall_fsm___pip_19_1_18) ? _d___pip_19_1_17___stage___block_29_h : _d___pip_19_1_18___stage___block_29_h;
_q___pip_19_1_2___stage___block_29_t <= _d___pip_19_1_2___stage___block_29_t;
_q___pip_19_1_3___stage___block_29_t <= (_d__idx_fsm___pip_19_1_3 == 1 && !_t__stall_fsm___pip_19_1_3) ? _d___pip_19_1_2___stage___block_29_t : _d___pip_19_1_3___stage___block_29_t;
_q___pip_19_1_3___stage___block_30_p <= _d___pip_19_1_3___stage___block_30_p;
_q___pip_19_1_4___stage___block_30_p <= (_d__idx_fsm___pip_19_1_4 == 1 && !_t__stall_fsm___pip_19_1_4) ? _d___pip_19_1_3___stage___block_30_p : _d___pip_19_1_4___stage___block_30_p;
_q___pip_19_1_5___stage___block_30_p <= (_d__idx_fsm___pip_19_1_5 == 1 && !_t__stall_fsm___pip_19_1_5) ? _d___pip_19_1_4___stage___block_30_p : _d___pip_19_1_5___stage___block_30_p;
_q___pip_19_1_6___stage___block_30_p <= (_d__idx_fsm___pip_19_1_6 == 1 && !_t__stall_fsm___pip_19_1_6) ? _d___pip_19_1_5___stage___block_30_p : _d___pip_19_1_6___stage___block_30_p;
_q___pip_19_1_7___stage___block_30_p <= (_d__idx_fsm___pip_19_1_7 == 1 && !_t__stall_fsm___pip_19_1_7) ? _d___pip_19_1_6___stage___block_30_p : _d___pip_19_1_7___stage___block_30_p;
_q___pip_19_1_3___stage___block_30_q <= _d___pip_19_1_3___stage___block_30_q;
_q___pip_19_1_4___stage___block_30_q <= (_d__idx_fsm___pip_19_1_4 == 1 && !_t__stall_fsm___pip_19_1_4) ? _d___pip_19_1_3___stage___block_30_q : _d___pip_19_1_4___stage___block_30_q;
_q___pip_19_1_5___stage___block_30_q <= (_d__idx_fsm___pip_19_1_5 == 1 && !_t__stall_fsm___pip_19_1_5) ? _d___pip_19_1_4___stage___block_30_q : _d___pip_19_1_5___stage___block_30_q;
_q___pip_19_1_6___stage___block_30_q <= (_d__idx_fsm___pip_19_1_6 == 1 && !_t__stall_fsm___pip_19_1_6) ? _d___pip_19_1_5___stage___block_30_q : _d___pip_19_1_6___stage___block_30_q;
_q___pip_19_1_7___stage___block_30_q <= (_d__idx_fsm___pip_19_1_7 == 1 && !_t__stall_fsm___pip_19_1_7) ? _d___pip_19_1_6___stage___block_30_q : _d___pip_19_1_7___stage___block_30_q;
_q___pip_19_1_4___stage___block_31_w <= _d___pip_19_1_4___stage___block_31_w;
_q___pip_19_1_5___stage___block_31_w <= (_d__idx_fsm___pip_19_1_5 == 1 && !_t__stall_fsm___pip_19_1_5) ? _d___pip_19_1_4___stage___block_31_w : _d___pip_19_1_5___stage___block_31_w;
_q___pip_19_1_7___stage___block_39_B_s <= _d___pip_19_1_7___stage___block_39_B_s;
_q___pip_19_1_8___stage___block_39_B_s <= (_d__idx_fsm___pip_19_1_8 == 1 && !_t__stall_fsm___pip_19_1_8) ? _d___pip_19_1_7___stage___block_39_B_s : _d___pip_19_1_8___stage___block_39_B_s;
_q___pip_19_1_9___stage___block_39_B_s <= (_d__idx_fsm___pip_19_1_9 == 1 && !_t__stall_fsm___pip_19_1_9) ? _d___pip_19_1_8___stage___block_39_B_s : _d___pip_19_1_9___stage___block_39_B_s;
_q___pip_19_1_10___stage___block_39_B_s <= (_d__idx_fsm___pip_19_1_10 == 1 && !_t__stall_fsm___pip_19_1_10) ? _d___pip_19_1_9___stage___block_39_B_s : _d___pip_19_1_10___stage___block_39_B_s;
_q___pip_19_1_11___stage___block_39_B_s <= (_d__idx_fsm___pip_19_1_11 == 1 && !_t__stall_fsm___pip_19_1_11) ? _d___pip_19_1_10___stage___block_39_B_s : _d___pip_19_1_11___stage___block_39_B_s;
_q___pip_19_1_12___stage___block_39_B_s <= (_d__idx_fsm___pip_19_1_12 == 1 && !_t__stall_fsm___pip_19_1_12) ? _d___pip_19_1_11___stage___block_39_B_s : _d___pip_19_1_12___stage___block_39_B_s;
_q___pip_19_1_13___stage___block_39_B_s <= (_d__idx_fsm___pip_19_1_13 == 1 && !_t__stall_fsm___pip_19_1_13) ? _d___pip_19_1_12___stage___block_39_B_s : _d___pip_19_1_13___stage___block_39_B_s;
_q___pip_19_1_14___stage___block_39_B_s <= (_d__idx_fsm___pip_19_1_14 == 1 && !_t__stall_fsm___pip_19_1_14) ? _d___pip_19_1_13___stage___block_39_B_s : _d___pip_19_1_14___stage___block_39_B_s;
_q___pip_19_1_15___stage___block_39_B_s <= (_d__idx_fsm___pip_19_1_15 == 1 && !_t__stall_fsm___pip_19_1_15) ? _d___pip_19_1_14___stage___block_39_B_s : _d___pip_19_1_15___stage___block_39_B_s;
_q___pip_19_1_16___stage___block_39_B_s <= (_d__idx_fsm___pip_19_1_16 == 1 && !_t__stall_fsm___pip_19_1_16) ? _d___pip_19_1_15___stage___block_39_B_s : _d___pip_19_1_16___stage___block_39_B_s;
_q___pip_19_1_17___stage___block_39_B_s <= (_d__idx_fsm___pip_19_1_17 == 1 && !_t__stall_fsm___pip_19_1_17) ? _d___pip_19_1_16___stage___block_39_B_s : _d___pip_19_1_17___stage___block_39_B_s;
_q___pip_19_1_18___stage___block_39_B_s <= (_d__idx_fsm___pip_19_1_18 == 1 && !_t__stall_fsm___pip_19_1_18) ? _d___pip_19_1_17___stage___block_39_B_s : _d___pip_19_1_18___stage___block_39_B_s;
_q___pip_19_1_7___stage___block_39_R_s <= _d___pip_19_1_7___stage___block_39_R_s;
_q___pip_19_1_8___stage___block_39_R_s <= (_d__idx_fsm___pip_19_1_8 == 1 && !_t__stall_fsm___pip_19_1_8) ? _d___pip_19_1_7___stage___block_39_R_s : _d___pip_19_1_8___stage___block_39_R_s;
_q___pip_19_1_9___stage___block_39_R_s <= (_d__idx_fsm___pip_19_1_9 == 1 && !_t__stall_fsm___pip_19_1_9) ? _d___pip_19_1_8___stage___block_39_R_s : _d___pip_19_1_9___stage___block_39_R_s;
_q___pip_19_1_10___stage___block_39_R_s <= (_d__idx_fsm___pip_19_1_10 == 1 && !_t__stall_fsm___pip_19_1_10) ? _d___pip_19_1_9___stage___block_39_R_s : _d___pip_19_1_10___stage___block_39_R_s;
_q___pip_19_1_11___stage___block_39_R_s <= (_d__idx_fsm___pip_19_1_11 == 1 && !_t__stall_fsm___pip_19_1_11) ? _d___pip_19_1_10___stage___block_39_R_s : _d___pip_19_1_11___stage___block_39_R_s;
_q___pip_19_1_12___stage___block_39_R_s <= (_d__idx_fsm___pip_19_1_12 == 1 && !_t__stall_fsm___pip_19_1_12) ? _d___pip_19_1_11___stage___block_39_R_s : _d___pip_19_1_12___stage___block_39_R_s;
_q___pip_19_1_13___stage___block_39_R_s <= (_d__idx_fsm___pip_19_1_13 == 1 && !_t__stall_fsm___pip_19_1_13) ? _d___pip_19_1_12___stage___block_39_R_s : _d___pip_19_1_13___stage___block_39_R_s;
_q___pip_19_1_14___stage___block_39_R_s <= (_d__idx_fsm___pip_19_1_14 == 1 && !_t__stall_fsm___pip_19_1_14) ? _d___pip_19_1_13___stage___block_39_R_s : _d___pip_19_1_14___stage___block_39_R_s;
_q___pip_19_1_15___stage___block_39_R_s <= (_d__idx_fsm___pip_19_1_15 == 1 && !_t__stall_fsm___pip_19_1_15) ? _d___pip_19_1_14___stage___block_39_R_s : _d___pip_19_1_15___stage___block_39_R_s;
_q___pip_19_1_16___stage___block_39_R_s <= (_d__idx_fsm___pip_19_1_16 == 1 && !_t__stall_fsm___pip_19_1_16) ? _d___pip_19_1_15___stage___block_39_R_s : _d___pip_19_1_16___stage___block_39_R_s;
_q___pip_19_1_17___stage___block_39_R_s <= (_d__idx_fsm___pip_19_1_17 == 1 && !_t__stall_fsm___pip_19_1_17) ? _d___pip_19_1_16___stage___block_39_R_s : _d___pip_19_1_17___stage___block_39_R_s;
_q___pip_19_1_18___stage___block_39_R_s <= (_d__idx_fsm___pip_19_1_18 == 1 && !_t__stall_fsm___pip_19_1_18) ? _d___pip_19_1_17___stage___block_39_R_s : _d___pip_19_1_18___stage___block_39_R_s;
_q___pip_19_1_8___stage___block_47_B <= _d___pip_19_1_8___stage___block_47_B;
_q___pip_19_1_9___stage___block_47_B <= (_d__idx_fsm___pip_19_1_9 == 1 && !_t__stall_fsm___pip_19_1_9) ? _d___pip_19_1_8___stage___block_47_B : _d___pip_19_1_9___stage___block_47_B;
_q___pip_19_1_10___stage___block_47_B <= (_d__idx_fsm___pip_19_1_10 == 1 && !_t__stall_fsm___pip_19_1_10) ? _d___pip_19_1_9___stage___block_47_B : _d___pip_19_1_10___stage___block_47_B;
_q___pip_19_1_11___stage___block_47_B <= (_d__idx_fsm___pip_19_1_11 == 1 && !_t__stall_fsm___pip_19_1_11) ? _d___pip_19_1_10___stage___block_47_B : _d___pip_19_1_11___stage___block_47_B;
_q___pip_19_1_12___stage___block_47_B <= (_d__idx_fsm___pip_19_1_12 == 1 && !_t__stall_fsm___pip_19_1_12) ? _d___pip_19_1_11___stage___block_47_B : _d___pip_19_1_12___stage___block_47_B;
_q___pip_19_1_13___stage___block_47_B <= (_d__idx_fsm___pip_19_1_13 == 1 && !_t__stall_fsm___pip_19_1_13) ? _d___pip_19_1_12___stage___block_47_B : _d___pip_19_1_13___stage___block_47_B;
_q___pip_19_1_14___stage___block_47_B <= (_d__idx_fsm___pip_19_1_14 == 1 && !_t__stall_fsm___pip_19_1_14) ? _d___pip_19_1_13___stage___block_47_B : _d___pip_19_1_14___stage___block_47_B;
_q___pip_19_1_15___stage___block_47_B <= (_d__idx_fsm___pip_19_1_15 == 1 && !_t__stall_fsm___pip_19_1_15) ? _d___pip_19_1_14___stage___block_47_B : _d___pip_19_1_15___stage___block_47_B;
_q___pip_19_1_16___stage___block_47_B <= (_d__idx_fsm___pip_19_1_16 == 1 && !_t__stall_fsm___pip_19_1_16) ? _d___pip_19_1_15___stage___block_47_B : _d___pip_19_1_16___stage___block_47_B;
_q___pip_19_1_17___stage___block_47_B <= (_d__idx_fsm___pip_19_1_17 == 1 && !_t__stall_fsm___pip_19_1_17) ? _d___pip_19_1_16___stage___block_47_B : _d___pip_19_1_17___stage___block_47_B;
_q___pip_19_1_18___stage___block_47_B <= (_d__idx_fsm___pip_19_1_18 == 1 && !_t__stall_fsm___pip_19_1_18) ? _d___pip_19_1_17___stage___block_47_B : _d___pip_19_1_18___stage___block_47_B;
_q___pip_19_1_19___stage___block_47_B <= (_d__idx_fsm___pip_19_1_19 == 1 && !_t__stall_fsm___pip_19_1_19) ? _d___pip_19_1_18___stage___block_47_B : _d___pip_19_1_19___stage___block_47_B;
_q___pip_19_1_8___stage___block_47_R <= _d___pip_19_1_8___stage___block_47_R;
_q___pip_19_1_9___stage___block_47_R <= (_d__idx_fsm___pip_19_1_9 == 1 && !_t__stall_fsm___pip_19_1_9) ? _d___pip_19_1_8___stage___block_47_R : _d___pip_19_1_9___stage___block_47_R;
_q___pip_19_1_10___stage___block_47_R <= (_d__idx_fsm___pip_19_1_10 == 1 && !_t__stall_fsm___pip_19_1_10) ? _d___pip_19_1_9___stage___block_47_R : _d___pip_19_1_10___stage___block_47_R;
_q___pip_19_1_11___stage___block_47_R <= (_d__idx_fsm___pip_19_1_11 == 1 && !_t__stall_fsm___pip_19_1_11) ? _d___pip_19_1_10___stage___block_47_R : _d___pip_19_1_11___stage___block_47_R;
_q___pip_19_1_12___stage___block_47_R <= (_d__idx_fsm___pip_19_1_12 == 1 && !_t__stall_fsm___pip_19_1_12) ? _d___pip_19_1_11___stage___block_47_R : _d___pip_19_1_12___stage___block_47_R;
_q___pip_19_1_13___stage___block_47_R <= (_d__idx_fsm___pip_19_1_13 == 1 && !_t__stall_fsm___pip_19_1_13) ? _d___pip_19_1_12___stage___block_47_R : _d___pip_19_1_13___stage___block_47_R;
_q___pip_19_1_14___stage___block_47_R <= (_d__idx_fsm___pip_19_1_14 == 1 && !_t__stall_fsm___pip_19_1_14) ? _d___pip_19_1_13___stage___block_47_R : _d___pip_19_1_14___stage___block_47_R;
_q___pip_19_1_15___stage___block_47_R <= (_d__idx_fsm___pip_19_1_15 == 1 && !_t__stall_fsm___pip_19_1_15) ? _d___pip_19_1_14___stage___block_47_R : _d___pip_19_1_15___stage___block_47_R;
_q___pip_19_1_16___stage___block_47_R <= (_d__idx_fsm___pip_19_1_16 == 1 && !_t__stall_fsm___pip_19_1_16) ? _d___pip_19_1_15___stage___block_47_R : _d___pip_19_1_16___stage___block_47_R;
_q___pip_19_1_17___stage___block_47_R <= (_d__idx_fsm___pip_19_1_17 == 1 && !_t__stall_fsm___pip_19_1_17) ? _d___pip_19_1_16___stage___block_47_R : _d___pip_19_1_17___stage___block_47_R;
_q___pip_19_1_18___stage___block_47_R <= (_d__idx_fsm___pip_19_1_18 == 1 && !_t__stall_fsm___pip_19_1_18) ? _d___pip_19_1_17___stage___block_47_R : _d___pip_19_1_18___stage___block_47_R;
_q___pip_19_1_19___stage___block_47_R <= (_d__idx_fsm___pip_19_1_19 == 1 && !_t__stall_fsm___pip_19_1_19) ? _d___pip_19_1_18___stage___block_47_R : _d___pip_19_1_19___stage___block_47_R;
_q___pip_19_1_8___stage___block_47_c <= _d___pip_19_1_8___stage___block_47_c;
_q___pip_19_1_9___stage___block_47_c <= (_d__idx_fsm___pip_19_1_9 == 1 && !_t__stall_fsm___pip_19_1_9) ? _d___pip_19_1_8___stage___block_47_c : _d___pip_19_1_9___stage___block_47_c;
_q___pip_19_1_10___stage___block_47_c <= (_d__idx_fsm___pip_19_1_10 == 1 && !_t__stall_fsm___pip_19_1_10) ? _d___pip_19_1_9___stage___block_47_c : _d___pip_19_1_10___stage___block_47_c;
_q___pip_19_1_11___stage___block_47_c <= (_d__idx_fsm___pip_19_1_11 == 1 && !_t__stall_fsm___pip_19_1_11) ? _d___pip_19_1_10___stage___block_47_c : _d___pip_19_1_11___stage___block_47_c;
_q___pip_19_1_12___stage___block_47_c <= (_d__idx_fsm___pip_19_1_12 == 1 && !_t__stall_fsm___pip_19_1_12) ? _d___pip_19_1_11___stage___block_47_c : _d___pip_19_1_12___stage___block_47_c;
_q___pip_19_1_13___stage___block_47_c <= (_d__idx_fsm___pip_19_1_13 == 1 && !_t__stall_fsm___pip_19_1_13) ? _d___pip_19_1_12___stage___block_47_c : _d___pip_19_1_13___stage___block_47_c;
_q___pip_19_1_14___stage___block_47_c <= (_d__idx_fsm___pip_19_1_14 == 1 && !_t__stall_fsm___pip_19_1_14) ? _d___pip_19_1_13___stage___block_47_c : _d___pip_19_1_14___stage___block_47_c;
_q___pip_19_1_15___stage___block_47_c <= (_d__idx_fsm___pip_19_1_15 == 1 && !_t__stall_fsm___pip_19_1_15) ? _d___pip_19_1_14___stage___block_47_c : _d___pip_19_1_15___stage___block_47_c;
_q___pip_19_1_8___stage___block_47_p <= _d___pip_19_1_8___stage___block_47_p;
_q___pip_19_1_9___stage___block_47_p <= (_d__idx_fsm___pip_19_1_9 == 1 && !_t__stall_fsm___pip_19_1_9) ? _d___pip_19_1_8___stage___block_47_p : _d___pip_19_1_9___stage___block_47_p;
_q___pip_19_1_10___stage___block_49_o1 <= _d___pip_19_1_10___stage___block_49_o1;
_q___pip_19_1_11___stage___block_49_o1 <= (_d__idx_fsm___pip_19_1_11 == 1 && !_t__stall_fsm___pip_19_1_11) ? _d___pip_19_1_10___stage___block_49_o1 : _d___pip_19_1_11___stage___block_49_o1;
_q___pip_19_1_11___stage___block_50_o_t1 <= _d___pip_19_1_11___stage___block_50_o_t1;
_q___pip_19_1_12___stage___block_50_o_t1 <= (_d__idx_fsm___pip_19_1_12 == 1 && !_t__stall_fsm___pip_19_1_12) ? _d___pip_19_1_11___stage___block_50_o_t1 : _d___pip_19_1_12___stage___block_50_o_t1;
_q___pip_19_1_12___stage___block_51_o_t2 <= _d___pip_19_1_12___stage___block_51_o_t2;
_q___pip_19_1_13___stage___block_51_o_t2 <= (_d__idx_fsm___pip_19_1_13 == 1 && !_t__stall_fsm___pip_19_1_13) ? _d___pip_19_1_12___stage___block_51_o_t2 : _d___pip_19_1_13___stage___block_51_o_t2;
_q___pip_19_1_13___stage___block_52_o <= _d___pip_19_1_13___stage___block_52_o;
_q___pip_19_1_14___stage___block_52_o <= (_d__idx_fsm___pip_19_1_14 == 1 && !_t__stall_fsm___pip_19_1_14) ? _d___pip_19_1_13___stage___block_52_o : _d___pip_19_1_14___stage___block_52_o;
_q___pip_19_1_14___stage___block_53_B_g <= _d___pip_19_1_14___stage___block_53_B_g;
_q___pip_19_1_15___stage___block_53_B_g <= (_d__idx_fsm___pip_19_1_15 == 1 && !_t__stall_fsm___pip_19_1_15) ? _d___pip_19_1_14___stage___block_53_B_g : _d___pip_19_1_15___stage___block_53_B_g;
_q___pip_19_1_16___stage___block_53_B_g <= (_d__idx_fsm___pip_19_1_16 == 1 && !_t__stall_fsm___pip_19_1_16) ? _d___pip_19_1_15___stage___block_53_B_g : _d___pip_19_1_16___stage___block_53_B_g;
_q___pip_19_1_17___stage___block_53_B_g <= (_d__idx_fsm___pip_19_1_17 == 1 && !_t__stall_fsm___pip_19_1_17) ? _d___pip_19_1_16___stage___block_53_B_g : _d___pip_19_1_17___stage___block_53_B_g;
_q___pip_19_1_18___stage___block_53_B_g <= (_d__idx_fsm___pip_19_1_18 == 1 && !_t__stall_fsm___pip_19_1_18) ? _d___pip_19_1_17___stage___block_53_B_g : _d___pip_19_1_18___stage___block_53_B_g;
_q___pip_19_1_15___stage___block_61_d <= _d___pip_19_1_15___stage___block_61_d;
_q___pip_19_1_16___stage___block_61_d <= (_d__idx_fsm___pip_19_1_16 == 1 && !_t__stall_fsm___pip_19_1_16) ? _d___pip_19_1_15___stage___block_61_d : _d___pip_19_1_16___stage___block_61_d;
_q___pip_19_1_16___stage___block_62_R_g <= _d___pip_19_1_16___stage___block_62_R_g;
_q___pip_19_1_17___stage___block_62_R_g <= (_d__idx_fsm___pip_19_1_17 == 1 && !_t__stall_fsm___pip_19_1_17) ? _d___pip_19_1_16___stage___block_62_R_g : _d___pip_19_1_17___stage___block_62_R_g;
_q___pip_19_1_18___stage___block_62_R_g <= (_d__idx_fsm___pip_19_1_18 == 1 && !_t__stall_fsm___pip_19_1_18) ? _d___pip_19_1_17___stage___block_62_R_g : _d___pip_19_1_18___stage___block_62_R_g;
_q___pip_19_1_17___stage___block_70_B_k <= _d___pip_19_1_17___stage___block_70_B_k;
_q___pip_19_1_18___stage___block_70_B_k <= (_d__idx_fsm___pip_19_1_18 == 1 && !_t__stall_fsm___pip_19_1_18) ? _d___pip_19_1_17___stage___block_70_B_k : _d___pip_19_1_18___stage___block_70_B_k;
_q___pip_19_1_17___stage___block_70_R_k <= _d___pip_19_1_17___stage___block_70_R_k;
_q___pip_19_1_18___stage___block_70_R_k <= (_d__idx_fsm___pip_19_1_18 == 1 && !_t__stall_fsm___pip_19_1_18) ? _d___pip_19_1_17___stage___block_70_R_k : _d___pip_19_1_18___stage___block_70_R_k;
_q___pip_19_1_19___stage___block_86_b <= _d___pip_19_1_19___stage___block_86_b;
_q___pip_19_1_20___stage___block_86_b <= (_d__idx_fsm___pip_19_1_20 == 1 && !_t__stall_fsm___pip_19_1_20) ? _d___pip_19_1_19___stage___block_86_b : _d___pip_19_1_20___stage___block_86_b;
_q___pip_19_1_19___stage___block_86_g <= _d___pip_19_1_19___stage___block_86_g;
_q___pip_19_1_20___stage___block_86_g <= (_d__idx_fsm___pip_19_1_20 == 1 && !_t__stall_fsm___pip_19_1_20) ? _d___pip_19_1_19___stage___block_86_g : _d___pip_19_1_20___stage___block_86_g;
_q___pip_19_1_19___stage___block_86_r <= _d___pip_19_1_19___stage___block_86_r;
_q___pip_19_1_20___stage___block_86_r <= (_d__idx_fsm___pip_19_1_20 == 1 && !_t__stall_fsm___pip_19_1_20) ? _d___pip_19_1_19___stage___block_86_r : _d___pip_19_1_20___stage___block_86_r;
_q__idx_fsm0 <= reset ? 0 : ( ~_autorun ? 1 : _d__idx_fsm0);
_autorun <= reset ? 0 : 1;
_q__idx_fsm___pip_19_1_0 <= reset ? 0 : _d__idx_fsm___pip_19_1_0;
_q__full_fsm___pip_19_1_0 <= reset ? 0 : _d__full_fsm___pip_19_1_0;
_q__idx_fsm___pip_19_1_1 <= reset ? 0 : _d__idx_fsm___pip_19_1_1;
_q__full_fsm___pip_19_1_1 <= reset ? 0 : _d__full_fsm___pip_19_1_1;
_q__idx_fsm___pip_19_1_2 <= reset ? 0 : _d__idx_fsm___pip_19_1_2;
_q__full_fsm___pip_19_1_2 <= reset ? 0 : _d__full_fsm___pip_19_1_2;
_q__idx_fsm___pip_19_1_3 <= reset ? 0 : _d__idx_fsm___pip_19_1_3;
_q__full_fsm___pip_19_1_3 <= reset ? 0 : _d__full_fsm___pip_19_1_3;
_q__idx_fsm___pip_19_1_4 <= reset ? 0 : _d__idx_fsm___pip_19_1_4;
_q__full_fsm___pip_19_1_4 <= reset ? 0 : _d__full_fsm___pip_19_1_4;
_q__idx_fsm___pip_19_1_5 <= reset ? 0 : _d__idx_fsm___pip_19_1_5;
_q__full_fsm___pip_19_1_5 <= reset ? 0 : _d__full_fsm___pip_19_1_5;
_q__idx_fsm___pip_19_1_6 <= reset ? 0 : _d__idx_fsm___pip_19_1_6;
_q__full_fsm___pip_19_1_6 <= reset ? 0 : _d__full_fsm___pip_19_1_6;
_q__idx_fsm___pip_19_1_7 <= reset ? 0 : _d__idx_fsm___pip_19_1_7;
_q__full_fsm___pip_19_1_7 <= reset ? 0 : _d__full_fsm___pip_19_1_7;
_q__idx_fsm___pip_19_1_8 <= reset ? 0 : _d__idx_fsm___pip_19_1_8;
_q__full_fsm___pip_19_1_8 <= reset ? 0 : _d__full_fsm___pip_19_1_8;
_q__idx_fsm___pip_19_1_9 <= reset ? 0 : _d__idx_fsm___pip_19_1_9;
_q__full_fsm___pip_19_1_9 <= reset ? 0 : _d__full_fsm___pip_19_1_9;
_q__idx_fsm___pip_19_1_10 <= reset ? 0 : _d__idx_fsm___pip_19_1_10;
_q__full_fsm___pip_19_1_10 <= reset ? 0 : _d__full_fsm___pip_19_1_10;
_q__idx_fsm___pip_19_1_11 <= reset ? 0 : _d__idx_fsm___pip_19_1_11;
_q__full_fsm___pip_19_1_11 <= reset ? 0 : _d__full_fsm___pip_19_1_11;
_q__idx_fsm___pip_19_1_12 <= reset ? 0 : _d__idx_fsm___pip_19_1_12;
_q__full_fsm___pip_19_1_12 <= reset ? 0 : _d__full_fsm___pip_19_1_12;
_q__idx_fsm___pip_19_1_13 <= reset ? 0 : _d__idx_fsm___pip_19_1_13;
_q__full_fsm___pip_19_1_13 <= reset ? 0 : _d__full_fsm___pip_19_1_13;
_q__idx_fsm___pip_19_1_14 <= reset ? 0 : _d__idx_fsm___pip_19_1_14;
_q__full_fsm___pip_19_1_14 <= reset ? 0 : _d__full_fsm___pip_19_1_14;
_q__idx_fsm___pip_19_1_15 <= reset ? 0 : _d__idx_fsm___pip_19_1_15;
_q__full_fsm___pip_19_1_15 <= reset ? 0 : _d__full_fsm___pip_19_1_15;
_q__idx_fsm___pip_19_1_16 <= reset ? 0 : _d__idx_fsm___pip_19_1_16;
_q__full_fsm___pip_19_1_16 <= reset ? 0 : _d__full_fsm___pip_19_1_16;
_q__idx_fsm___pip_19_1_17 <= reset ? 0 : _d__idx_fsm___pip_19_1_17;
_q__full_fsm___pip_19_1_17 <= reset ? 0 : _d__full_fsm___pip_19_1_17;
_q__idx_fsm___pip_19_1_18 <= reset ? 0 : _d__idx_fsm___pip_19_1_18;
_q__full_fsm___pip_19_1_18 <= reset ? 0 : _d__full_fsm___pip_19_1_18;
_q__idx_fsm___pip_19_1_19 <= reset ? 0 : _d__idx_fsm___pip_19_1_19;
_q__full_fsm___pip_19_1_19 <= reset ? 0 : _d__full_fsm___pip_19_1_19;
_q__idx_fsm___pip_19_1_20 <= reset ? 0 : _d__idx_fsm___pip_19_1_20;
_q__full_fsm___pip_19_1_20 <= reset ? 0 : _d__full_fsm___pip_19_1_20;
end

endmodule

