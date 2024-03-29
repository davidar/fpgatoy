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
wire signed [15:0] _c___stage___block_7_R;
assign _c___stage___block_7_R = 420;
wire signed [15:0] _c___stage___block_7_B;
assign _c___stage___block_7_B = 520;
wire signed [15:0] _c___stage___block_25_B;
assign _c___stage___block_25_B = 50;
reg signed [15:0] _t___stage___block_5_x;
reg signed [15:0] _t___stage___block_5_y;
reg signed [15:0] _t___stage___block_6_u;
reg signed [15:0] _t___stage___block_6_v;
reg  [21:0] _t___stage___block_6_u2;
reg  [21:0] _t___stage___block_6_v2;
reg  [21:0] _t___stage___block_7_h;
reg  [21:0] _t___stage___block_7_t;
reg signed [15:0] _t___stage___block_8_p;
reg signed [15:0] _t___stage___block_8_q;
reg signed [15:0] _t___stage___block_9_w;
reg signed [21:0] _t___stage___block_16_o;
reg signed [21:0] _t___stage___block_17_w;
reg signed [15:0] _t___stage___block_17_R_s;
reg signed [15:0] _t___stage___block_17_B_s;
reg signed [15:0] _t___stage___block_25_R;
reg signed [21:0] _t___stage___block_25_p;
reg signed [21:0] _t___stage___block_25_c;
reg signed [21:0] _t___stage___block_27_o1;
reg signed [21:0] _t___stage___block_28_o_t1;
reg signed [23:0] _t___stage___block_29_o_t2;
reg signed [21:0] _t___stage___block_30_o;
reg signed [21:0] _t___stage___block_31_B_g;
reg signed [15:0] _t___stage___block_39_r;
reg signed [15:0] _t___stage___block_39_d;
reg signed [21:0] _t___stage___block_40_R_g;
reg signed [15:0] _t___stage___block_48_R_k;
reg signed [15:0] _t___stage___block_48_B_k;
reg signed [15:0] _t___stage___block_48_c;
reg  [7:0] _t___stage___block_64_r;
reg  [7:0] _t___stage___block_64_b;
reg  [15:0] _t___stage___block_64_G;
reg  [7:0] _t___stage___block_64_g;

reg signed [15:0] _d___pip_10_1_7___stage___block_17_B_s;
reg signed [15:0] _q___pip_10_1_7___stage___block_17_B_s;
reg signed [15:0] _d___pip_10_1_8___stage___block_17_B_s;
reg signed [15:0] _q___pip_10_1_8___stage___block_17_B_s;
reg signed [15:0] _d___pip_10_1_9___stage___block_17_B_s;
reg signed [15:0] _q___pip_10_1_9___stage___block_17_B_s;
reg signed [15:0] _d___pip_10_1_10___stage___block_17_B_s;
reg signed [15:0] _q___pip_10_1_10___stage___block_17_B_s;
reg signed [15:0] _d___pip_10_1_11___stage___block_17_B_s;
reg signed [15:0] _q___pip_10_1_11___stage___block_17_B_s;
reg signed [15:0] _d___pip_10_1_12___stage___block_17_B_s;
reg signed [15:0] _q___pip_10_1_12___stage___block_17_B_s;
reg signed [15:0] _d___pip_10_1_13___stage___block_17_B_s;
reg signed [15:0] _q___pip_10_1_13___stage___block_17_B_s;
reg signed [15:0] _d___pip_10_1_14___stage___block_17_B_s;
reg signed [15:0] _q___pip_10_1_14___stage___block_17_B_s;
reg signed [15:0] _d___pip_10_1_15___stage___block_17_B_s;
reg signed [15:0] _q___pip_10_1_15___stage___block_17_B_s;
reg signed [15:0] _d___pip_10_1_16___stage___block_17_B_s;
reg signed [15:0] _q___pip_10_1_16___stage___block_17_B_s;
reg signed [15:0] _d___pip_10_1_17___stage___block_17_B_s;
reg signed [15:0] _q___pip_10_1_17___stage___block_17_B_s;
reg signed [15:0] _d___pip_10_1_18___stage___block_17_B_s;
reg signed [15:0] _q___pip_10_1_18___stage___block_17_B_s;
reg signed [15:0] _d___pip_10_1_7___stage___block_17_R_s;
reg signed [15:0] _q___pip_10_1_7___stage___block_17_R_s;
reg signed [15:0] _d___pip_10_1_8___stage___block_17_R_s;
reg signed [15:0] _q___pip_10_1_8___stage___block_17_R_s;
reg signed [15:0] _d___pip_10_1_9___stage___block_17_R_s;
reg signed [15:0] _q___pip_10_1_9___stage___block_17_R_s;
reg signed [15:0] _d___pip_10_1_10___stage___block_17_R_s;
reg signed [15:0] _q___pip_10_1_10___stage___block_17_R_s;
reg signed [15:0] _d___pip_10_1_11___stage___block_17_R_s;
reg signed [15:0] _q___pip_10_1_11___stage___block_17_R_s;
reg signed [15:0] _d___pip_10_1_12___stage___block_17_R_s;
reg signed [15:0] _q___pip_10_1_12___stage___block_17_R_s;
reg signed [15:0] _d___pip_10_1_13___stage___block_17_R_s;
reg signed [15:0] _q___pip_10_1_13___stage___block_17_R_s;
reg signed [15:0] _d___pip_10_1_14___stage___block_17_R_s;
reg signed [15:0] _q___pip_10_1_14___stage___block_17_R_s;
reg signed [15:0] _d___pip_10_1_15___stage___block_17_R_s;
reg signed [15:0] _q___pip_10_1_15___stage___block_17_R_s;
reg signed [15:0] _d___pip_10_1_16___stage___block_17_R_s;
reg signed [15:0] _q___pip_10_1_16___stage___block_17_R_s;
reg signed [15:0] _d___pip_10_1_17___stage___block_17_R_s;
reg signed [15:0] _q___pip_10_1_17___stage___block_17_R_s;
reg signed [15:0] _d___pip_10_1_18___stage___block_17_R_s;
reg signed [15:0] _q___pip_10_1_18___stage___block_17_R_s;
reg signed [15:0] _d___pip_10_1_8___stage___block_25_B;
reg signed [15:0] _q___pip_10_1_8___stage___block_25_B;
reg signed [15:0] _d___pip_10_1_9___stage___block_25_B;
reg signed [15:0] _q___pip_10_1_9___stage___block_25_B;
reg signed [15:0] _d___pip_10_1_10___stage___block_25_B;
reg signed [15:0] _q___pip_10_1_10___stage___block_25_B;
reg signed [15:0] _d___pip_10_1_11___stage___block_25_B;
reg signed [15:0] _q___pip_10_1_11___stage___block_25_B;
reg signed [15:0] _d___pip_10_1_12___stage___block_25_B;
reg signed [15:0] _q___pip_10_1_12___stage___block_25_B;
reg signed [15:0] _d___pip_10_1_13___stage___block_25_B;
reg signed [15:0] _q___pip_10_1_13___stage___block_25_B;
reg signed [15:0] _d___pip_10_1_14___stage___block_25_B;
reg signed [15:0] _q___pip_10_1_14___stage___block_25_B;
reg signed [15:0] _d___pip_10_1_15___stage___block_25_B;
reg signed [15:0] _q___pip_10_1_15___stage___block_25_B;
reg signed [15:0] _d___pip_10_1_16___stage___block_25_B;
reg signed [15:0] _q___pip_10_1_16___stage___block_25_B;
reg signed [15:0] _d___pip_10_1_17___stage___block_25_B;
reg signed [15:0] _q___pip_10_1_17___stage___block_25_B;
reg signed [15:0] _d___pip_10_1_18___stage___block_25_B;
reg signed [15:0] _q___pip_10_1_18___stage___block_25_B;
reg signed [15:0] _d___pip_10_1_19___stage___block_25_B;
reg signed [15:0] _q___pip_10_1_19___stage___block_25_B;
reg signed [15:0] _d___pip_10_1_8___stage___block_25_R;
reg signed [15:0] _q___pip_10_1_8___stage___block_25_R;
reg signed [15:0] _d___pip_10_1_9___stage___block_25_R;
reg signed [15:0] _q___pip_10_1_9___stage___block_25_R;
reg signed [15:0] _d___pip_10_1_10___stage___block_25_R;
reg signed [15:0] _q___pip_10_1_10___stage___block_25_R;
reg signed [15:0] _d___pip_10_1_11___stage___block_25_R;
reg signed [15:0] _q___pip_10_1_11___stage___block_25_R;
reg signed [15:0] _d___pip_10_1_12___stage___block_25_R;
reg signed [15:0] _q___pip_10_1_12___stage___block_25_R;
reg signed [15:0] _d___pip_10_1_13___stage___block_25_R;
reg signed [15:0] _q___pip_10_1_13___stage___block_25_R;
reg signed [15:0] _d___pip_10_1_14___stage___block_25_R;
reg signed [15:0] _q___pip_10_1_14___stage___block_25_R;
reg signed [15:0] _d___pip_10_1_15___stage___block_25_R;
reg signed [15:0] _q___pip_10_1_15___stage___block_25_R;
reg signed [15:0] _d___pip_10_1_16___stage___block_25_R;
reg signed [15:0] _q___pip_10_1_16___stage___block_25_R;
reg signed [15:0] _d___pip_10_1_17___stage___block_25_R;
reg signed [15:0] _q___pip_10_1_17___stage___block_25_R;
reg signed [15:0] _d___pip_10_1_18___stage___block_25_R;
reg signed [15:0] _q___pip_10_1_18___stage___block_25_R;
reg signed [15:0] _d___pip_10_1_19___stage___block_25_R;
reg signed [15:0] _q___pip_10_1_19___stage___block_25_R;
reg signed [21:0] _d___pip_10_1_8___stage___block_25_c;
reg signed [21:0] _q___pip_10_1_8___stage___block_25_c;
reg signed [21:0] _d___pip_10_1_9___stage___block_25_c;
reg signed [21:0] _q___pip_10_1_9___stage___block_25_c;
reg signed [21:0] _d___pip_10_1_10___stage___block_25_c;
reg signed [21:0] _q___pip_10_1_10___stage___block_25_c;
reg signed [21:0] _d___pip_10_1_11___stage___block_25_c;
reg signed [21:0] _q___pip_10_1_11___stage___block_25_c;
reg signed [21:0] _d___pip_10_1_12___stage___block_25_c;
reg signed [21:0] _q___pip_10_1_12___stage___block_25_c;
reg signed [21:0] _d___pip_10_1_13___stage___block_25_c;
reg signed [21:0] _q___pip_10_1_13___stage___block_25_c;
reg signed [21:0] _d___pip_10_1_14___stage___block_25_c;
reg signed [21:0] _q___pip_10_1_14___stage___block_25_c;
reg signed [21:0] _d___pip_10_1_15___stage___block_25_c;
reg signed [21:0] _q___pip_10_1_15___stage___block_25_c;
reg signed [21:0] _d___pip_10_1_8___stage___block_25_p;
reg signed [21:0] _q___pip_10_1_8___stage___block_25_p;
reg signed [21:0] _d___pip_10_1_9___stage___block_25_p;
reg signed [21:0] _q___pip_10_1_9___stage___block_25_p;
reg signed [21:0] _d___pip_10_1_10___stage___block_27_o1;
reg signed [21:0] _q___pip_10_1_10___stage___block_27_o1;
reg signed [21:0] _d___pip_10_1_11___stage___block_27_o1;
reg signed [21:0] _q___pip_10_1_11___stage___block_27_o1;
reg signed [21:0] _d___pip_10_1_11___stage___block_28_o_t1;
reg signed [21:0] _q___pip_10_1_11___stage___block_28_o_t1;
reg signed [21:0] _d___pip_10_1_12___stage___block_28_o_t1;
reg signed [21:0] _q___pip_10_1_12___stage___block_28_o_t1;
reg signed [23:0] _d___pip_10_1_12___stage___block_29_o_t2;
reg signed [23:0] _q___pip_10_1_12___stage___block_29_o_t2;
reg signed [23:0] _d___pip_10_1_13___stage___block_29_o_t2;
reg signed [23:0] _q___pip_10_1_13___stage___block_29_o_t2;
reg signed [21:0] _d___pip_10_1_13___stage___block_30_o;
reg signed [21:0] _q___pip_10_1_13___stage___block_30_o;
reg signed [21:0] _d___pip_10_1_14___stage___block_30_o;
reg signed [21:0] _q___pip_10_1_14___stage___block_30_o;
reg signed [21:0] _d___pip_10_1_14___stage___block_31_B_g;
reg signed [21:0] _q___pip_10_1_14___stage___block_31_B_g;
reg signed [21:0] _d___pip_10_1_15___stage___block_31_B_g;
reg signed [21:0] _q___pip_10_1_15___stage___block_31_B_g;
reg signed [21:0] _d___pip_10_1_16___stage___block_31_B_g;
reg signed [21:0] _q___pip_10_1_16___stage___block_31_B_g;
reg signed [21:0] _d___pip_10_1_17___stage___block_31_B_g;
reg signed [21:0] _q___pip_10_1_17___stage___block_31_B_g;
reg signed [21:0] _d___pip_10_1_18___stage___block_31_B_g;
reg signed [21:0] _q___pip_10_1_18___stage___block_31_B_g;
reg signed [15:0] _d___pip_10_1_15___stage___block_39_d;
reg signed [15:0] _q___pip_10_1_15___stage___block_39_d;
reg signed [15:0] _d___pip_10_1_16___stage___block_39_d;
reg signed [15:0] _q___pip_10_1_16___stage___block_39_d;
reg signed [21:0] _d___pip_10_1_16___stage___block_40_R_g;
reg signed [21:0] _q___pip_10_1_16___stage___block_40_R_g;
reg signed [21:0] _d___pip_10_1_17___stage___block_40_R_g;
reg signed [21:0] _q___pip_10_1_17___stage___block_40_R_g;
reg signed [21:0] _d___pip_10_1_18___stage___block_40_R_g;
reg signed [21:0] _q___pip_10_1_18___stage___block_40_R_g;
reg signed [15:0] _d___pip_10_1_17___stage___block_48_B_k;
reg signed [15:0] _q___pip_10_1_17___stage___block_48_B_k;
reg signed [15:0] _d___pip_10_1_18___stage___block_48_B_k;
reg signed [15:0] _q___pip_10_1_18___stage___block_48_B_k;
reg signed [15:0] _d___pip_10_1_17___stage___block_48_R_k;
reg signed [15:0] _q___pip_10_1_17___stage___block_48_R_k;
reg signed [15:0] _d___pip_10_1_18___stage___block_48_R_k;
reg signed [15:0] _q___pip_10_1_18___stage___block_48_R_k;
reg signed [15:0] _d___pip_10_1_0___stage___block_5_x;
reg signed [15:0] _q___pip_10_1_0___stage___block_5_x;
reg signed [15:0] _d___pip_10_1_1___stage___block_5_x;
reg signed [15:0] _q___pip_10_1_1___stage___block_5_x;
reg signed [15:0] _d___pip_10_1_2___stage___block_5_x;
reg signed [15:0] _q___pip_10_1_2___stage___block_5_x;
reg signed [15:0] _d___pip_10_1_3___stage___block_5_x;
reg signed [15:0] _q___pip_10_1_3___stage___block_5_x;
reg signed [15:0] _d___pip_10_1_4___stage___block_5_x;
reg signed [15:0] _q___pip_10_1_4___stage___block_5_x;
reg signed [15:0] _d___pip_10_1_5___stage___block_5_x;
reg signed [15:0] _q___pip_10_1_5___stage___block_5_x;
reg signed [15:0] _d___pip_10_1_6___stage___block_5_x;
reg signed [15:0] _q___pip_10_1_6___stage___block_5_x;
reg signed [15:0] _d___pip_10_1_7___stage___block_5_x;
reg signed [15:0] _q___pip_10_1_7___stage___block_5_x;
reg signed [15:0] _d___pip_10_1_8___stage___block_5_x;
reg signed [15:0] _q___pip_10_1_8___stage___block_5_x;
reg signed [15:0] _d___pip_10_1_9___stage___block_5_x;
reg signed [15:0] _q___pip_10_1_9___stage___block_5_x;
reg signed [15:0] _d___pip_10_1_10___stage___block_5_x;
reg signed [15:0] _q___pip_10_1_10___stage___block_5_x;
reg signed [15:0] _d___pip_10_1_11___stage___block_5_x;
reg signed [15:0] _q___pip_10_1_11___stage___block_5_x;
reg signed [15:0] _d___pip_10_1_12___stage___block_5_x;
reg signed [15:0] _q___pip_10_1_12___stage___block_5_x;
reg signed [15:0] _d___pip_10_1_13___stage___block_5_x;
reg signed [15:0] _q___pip_10_1_13___stage___block_5_x;
reg signed [15:0] _d___pip_10_1_14___stage___block_5_x;
reg signed [15:0] _q___pip_10_1_14___stage___block_5_x;
reg signed [15:0] _d___pip_10_1_15___stage___block_5_x;
reg signed [15:0] _q___pip_10_1_15___stage___block_5_x;
reg signed [15:0] _d___pip_10_1_16___stage___block_5_x;
reg signed [15:0] _q___pip_10_1_16___stage___block_5_x;
reg signed [15:0] _d___pip_10_1_17___stage___block_5_x;
reg signed [15:0] _q___pip_10_1_17___stage___block_5_x;
reg signed [15:0] _d___pip_10_1_0___stage___block_5_y;
reg signed [15:0] _q___pip_10_1_0___stage___block_5_y;
reg signed [15:0] _d___pip_10_1_1___stage___block_5_y;
reg signed [15:0] _q___pip_10_1_1___stage___block_5_y;
reg signed [15:0] _d___pip_10_1_2___stage___block_5_y;
reg signed [15:0] _q___pip_10_1_2___stage___block_5_y;
reg signed [15:0] _d___pip_10_1_3___stage___block_5_y;
reg signed [15:0] _q___pip_10_1_3___stage___block_5_y;
reg signed [15:0] _d___pip_10_1_4___stage___block_5_y;
reg signed [15:0] _q___pip_10_1_4___stage___block_5_y;
reg signed [15:0] _d___pip_10_1_5___stage___block_5_y;
reg signed [15:0] _q___pip_10_1_5___stage___block_5_y;
reg signed [15:0] _d___pip_10_1_6___stage___block_5_y;
reg signed [15:0] _q___pip_10_1_6___stage___block_5_y;
reg signed [15:0] _d___pip_10_1_7___stage___block_5_y;
reg signed [15:0] _q___pip_10_1_7___stage___block_5_y;
reg signed [15:0] _d___pip_10_1_8___stage___block_5_y;
reg signed [15:0] _q___pip_10_1_8___stage___block_5_y;
reg signed [15:0] _d___pip_10_1_9___stage___block_5_y;
reg signed [15:0] _q___pip_10_1_9___stage___block_5_y;
reg signed [15:0] _d___pip_10_1_10___stage___block_5_y;
reg signed [15:0] _q___pip_10_1_10___stage___block_5_y;
reg signed [15:0] _d___pip_10_1_11___stage___block_5_y;
reg signed [15:0] _q___pip_10_1_11___stage___block_5_y;
reg signed [15:0] _d___pip_10_1_12___stage___block_5_y;
reg signed [15:0] _q___pip_10_1_12___stage___block_5_y;
reg signed [15:0] _d___pip_10_1_13___stage___block_5_y;
reg signed [15:0] _q___pip_10_1_13___stage___block_5_y;
reg signed [15:0] _d___pip_10_1_14___stage___block_5_y;
reg signed [15:0] _q___pip_10_1_14___stage___block_5_y;
reg signed [15:0] _d___pip_10_1_15___stage___block_5_y;
reg signed [15:0] _q___pip_10_1_15___stage___block_5_y;
reg signed [15:0] _d___pip_10_1_16___stage___block_5_y;
reg signed [15:0] _q___pip_10_1_16___stage___block_5_y;
reg signed [15:0] _d___pip_10_1_17___stage___block_5_y;
reg signed [15:0] _q___pip_10_1_17___stage___block_5_y;
reg  [7:0] _d___pip_10_1_19___stage___block_64_b;
reg  [7:0] _q___pip_10_1_19___stage___block_64_b;
reg  [7:0] _d___pip_10_1_20___stage___block_64_b;
reg  [7:0] _q___pip_10_1_20___stage___block_64_b;
reg  [7:0] _d___pip_10_1_19___stage___block_64_g;
reg  [7:0] _q___pip_10_1_19___stage___block_64_g;
reg  [7:0] _d___pip_10_1_20___stage___block_64_g;
reg  [7:0] _q___pip_10_1_20___stage___block_64_g;
reg  [7:0] _d___pip_10_1_19___stage___block_64_r;
reg  [7:0] _q___pip_10_1_19___stage___block_64_r;
reg  [7:0] _d___pip_10_1_20___stage___block_64_r;
reg  [7:0] _q___pip_10_1_20___stage___block_64_r;
reg signed [15:0] _d___pip_10_1_1___stage___block_6_u;
reg signed [15:0] _q___pip_10_1_1___stage___block_6_u;
reg signed [15:0] _d___pip_10_1_2___stage___block_6_u;
reg signed [15:0] _q___pip_10_1_2___stage___block_6_u;
reg signed [15:0] _d___pip_10_1_3___stage___block_6_u;
reg signed [15:0] _q___pip_10_1_3___stage___block_6_u;
reg signed [15:0] _d___pip_10_1_4___stage___block_6_u;
reg signed [15:0] _q___pip_10_1_4___stage___block_6_u;
reg signed [15:0] _d___pip_10_1_5___stage___block_6_u;
reg signed [15:0] _q___pip_10_1_5___stage___block_6_u;
reg signed [15:0] _d___pip_10_1_6___stage___block_6_u;
reg signed [15:0] _q___pip_10_1_6___stage___block_6_u;
reg signed [15:0] _d___pip_10_1_7___stage___block_6_u;
reg signed [15:0] _q___pip_10_1_7___stage___block_6_u;
reg signed [15:0] _d___pip_10_1_8___stage___block_6_u;
reg signed [15:0] _q___pip_10_1_8___stage___block_6_u;
reg signed [15:0] _d___pip_10_1_9___stage___block_6_u;
reg signed [15:0] _q___pip_10_1_9___stage___block_6_u;
reg signed [15:0] _d___pip_10_1_10___stage___block_6_u;
reg signed [15:0] _q___pip_10_1_10___stage___block_6_u;
reg signed [15:0] _d___pip_10_1_11___stage___block_6_u;
reg signed [15:0] _q___pip_10_1_11___stage___block_6_u;
reg signed [15:0] _d___pip_10_1_12___stage___block_6_u;
reg signed [15:0] _q___pip_10_1_12___stage___block_6_u;
reg signed [15:0] _d___pip_10_1_13___stage___block_6_u;
reg signed [15:0] _q___pip_10_1_13___stage___block_6_u;
reg signed [15:0] _d___pip_10_1_14___stage___block_6_u;
reg signed [15:0] _q___pip_10_1_14___stage___block_6_u;
reg signed [15:0] _d___pip_10_1_15___stage___block_6_u;
reg signed [15:0] _q___pip_10_1_15___stage___block_6_u;
reg  [21:0] _d___pip_10_1_1___stage___block_6_u2;
reg  [21:0] _q___pip_10_1_1___stage___block_6_u2;
reg  [21:0] _d___pip_10_1_2___stage___block_6_u2;
reg  [21:0] _q___pip_10_1_2___stage___block_6_u2;
reg signed [15:0] _d___pip_10_1_1___stage___block_6_v;
reg signed [15:0] _q___pip_10_1_1___stage___block_6_v;
reg signed [15:0] _d___pip_10_1_2___stage___block_6_v;
reg signed [15:0] _q___pip_10_1_2___stage___block_6_v;
reg signed [15:0] _d___pip_10_1_3___stage___block_6_v;
reg signed [15:0] _q___pip_10_1_3___stage___block_6_v;
reg signed [15:0] _d___pip_10_1_4___stage___block_6_v;
reg signed [15:0] _q___pip_10_1_4___stage___block_6_v;
reg signed [15:0] _d___pip_10_1_5___stage___block_6_v;
reg signed [15:0] _q___pip_10_1_5___stage___block_6_v;
reg signed [15:0] _d___pip_10_1_6___stage___block_6_v;
reg signed [15:0] _q___pip_10_1_6___stage___block_6_v;
reg signed [15:0] _d___pip_10_1_7___stage___block_6_v;
reg signed [15:0] _q___pip_10_1_7___stage___block_6_v;
reg signed [15:0] _d___pip_10_1_8___stage___block_6_v;
reg signed [15:0] _q___pip_10_1_8___stage___block_6_v;
reg signed [15:0] _d___pip_10_1_9___stage___block_6_v;
reg signed [15:0] _q___pip_10_1_9___stage___block_6_v;
reg signed [15:0] _d___pip_10_1_10___stage___block_6_v;
reg signed [15:0] _q___pip_10_1_10___stage___block_6_v;
reg signed [15:0] _d___pip_10_1_11___stage___block_6_v;
reg signed [15:0] _q___pip_10_1_11___stage___block_6_v;
reg signed [15:0] _d___pip_10_1_12___stage___block_6_v;
reg signed [15:0] _q___pip_10_1_12___stage___block_6_v;
reg signed [15:0] _d___pip_10_1_13___stage___block_6_v;
reg signed [15:0] _q___pip_10_1_13___stage___block_6_v;
reg signed [15:0] _d___pip_10_1_14___stage___block_6_v;
reg signed [15:0] _q___pip_10_1_14___stage___block_6_v;
reg signed [15:0] _d___pip_10_1_15___stage___block_6_v;
reg signed [15:0] _q___pip_10_1_15___stage___block_6_v;
reg signed [15:0] _d___pip_10_1_16___stage___block_6_v;
reg signed [15:0] _q___pip_10_1_16___stage___block_6_v;
reg signed [15:0] _d___pip_10_1_17___stage___block_6_v;
reg signed [15:0] _q___pip_10_1_17___stage___block_6_v;
reg signed [15:0] _d___pip_10_1_18___stage___block_6_v;
reg signed [15:0] _q___pip_10_1_18___stage___block_6_v;
reg  [21:0] _d___pip_10_1_1___stage___block_6_v2;
reg  [21:0] _q___pip_10_1_1___stage___block_6_v2;
reg  [21:0] _d___pip_10_1_2___stage___block_6_v2;
reg  [21:0] _q___pip_10_1_2___stage___block_6_v2;
reg  [21:0] _d___pip_10_1_3___stage___block_6_v2;
reg  [21:0] _q___pip_10_1_3___stage___block_6_v2;
reg  [21:0] _d___pip_10_1_4___stage___block_6_v2;
reg  [21:0] _q___pip_10_1_4___stage___block_6_v2;
reg  [21:0] _d___pip_10_1_5___stage___block_6_v2;
reg  [21:0] _q___pip_10_1_5___stage___block_6_v2;
reg  [21:0] _d___pip_10_1_6___stage___block_6_v2;
reg  [21:0] _q___pip_10_1_6___stage___block_6_v2;
reg  [21:0] _d___pip_10_1_7___stage___block_6_v2;
reg  [21:0] _q___pip_10_1_7___stage___block_6_v2;
reg  [21:0] _d___pip_10_1_8___stage___block_6_v2;
reg  [21:0] _q___pip_10_1_8___stage___block_6_v2;
reg signed [15:0] _d___pip_10_1_2___stage___block_7_B;
reg signed [15:0] _q___pip_10_1_2___stage___block_7_B;
reg signed [15:0] _d___pip_10_1_3___stage___block_7_B;
reg signed [15:0] _q___pip_10_1_3___stage___block_7_B;
reg signed [15:0] _d___pip_10_1_4___stage___block_7_B;
reg signed [15:0] _q___pip_10_1_4___stage___block_7_B;
reg signed [15:0] _d___pip_10_1_5___stage___block_7_B;
reg signed [15:0] _q___pip_10_1_5___stage___block_7_B;
reg signed [15:0] _d___pip_10_1_6___stage___block_7_B;
reg signed [15:0] _q___pip_10_1_6___stage___block_7_B;
reg signed [15:0] _d___pip_10_1_7___stage___block_7_B;
reg signed [15:0] _q___pip_10_1_7___stage___block_7_B;
reg signed [15:0] _d___pip_10_1_2___stage___block_7_R;
reg signed [15:0] _q___pip_10_1_2___stage___block_7_R;
reg signed [15:0] _d___pip_10_1_3___stage___block_7_R;
reg signed [15:0] _q___pip_10_1_3___stage___block_7_R;
reg signed [15:0] _d___pip_10_1_4___stage___block_7_R;
reg signed [15:0] _q___pip_10_1_4___stage___block_7_R;
reg signed [15:0] _d___pip_10_1_5___stage___block_7_R;
reg signed [15:0] _q___pip_10_1_5___stage___block_7_R;
reg signed [15:0] _d___pip_10_1_6___stage___block_7_R;
reg signed [15:0] _q___pip_10_1_6___stage___block_7_R;
reg signed [15:0] _d___pip_10_1_7___stage___block_7_R;
reg signed [15:0] _q___pip_10_1_7___stage___block_7_R;
reg  [21:0] _d___pip_10_1_2___stage___block_7_h;
reg  [21:0] _q___pip_10_1_2___stage___block_7_h;
reg  [21:0] _d___pip_10_1_3___stage___block_7_h;
reg  [21:0] _q___pip_10_1_3___stage___block_7_h;
reg  [21:0] _d___pip_10_1_4___stage___block_7_h;
reg  [21:0] _q___pip_10_1_4___stage___block_7_h;
reg  [21:0] _d___pip_10_1_5___stage___block_7_h;
reg  [21:0] _q___pip_10_1_5___stage___block_7_h;
reg  [21:0] _d___pip_10_1_6___stage___block_7_h;
reg  [21:0] _q___pip_10_1_6___stage___block_7_h;
reg  [21:0] _d___pip_10_1_7___stage___block_7_h;
reg  [21:0] _q___pip_10_1_7___stage___block_7_h;
reg  [21:0] _d___pip_10_1_8___stage___block_7_h;
reg  [21:0] _q___pip_10_1_8___stage___block_7_h;
reg  [21:0] _d___pip_10_1_9___stage___block_7_h;
reg  [21:0] _q___pip_10_1_9___stage___block_7_h;
reg  [21:0] _d___pip_10_1_10___stage___block_7_h;
reg  [21:0] _q___pip_10_1_10___stage___block_7_h;
reg  [21:0] _d___pip_10_1_11___stage___block_7_h;
reg  [21:0] _q___pip_10_1_11___stage___block_7_h;
reg  [21:0] _d___pip_10_1_12___stage___block_7_h;
reg  [21:0] _q___pip_10_1_12___stage___block_7_h;
reg  [21:0] _d___pip_10_1_13___stage___block_7_h;
reg  [21:0] _q___pip_10_1_13___stage___block_7_h;
reg  [21:0] _d___pip_10_1_14___stage___block_7_h;
reg  [21:0] _q___pip_10_1_14___stage___block_7_h;
reg  [21:0] _d___pip_10_1_15___stage___block_7_h;
reg  [21:0] _q___pip_10_1_15___stage___block_7_h;
reg  [21:0] _d___pip_10_1_16___stage___block_7_h;
reg  [21:0] _q___pip_10_1_16___stage___block_7_h;
reg  [21:0] _d___pip_10_1_17___stage___block_7_h;
reg  [21:0] _q___pip_10_1_17___stage___block_7_h;
reg  [21:0] _d___pip_10_1_18___stage___block_7_h;
reg  [21:0] _q___pip_10_1_18___stage___block_7_h;
reg  [21:0] _d___pip_10_1_2___stage___block_7_t;
reg  [21:0] _q___pip_10_1_2___stage___block_7_t;
reg  [21:0] _d___pip_10_1_3___stage___block_7_t;
reg  [21:0] _q___pip_10_1_3___stage___block_7_t;
reg signed [15:0] _d___pip_10_1_3___stage___block_8_p;
reg signed [15:0] _q___pip_10_1_3___stage___block_8_p;
reg signed [15:0] _d___pip_10_1_4___stage___block_8_p;
reg signed [15:0] _q___pip_10_1_4___stage___block_8_p;
reg signed [15:0] _d___pip_10_1_5___stage___block_8_p;
reg signed [15:0] _q___pip_10_1_5___stage___block_8_p;
reg signed [15:0] _d___pip_10_1_6___stage___block_8_p;
reg signed [15:0] _q___pip_10_1_6___stage___block_8_p;
reg signed [15:0] _d___pip_10_1_7___stage___block_8_p;
reg signed [15:0] _q___pip_10_1_7___stage___block_8_p;
reg signed [15:0] _d___pip_10_1_3___stage___block_8_q;
reg signed [15:0] _q___pip_10_1_3___stage___block_8_q;
reg signed [15:0] _d___pip_10_1_4___stage___block_8_q;
reg signed [15:0] _q___pip_10_1_4___stage___block_8_q;
reg signed [15:0] _d___pip_10_1_5___stage___block_8_q;
reg signed [15:0] _q___pip_10_1_5___stage___block_8_q;
reg signed [15:0] _d___pip_10_1_6___stage___block_8_q;
reg signed [15:0] _q___pip_10_1_6___stage___block_8_q;
reg signed [15:0] _d___pip_10_1_7___stage___block_8_q;
reg signed [15:0] _q___pip_10_1_7___stage___block_8_q;
reg signed [15:0] _d___pip_10_1_4___stage___block_9_w;
reg signed [15:0] _q___pip_10_1_4___stage___block_9_w;
reg signed [15:0] _d___pip_10_1_5___stage___block_9_w;
reg signed [15:0] _q___pip_10_1_5___stage___block_9_w;
reg  [7:0] _d_pix_r;
reg  [7:0] _q_pix_r;
reg  [7:0] _d_pix_g;
reg  [7:0] _q_pix_g;
reg  [7:0] _d_pix_b;
reg  [7:0] _q_pix_b;
reg  [1:0] _d__idx_fsm0,_q__idx_fsm0;
reg  _autorun = 0;
reg  [0:0] _d__idx_fsm___pip_10_1_0,_q__idx_fsm___pip_10_1_0;
wire _ready_fsm___pip_10_1_0 = (_q__idx_fsm___pip_10_1_0 == 1) || (_q__idx_fsm___pip_10_1_0 == 0);
reg  [0:0] _d__full_fsm___pip_10_1_0 = 0,_q__full_fsm___pip_10_1_0 = 0;
reg  [0:0] _t__stall_fsm___pip_10_1_0 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_10_1_0 = 0;
reg  [0:0] _d__idx_fsm___pip_10_1_1,_q__idx_fsm___pip_10_1_1;
wire _ready_fsm___pip_10_1_1 = (_q__idx_fsm___pip_10_1_1 == 1) || (_q__idx_fsm___pip_10_1_1 == 0);
reg  [0:0] _d__full_fsm___pip_10_1_1 = 0,_q__full_fsm___pip_10_1_1 = 0;
reg  [0:0] _t__stall_fsm___pip_10_1_1 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_10_1_1 = 0;
reg  [0:0] _d__idx_fsm___pip_10_1_2,_q__idx_fsm___pip_10_1_2;
wire _ready_fsm___pip_10_1_2 = (_q__idx_fsm___pip_10_1_2 == 1) || (_q__idx_fsm___pip_10_1_2 == 0);
reg  [0:0] _d__full_fsm___pip_10_1_2 = 0,_q__full_fsm___pip_10_1_2 = 0;
reg  [0:0] _t__stall_fsm___pip_10_1_2 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_10_1_2 = 0;
reg  [0:0] _d__idx_fsm___pip_10_1_3,_q__idx_fsm___pip_10_1_3;
wire _ready_fsm___pip_10_1_3 = (_q__idx_fsm___pip_10_1_3 == 1) || (_q__idx_fsm___pip_10_1_3 == 0);
reg  [0:0] _d__full_fsm___pip_10_1_3 = 0,_q__full_fsm___pip_10_1_3 = 0;
reg  [0:0] _t__stall_fsm___pip_10_1_3 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_10_1_3 = 0;
reg  [0:0] _d__idx_fsm___pip_10_1_4,_q__idx_fsm___pip_10_1_4;
wire _ready_fsm___pip_10_1_4 = (_q__idx_fsm___pip_10_1_4 == 1) || (_q__idx_fsm___pip_10_1_4 == 0);
reg  [0:0] _d__full_fsm___pip_10_1_4 = 0,_q__full_fsm___pip_10_1_4 = 0;
reg  [0:0] _t__stall_fsm___pip_10_1_4 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_10_1_4 = 0;
reg  [0:0] _d__idx_fsm___pip_10_1_5,_q__idx_fsm___pip_10_1_5;
wire _ready_fsm___pip_10_1_5 = (_q__idx_fsm___pip_10_1_5 == 1) || (_q__idx_fsm___pip_10_1_5 == 0);
reg  [0:0] _d__full_fsm___pip_10_1_5 = 0,_q__full_fsm___pip_10_1_5 = 0;
reg  [0:0] _t__stall_fsm___pip_10_1_5 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_10_1_5 = 0;
reg  [0:0] _d__idx_fsm___pip_10_1_6,_q__idx_fsm___pip_10_1_6;
wire _ready_fsm___pip_10_1_6 = (_q__idx_fsm___pip_10_1_6 == 1) || (_q__idx_fsm___pip_10_1_6 == 0);
reg  [0:0] _d__full_fsm___pip_10_1_6 = 0,_q__full_fsm___pip_10_1_6 = 0;
reg  [0:0] _t__stall_fsm___pip_10_1_6 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_10_1_6 = 0;
reg  [0:0] _d__idx_fsm___pip_10_1_7,_q__idx_fsm___pip_10_1_7;
wire _ready_fsm___pip_10_1_7 = (_q__idx_fsm___pip_10_1_7 == 1) || (_q__idx_fsm___pip_10_1_7 == 0);
reg  [0:0] _d__full_fsm___pip_10_1_7 = 0,_q__full_fsm___pip_10_1_7 = 0;
reg  [0:0] _t__stall_fsm___pip_10_1_7 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_10_1_7 = 0;
reg  [0:0] _d__idx_fsm___pip_10_1_8,_q__idx_fsm___pip_10_1_8;
wire _ready_fsm___pip_10_1_8 = (_q__idx_fsm___pip_10_1_8 == 1) || (_q__idx_fsm___pip_10_1_8 == 0);
reg  [0:0] _d__full_fsm___pip_10_1_8 = 0,_q__full_fsm___pip_10_1_8 = 0;
reg  [0:0] _t__stall_fsm___pip_10_1_8 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_10_1_8 = 0;
reg  [0:0] _d__idx_fsm___pip_10_1_9,_q__idx_fsm___pip_10_1_9;
wire _ready_fsm___pip_10_1_9 = (_q__idx_fsm___pip_10_1_9 == 1) || (_q__idx_fsm___pip_10_1_9 == 0);
reg  [0:0] _d__full_fsm___pip_10_1_9 = 0,_q__full_fsm___pip_10_1_9 = 0;
reg  [0:0] _t__stall_fsm___pip_10_1_9 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_10_1_9 = 0;
reg  [0:0] _d__idx_fsm___pip_10_1_10,_q__idx_fsm___pip_10_1_10;
wire _ready_fsm___pip_10_1_10 = (_q__idx_fsm___pip_10_1_10 == 1) || (_q__idx_fsm___pip_10_1_10 == 0);
reg  [0:0] _d__full_fsm___pip_10_1_10 = 0,_q__full_fsm___pip_10_1_10 = 0;
reg  [0:0] _t__stall_fsm___pip_10_1_10 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_10_1_10 = 0;
reg  [0:0] _d__idx_fsm___pip_10_1_11,_q__idx_fsm___pip_10_1_11;
wire _ready_fsm___pip_10_1_11 = (_q__idx_fsm___pip_10_1_11 == 1) || (_q__idx_fsm___pip_10_1_11 == 0);
reg  [0:0] _d__full_fsm___pip_10_1_11 = 0,_q__full_fsm___pip_10_1_11 = 0;
reg  [0:0] _t__stall_fsm___pip_10_1_11 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_10_1_11 = 0;
reg  [0:0] _d__idx_fsm___pip_10_1_12,_q__idx_fsm___pip_10_1_12;
wire _ready_fsm___pip_10_1_12 = (_q__idx_fsm___pip_10_1_12 == 1) || (_q__idx_fsm___pip_10_1_12 == 0);
reg  [0:0] _d__full_fsm___pip_10_1_12 = 0,_q__full_fsm___pip_10_1_12 = 0;
reg  [0:0] _t__stall_fsm___pip_10_1_12 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_10_1_12 = 0;
reg  [0:0] _d__idx_fsm___pip_10_1_13,_q__idx_fsm___pip_10_1_13;
wire _ready_fsm___pip_10_1_13 = (_q__idx_fsm___pip_10_1_13 == 1) || (_q__idx_fsm___pip_10_1_13 == 0);
reg  [0:0] _d__full_fsm___pip_10_1_13 = 0,_q__full_fsm___pip_10_1_13 = 0;
reg  [0:0] _t__stall_fsm___pip_10_1_13 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_10_1_13 = 0;
reg  [0:0] _d__idx_fsm___pip_10_1_14,_q__idx_fsm___pip_10_1_14;
wire _ready_fsm___pip_10_1_14 = (_q__idx_fsm___pip_10_1_14 == 1) || (_q__idx_fsm___pip_10_1_14 == 0);
reg  [0:0] _d__full_fsm___pip_10_1_14 = 0,_q__full_fsm___pip_10_1_14 = 0;
reg  [0:0] _t__stall_fsm___pip_10_1_14 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_10_1_14 = 0;
reg  [0:0] _d__idx_fsm___pip_10_1_15,_q__idx_fsm___pip_10_1_15;
wire _ready_fsm___pip_10_1_15 = (_q__idx_fsm___pip_10_1_15 == 1) || (_q__idx_fsm___pip_10_1_15 == 0);
reg  [0:0] _d__full_fsm___pip_10_1_15 = 0,_q__full_fsm___pip_10_1_15 = 0;
reg  [0:0] _t__stall_fsm___pip_10_1_15 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_10_1_15 = 0;
reg  [0:0] _d__idx_fsm___pip_10_1_16,_q__idx_fsm___pip_10_1_16;
wire _ready_fsm___pip_10_1_16 = (_q__idx_fsm___pip_10_1_16 == 1) || (_q__idx_fsm___pip_10_1_16 == 0);
reg  [0:0] _d__full_fsm___pip_10_1_16 = 0,_q__full_fsm___pip_10_1_16 = 0;
reg  [0:0] _t__stall_fsm___pip_10_1_16 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_10_1_16 = 0;
reg  [0:0] _d__idx_fsm___pip_10_1_17,_q__idx_fsm___pip_10_1_17;
wire _ready_fsm___pip_10_1_17 = (_q__idx_fsm___pip_10_1_17 == 1) || (_q__idx_fsm___pip_10_1_17 == 0);
reg  [0:0] _d__full_fsm___pip_10_1_17 = 0,_q__full_fsm___pip_10_1_17 = 0;
reg  [0:0] _t__stall_fsm___pip_10_1_17 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_10_1_17 = 0;
reg  [0:0] _d__idx_fsm___pip_10_1_18,_q__idx_fsm___pip_10_1_18;
wire _ready_fsm___pip_10_1_18 = (_q__idx_fsm___pip_10_1_18 == 1) || (_q__idx_fsm___pip_10_1_18 == 0);
reg  [0:0] _d__full_fsm___pip_10_1_18 = 0,_q__full_fsm___pip_10_1_18 = 0;
reg  [0:0] _t__stall_fsm___pip_10_1_18 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_10_1_18 = 0;
reg  [0:0] _d__idx_fsm___pip_10_1_19,_q__idx_fsm___pip_10_1_19;
wire _ready_fsm___pip_10_1_19 = (_q__idx_fsm___pip_10_1_19 == 1) || (_q__idx_fsm___pip_10_1_19 == 0);
reg  [0:0] _d__full_fsm___pip_10_1_19 = 0,_q__full_fsm___pip_10_1_19 = 0;
reg  [0:0] _t__stall_fsm___pip_10_1_19 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_10_1_19 = 0;
reg  [0:0] _d__idx_fsm___pip_10_1_20,_q__idx_fsm___pip_10_1_20;
wire _ready_fsm___pip_10_1_20 = (_q__idx_fsm___pip_10_1_20 == 1) || (_q__idx_fsm___pip_10_1_20 == 0);
reg  [0:0] _d__full_fsm___pip_10_1_20 = 0,_q__full_fsm___pip_10_1_20 = 0;
reg  [0:0] _t__stall_fsm___pip_10_1_20 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_10_1_20 = 0;
assign out_pix_r = _d_pix_r;
assign out_pix_g = _d_pix_g;
assign out_pix_b = _d_pix_b;
assign out_done = (_q__idx_fsm0 == 0) && _autorun
 &&   _q__idx_fsm___pip_10_1_0 == 0 && ~ _q__full_fsm___pip_10_1_0
 &&   _q__idx_fsm___pip_10_1_1 == 0 && ~ _q__full_fsm___pip_10_1_1
 &&   _q__idx_fsm___pip_10_1_2 == 0 && ~ _q__full_fsm___pip_10_1_2
 &&   _q__idx_fsm___pip_10_1_3 == 0 && ~ _q__full_fsm___pip_10_1_3
 &&   _q__idx_fsm___pip_10_1_4 == 0 && ~ _q__full_fsm___pip_10_1_4
 &&   _q__idx_fsm___pip_10_1_5 == 0 && ~ _q__full_fsm___pip_10_1_5
 &&   _q__idx_fsm___pip_10_1_6 == 0 && ~ _q__full_fsm___pip_10_1_6
 &&   _q__idx_fsm___pip_10_1_7 == 0 && ~ _q__full_fsm___pip_10_1_7
 &&   _q__idx_fsm___pip_10_1_8 == 0 && ~ _q__full_fsm___pip_10_1_8
 &&   _q__idx_fsm___pip_10_1_9 == 0 && ~ _q__full_fsm___pip_10_1_9
 &&   _q__idx_fsm___pip_10_1_10 == 0 && ~ _q__full_fsm___pip_10_1_10
 &&   _q__idx_fsm___pip_10_1_11 == 0 && ~ _q__full_fsm___pip_10_1_11
 &&   _q__idx_fsm___pip_10_1_12 == 0 && ~ _q__full_fsm___pip_10_1_12
 &&   _q__idx_fsm___pip_10_1_13 == 0 && ~ _q__full_fsm___pip_10_1_13
 &&   _q__idx_fsm___pip_10_1_14 == 0 && ~ _q__full_fsm___pip_10_1_14
 &&   _q__idx_fsm___pip_10_1_15 == 0 && ~ _q__full_fsm___pip_10_1_15
 &&   _q__idx_fsm___pip_10_1_16 == 0 && ~ _q__full_fsm___pip_10_1_16
 &&   _q__idx_fsm___pip_10_1_17 == 0 && ~ _q__full_fsm___pip_10_1_17
 &&   _q__idx_fsm___pip_10_1_18 == 0 && ~ _q__full_fsm___pip_10_1_18
 &&   _q__idx_fsm___pip_10_1_19 == 0 && ~ _q__full_fsm___pip_10_1_19
 &&   _q__idx_fsm___pip_10_1_20 == 0
;



`ifdef FORMAL
initial begin
assume(reset);
end
assume property($initstate || (out_done));
`endif
always @* begin
_d___pip_10_1_7___stage___block_17_B_s = _q___pip_10_1_7___stage___block_17_B_s;
_d___pip_10_1_8___stage___block_17_B_s = _q___pip_10_1_8___stage___block_17_B_s;
_d___pip_10_1_9___stage___block_17_B_s = _q___pip_10_1_9___stage___block_17_B_s;
_d___pip_10_1_10___stage___block_17_B_s = _q___pip_10_1_10___stage___block_17_B_s;
_d___pip_10_1_11___stage___block_17_B_s = _q___pip_10_1_11___stage___block_17_B_s;
_d___pip_10_1_12___stage___block_17_B_s = _q___pip_10_1_12___stage___block_17_B_s;
_d___pip_10_1_13___stage___block_17_B_s = _q___pip_10_1_13___stage___block_17_B_s;
_d___pip_10_1_14___stage___block_17_B_s = _q___pip_10_1_14___stage___block_17_B_s;
_d___pip_10_1_15___stage___block_17_B_s = _q___pip_10_1_15___stage___block_17_B_s;
_d___pip_10_1_16___stage___block_17_B_s = _q___pip_10_1_16___stage___block_17_B_s;
_d___pip_10_1_17___stage___block_17_B_s = _q___pip_10_1_17___stage___block_17_B_s;
_d___pip_10_1_18___stage___block_17_B_s = _q___pip_10_1_18___stage___block_17_B_s;
_d___pip_10_1_7___stage___block_17_R_s = _q___pip_10_1_7___stage___block_17_R_s;
_d___pip_10_1_8___stage___block_17_R_s = _q___pip_10_1_8___stage___block_17_R_s;
_d___pip_10_1_9___stage___block_17_R_s = _q___pip_10_1_9___stage___block_17_R_s;
_d___pip_10_1_10___stage___block_17_R_s = _q___pip_10_1_10___stage___block_17_R_s;
_d___pip_10_1_11___stage___block_17_R_s = _q___pip_10_1_11___stage___block_17_R_s;
_d___pip_10_1_12___stage___block_17_R_s = _q___pip_10_1_12___stage___block_17_R_s;
_d___pip_10_1_13___stage___block_17_R_s = _q___pip_10_1_13___stage___block_17_R_s;
_d___pip_10_1_14___stage___block_17_R_s = _q___pip_10_1_14___stage___block_17_R_s;
_d___pip_10_1_15___stage___block_17_R_s = _q___pip_10_1_15___stage___block_17_R_s;
_d___pip_10_1_16___stage___block_17_R_s = _q___pip_10_1_16___stage___block_17_R_s;
_d___pip_10_1_17___stage___block_17_R_s = _q___pip_10_1_17___stage___block_17_R_s;
_d___pip_10_1_18___stage___block_17_R_s = _q___pip_10_1_18___stage___block_17_R_s;
_d___pip_10_1_8___stage___block_25_B = _q___pip_10_1_8___stage___block_25_B;
_d___pip_10_1_9___stage___block_25_B = _q___pip_10_1_9___stage___block_25_B;
_d___pip_10_1_10___stage___block_25_B = _q___pip_10_1_10___stage___block_25_B;
_d___pip_10_1_11___stage___block_25_B = _q___pip_10_1_11___stage___block_25_B;
_d___pip_10_1_12___stage___block_25_B = _q___pip_10_1_12___stage___block_25_B;
_d___pip_10_1_13___stage___block_25_B = _q___pip_10_1_13___stage___block_25_B;
_d___pip_10_1_14___stage___block_25_B = _q___pip_10_1_14___stage___block_25_B;
_d___pip_10_1_15___stage___block_25_B = _q___pip_10_1_15___stage___block_25_B;
_d___pip_10_1_16___stage___block_25_B = _q___pip_10_1_16___stage___block_25_B;
_d___pip_10_1_17___stage___block_25_B = _q___pip_10_1_17___stage___block_25_B;
_d___pip_10_1_18___stage___block_25_B = _q___pip_10_1_18___stage___block_25_B;
_d___pip_10_1_19___stage___block_25_B = _q___pip_10_1_19___stage___block_25_B;
_d___pip_10_1_8___stage___block_25_R = _q___pip_10_1_8___stage___block_25_R;
_d___pip_10_1_9___stage___block_25_R = _q___pip_10_1_9___stage___block_25_R;
_d___pip_10_1_10___stage___block_25_R = _q___pip_10_1_10___stage___block_25_R;
_d___pip_10_1_11___stage___block_25_R = _q___pip_10_1_11___stage___block_25_R;
_d___pip_10_1_12___stage___block_25_R = _q___pip_10_1_12___stage___block_25_R;
_d___pip_10_1_13___stage___block_25_R = _q___pip_10_1_13___stage___block_25_R;
_d___pip_10_1_14___stage___block_25_R = _q___pip_10_1_14___stage___block_25_R;
_d___pip_10_1_15___stage___block_25_R = _q___pip_10_1_15___stage___block_25_R;
_d___pip_10_1_16___stage___block_25_R = _q___pip_10_1_16___stage___block_25_R;
_d___pip_10_1_17___stage___block_25_R = _q___pip_10_1_17___stage___block_25_R;
_d___pip_10_1_18___stage___block_25_R = _q___pip_10_1_18___stage___block_25_R;
_d___pip_10_1_19___stage___block_25_R = _q___pip_10_1_19___stage___block_25_R;
_d___pip_10_1_8___stage___block_25_c = _q___pip_10_1_8___stage___block_25_c;
_d___pip_10_1_9___stage___block_25_c = _q___pip_10_1_9___stage___block_25_c;
_d___pip_10_1_10___stage___block_25_c = _q___pip_10_1_10___stage___block_25_c;
_d___pip_10_1_11___stage___block_25_c = _q___pip_10_1_11___stage___block_25_c;
_d___pip_10_1_12___stage___block_25_c = _q___pip_10_1_12___stage___block_25_c;
_d___pip_10_1_13___stage___block_25_c = _q___pip_10_1_13___stage___block_25_c;
_d___pip_10_1_14___stage___block_25_c = _q___pip_10_1_14___stage___block_25_c;
_d___pip_10_1_15___stage___block_25_c = _q___pip_10_1_15___stage___block_25_c;
_d___pip_10_1_8___stage___block_25_p = _q___pip_10_1_8___stage___block_25_p;
_d___pip_10_1_9___stage___block_25_p = _q___pip_10_1_9___stage___block_25_p;
_d___pip_10_1_10___stage___block_27_o1 = _q___pip_10_1_10___stage___block_27_o1;
_d___pip_10_1_11___stage___block_27_o1 = _q___pip_10_1_11___stage___block_27_o1;
_d___pip_10_1_11___stage___block_28_o_t1 = _q___pip_10_1_11___stage___block_28_o_t1;
_d___pip_10_1_12___stage___block_28_o_t1 = _q___pip_10_1_12___stage___block_28_o_t1;
_d___pip_10_1_12___stage___block_29_o_t2 = _q___pip_10_1_12___stage___block_29_o_t2;
_d___pip_10_1_13___stage___block_29_o_t2 = _q___pip_10_1_13___stage___block_29_o_t2;
_d___pip_10_1_13___stage___block_30_o = _q___pip_10_1_13___stage___block_30_o;
_d___pip_10_1_14___stage___block_30_o = _q___pip_10_1_14___stage___block_30_o;
_d___pip_10_1_14___stage___block_31_B_g = _q___pip_10_1_14___stage___block_31_B_g;
_d___pip_10_1_15___stage___block_31_B_g = _q___pip_10_1_15___stage___block_31_B_g;
_d___pip_10_1_16___stage___block_31_B_g = _q___pip_10_1_16___stage___block_31_B_g;
_d___pip_10_1_17___stage___block_31_B_g = _q___pip_10_1_17___stage___block_31_B_g;
_d___pip_10_1_18___stage___block_31_B_g = _q___pip_10_1_18___stage___block_31_B_g;
_d___pip_10_1_15___stage___block_39_d = _q___pip_10_1_15___stage___block_39_d;
_d___pip_10_1_16___stage___block_39_d = _q___pip_10_1_16___stage___block_39_d;
_d___pip_10_1_16___stage___block_40_R_g = _q___pip_10_1_16___stage___block_40_R_g;
_d___pip_10_1_17___stage___block_40_R_g = _q___pip_10_1_17___stage___block_40_R_g;
_d___pip_10_1_18___stage___block_40_R_g = _q___pip_10_1_18___stage___block_40_R_g;
_d___pip_10_1_17___stage___block_48_B_k = _q___pip_10_1_17___stage___block_48_B_k;
_d___pip_10_1_18___stage___block_48_B_k = _q___pip_10_1_18___stage___block_48_B_k;
_d___pip_10_1_17___stage___block_48_R_k = _q___pip_10_1_17___stage___block_48_R_k;
_d___pip_10_1_18___stage___block_48_R_k = _q___pip_10_1_18___stage___block_48_R_k;
_d___pip_10_1_0___stage___block_5_x = _q___pip_10_1_0___stage___block_5_x;
_d___pip_10_1_1___stage___block_5_x = _q___pip_10_1_1___stage___block_5_x;
_d___pip_10_1_2___stage___block_5_x = _q___pip_10_1_2___stage___block_5_x;
_d___pip_10_1_3___stage___block_5_x = _q___pip_10_1_3___stage___block_5_x;
_d___pip_10_1_4___stage___block_5_x = _q___pip_10_1_4___stage___block_5_x;
_d___pip_10_1_5___stage___block_5_x = _q___pip_10_1_5___stage___block_5_x;
_d___pip_10_1_6___stage___block_5_x = _q___pip_10_1_6___stage___block_5_x;
_d___pip_10_1_7___stage___block_5_x = _q___pip_10_1_7___stage___block_5_x;
_d___pip_10_1_8___stage___block_5_x = _q___pip_10_1_8___stage___block_5_x;
_d___pip_10_1_9___stage___block_5_x = _q___pip_10_1_9___stage___block_5_x;
_d___pip_10_1_10___stage___block_5_x = _q___pip_10_1_10___stage___block_5_x;
_d___pip_10_1_11___stage___block_5_x = _q___pip_10_1_11___stage___block_5_x;
_d___pip_10_1_12___stage___block_5_x = _q___pip_10_1_12___stage___block_5_x;
_d___pip_10_1_13___stage___block_5_x = _q___pip_10_1_13___stage___block_5_x;
_d___pip_10_1_14___stage___block_5_x = _q___pip_10_1_14___stage___block_5_x;
_d___pip_10_1_15___stage___block_5_x = _q___pip_10_1_15___stage___block_5_x;
_d___pip_10_1_16___stage___block_5_x = _q___pip_10_1_16___stage___block_5_x;
_d___pip_10_1_17___stage___block_5_x = _q___pip_10_1_17___stage___block_5_x;
_d___pip_10_1_0___stage___block_5_y = _q___pip_10_1_0___stage___block_5_y;
_d___pip_10_1_1___stage___block_5_y = _q___pip_10_1_1___stage___block_5_y;
_d___pip_10_1_2___stage___block_5_y = _q___pip_10_1_2___stage___block_5_y;
_d___pip_10_1_3___stage___block_5_y = _q___pip_10_1_3___stage___block_5_y;
_d___pip_10_1_4___stage___block_5_y = _q___pip_10_1_4___stage___block_5_y;
_d___pip_10_1_5___stage___block_5_y = _q___pip_10_1_5___stage___block_5_y;
_d___pip_10_1_6___stage___block_5_y = _q___pip_10_1_6___stage___block_5_y;
_d___pip_10_1_7___stage___block_5_y = _q___pip_10_1_7___stage___block_5_y;
_d___pip_10_1_8___stage___block_5_y = _q___pip_10_1_8___stage___block_5_y;
_d___pip_10_1_9___stage___block_5_y = _q___pip_10_1_9___stage___block_5_y;
_d___pip_10_1_10___stage___block_5_y = _q___pip_10_1_10___stage___block_5_y;
_d___pip_10_1_11___stage___block_5_y = _q___pip_10_1_11___stage___block_5_y;
_d___pip_10_1_12___stage___block_5_y = _q___pip_10_1_12___stage___block_5_y;
_d___pip_10_1_13___stage___block_5_y = _q___pip_10_1_13___stage___block_5_y;
_d___pip_10_1_14___stage___block_5_y = _q___pip_10_1_14___stage___block_5_y;
_d___pip_10_1_15___stage___block_5_y = _q___pip_10_1_15___stage___block_5_y;
_d___pip_10_1_16___stage___block_5_y = _q___pip_10_1_16___stage___block_5_y;
_d___pip_10_1_17___stage___block_5_y = _q___pip_10_1_17___stage___block_5_y;
_d___pip_10_1_19___stage___block_64_b = _q___pip_10_1_19___stage___block_64_b;
_d___pip_10_1_20___stage___block_64_b = _q___pip_10_1_20___stage___block_64_b;
_d___pip_10_1_19___stage___block_64_g = _q___pip_10_1_19___stage___block_64_g;
_d___pip_10_1_20___stage___block_64_g = _q___pip_10_1_20___stage___block_64_g;
_d___pip_10_1_19___stage___block_64_r = _q___pip_10_1_19___stage___block_64_r;
_d___pip_10_1_20___stage___block_64_r = _q___pip_10_1_20___stage___block_64_r;
_d___pip_10_1_1___stage___block_6_u = _q___pip_10_1_1___stage___block_6_u;
_d___pip_10_1_2___stage___block_6_u = _q___pip_10_1_2___stage___block_6_u;
_d___pip_10_1_3___stage___block_6_u = _q___pip_10_1_3___stage___block_6_u;
_d___pip_10_1_4___stage___block_6_u = _q___pip_10_1_4___stage___block_6_u;
_d___pip_10_1_5___stage___block_6_u = _q___pip_10_1_5___stage___block_6_u;
_d___pip_10_1_6___stage___block_6_u = _q___pip_10_1_6___stage___block_6_u;
_d___pip_10_1_7___stage___block_6_u = _q___pip_10_1_7___stage___block_6_u;
_d___pip_10_1_8___stage___block_6_u = _q___pip_10_1_8___stage___block_6_u;
_d___pip_10_1_9___stage___block_6_u = _q___pip_10_1_9___stage___block_6_u;
_d___pip_10_1_10___stage___block_6_u = _q___pip_10_1_10___stage___block_6_u;
_d___pip_10_1_11___stage___block_6_u = _q___pip_10_1_11___stage___block_6_u;
_d___pip_10_1_12___stage___block_6_u = _q___pip_10_1_12___stage___block_6_u;
_d___pip_10_1_13___stage___block_6_u = _q___pip_10_1_13___stage___block_6_u;
_d___pip_10_1_14___stage___block_6_u = _q___pip_10_1_14___stage___block_6_u;
_d___pip_10_1_15___stage___block_6_u = _q___pip_10_1_15___stage___block_6_u;
_d___pip_10_1_1___stage___block_6_u2 = _q___pip_10_1_1___stage___block_6_u2;
_d___pip_10_1_2___stage___block_6_u2 = _q___pip_10_1_2___stage___block_6_u2;
_d___pip_10_1_1___stage___block_6_v = _q___pip_10_1_1___stage___block_6_v;
_d___pip_10_1_2___stage___block_6_v = _q___pip_10_1_2___stage___block_6_v;
_d___pip_10_1_3___stage___block_6_v = _q___pip_10_1_3___stage___block_6_v;
_d___pip_10_1_4___stage___block_6_v = _q___pip_10_1_4___stage___block_6_v;
_d___pip_10_1_5___stage___block_6_v = _q___pip_10_1_5___stage___block_6_v;
_d___pip_10_1_6___stage___block_6_v = _q___pip_10_1_6___stage___block_6_v;
_d___pip_10_1_7___stage___block_6_v = _q___pip_10_1_7___stage___block_6_v;
_d___pip_10_1_8___stage___block_6_v = _q___pip_10_1_8___stage___block_6_v;
_d___pip_10_1_9___stage___block_6_v = _q___pip_10_1_9___stage___block_6_v;
_d___pip_10_1_10___stage___block_6_v = _q___pip_10_1_10___stage___block_6_v;
_d___pip_10_1_11___stage___block_6_v = _q___pip_10_1_11___stage___block_6_v;
_d___pip_10_1_12___stage___block_6_v = _q___pip_10_1_12___stage___block_6_v;
_d___pip_10_1_13___stage___block_6_v = _q___pip_10_1_13___stage___block_6_v;
_d___pip_10_1_14___stage___block_6_v = _q___pip_10_1_14___stage___block_6_v;
_d___pip_10_1_15___stage___block_6_v = _q___pip_10_1_15___stage___block_6_v;
_d___pip_10_1_16___stage___block_6_v = _q___pip_10_1_16___stage___block_6_v;
_d___pip_10_1_17___stage___block_6_v = _q___pip_10_1_17___stage___block_6_v;
_d___pip_10_1_18___stage___block_6_v = _q___pip_10_1_18___stage___block_6_v;
_d___pip_10_1_1___stage___block_6_v2 = _q___pip_10_1_1___stage___block_6_v2;
_d___pip_10_1_2___stage___block_6_v2 = _q___pip_10_1_2___stage___block_6_v2;
_d___pip_10_1_3___stage___block_6_v2 = _q___pip_10_1_3___stage___block_6_v2;
_d___pip_10_1_4___stage___block_6_v2 = _q___pip_10_1_4___stage___block_6_v2;
_d___pip_10_1_5___stage___block_6_v2 = _q___pip_10_1_5___stage___block_6_v2;
_d___pip_10_1_6___stage___block_6_v2 = _q___pip_10_1_6___stage___block_6_v2;
_d___pip_10_1_7___stage___block_6_v2 = _q___pip_10_1_7___stage___block_6_v2;
_d___pip_10_1_8___stage___block_6_v2 = _q___pip_10_1_8___stage___block_6_v2;
_d___pip_10_1_2___stage___block_7_B = _q___pip_10_1_2___stage___block_7_B;
_d___pip_10_1_3___stage___block_7_B = _q___pip_10_1_3___stage___block_7_B;
_d___pip_10_1_4___stage___block_7_B = _q___pip_10_1_4___stage___block_7_B;
_d___pip_10_1_5___stage___block_7_B = _q___pip_10_1_5___stage___block_7_B;
_d___pip_10_1_6___stage___block_7_B = _q___pip_10_1_6___stage___block_7_B;
_d___pip_10_1_7___stage___block_7_B = _q___pip_10_1_7___stage___block_7_B;
_d___pip_10_1_2___stage___block_7_R = _q___pip_10_1_2___stage___block_7_R;
_d___pip_10_1_3___stage___block_7_R = _q___pip_10_1_3___stage___block_7_R;
_d___pip_10_1_4___stage___block_7_R = _q___pip_10_1_4___stage___block_7_R;
_d___pip_10_1_5___stage___block_7_R = _q___pip_10_1_5___stage___block_7_R;
_d___pip_10_1_6___stage___block_7_R = _q___pip_10_1_6___stage___block_7_R;
_d___pip_10_1_7___stage___block_7_R = _q___pip_10_1_7___stage___block_7_R;
_d___pip_10_1_2___stage___block_7_h = _q___pip_10_1_2___stage___block_7_h;
_d___pip_10_1_3___stage___block_7_h = _q___pip_10_1_3___stage___block_7_h;
_d___pip_10_1_4___stage___block_7_h = _q___pip_10_1_4___stage___block_7_h;
_d___pip_10_1_5___stage___block_7_h = _q___pip_10_1_5___stage___block_7_h;
_d___pip_10_1_6___stage___block_7_h = _q___pip_10_1_6___stage___block_7_h;
_d___pip_10_1_7___stage___block_7_h = _q___pip_10_1_7___stage___block_7_h;
_d___pip_10_1_8___stage___block_7_h = _q___pip_10_1_8___stage___block_7_h;
_d___pip_10_1_9___stage___block_7_h = _q___pip_10_1_9___stage___block_7_h;
_d___pip_10_1_10___stage___block_7_h = _q___pip_10_1_10___stage___block_7_h;
_d___pip_10_1_11___stage___block_7_h = _q___pip_10_1_11___stage___block_7_h;
_d___pip_10_1_12___stage___block_7_h = _q___pip_10_1_12___stage___block_7_h;
_d___pip_10_1_13___stage___block_7_h = _q___pip_10_1_13___stage___block_7_h;
_d___pip_10_1_14___stage___block_7_h = _q___pip_10_1_14___stage___block_7_h;
_d___pip_10_1_15___stage___block_7_h = _q___pip_10_1_15___stage___block_7_h;
_d___pip_10_1_16___stage___block_7_h = _q___pip_10_1_16___stage___block_7_h;
_d___pip_10_1_17___stage___block_7_h = _q___pip_10_1_17___stage___block_7_h;
_d___pip_10_1_18___stage___block_7_h = _q___pip_10_1_18___stage___block_7_h;
_d___pip_10_1_2___stage___block_7_t = _q___pip_10_1_2___stage___block_7_t;
_d___pip_10_1_3___stage___block_7_t = _q___pip_10_1_3___stage___block_7_t;
_d___pip_10_1_3___stage___block_8_p = _q___pip_10_1_3___stage___block_8_p;
_d___pip_10_1_4___stage___block_8_p = _q___pip_10_1_4___stage___block_8_p;
_d___pip_10_1_5___stage___block_8_p = _q___pip_10_1_5___stage___block_8_p;
_d___pip_10_1_6___stage___block_8_p = _q___pip_10_1_6___stage___block_8_p;
_d___pip_10_1_7___stage___block_8_p = _q___pip_10_1_7___stage___block_8_p;
_d___pip_10_1_3___stage___block_8_q = _q___pip_10_1_3___stage___block_8_q;
_d___pip_10_1_4___stage___block_8_q = _q___pip_10_1_4___stage___block_8_q;
_d___pip_10_1_5___stage___block_8_q = _q___pip_10_1_5___stage___block_8_q;
_d___pip_10_1_6___stage___block_8_q = _q___pip_10_1_6___stage___block_8_q;
_d___pip_10_1_7___stage___block_8_q = _q___pip_10_1_7___stage___block_8_q;
_d___pip_10_1_4___stage___block_9_w = _q___pip_10_1_4___stage___block_9_w;
_d___pip_10_1_5___stage___block_9_w = _q___pip_10_1_5___stage___block_9_w;
_d_pix_r = _q_pix_r;
_d_pix_g = _q_pix_g;
_d_pix_b = _q_pix_b;
_d__idx_fsm0 = _q__idx_fsm0;
_d__idx_fsm___pip_10_1_0 = _q__idx_fsm___pip_10_1_0;
_d__full_fsm___pip_10_1_0 = _q__full_fsm___pip_10_1_0;
_t__stall_fsm___pip_10_1_0 = 0;
_t__1stdisable_fsm___pip_10_1_0 = 0;
_d__idx_fsm___pip_10_1_1 = _q__idx_fsm___pip_10_1_1;
_d__full_fsm___pip_10_1_1 = _q__full_fsm___pip_10_1_1;
_t__stall_fsm___pip_10_1_1 = 0;
_t__1stdisable_fsm___pip_10_1_1 = 0;
_d__idx_fsm___pip_10_1_2 = _q__idx_fsm___pip_10_1_2;
_d__full_fsm___pip_10_1_2 = _q__full_fsm___pip_10_1_2;
_t__stall_fsm___pip_10_1_2 = 0;
_t__1stdisable_fsm___pip_10_1_2 = 0;
_d__idx_fsm___pip_10_1_3 = _q__idx_fsm___pip_10_1_3;
_d__full_fsm___pip_10_1_3 = _q__full_fsm___pip_10_1_3;
_t__stall_fsm___pip_10_1_3 = 0;
_t__1stdisable_fsm___pip_10_1_3 = 0;
_d__idx_fsm___pip_10_1_4 = _q__idx_fsm___pip_10_1_4;
_d__full_fsm___pip_10_1_4 = _q__full_fsm___pip_10_1_4;
_t__stall_fsm___pip_10_1_4 = 0;
_t__1stdisable_fsm___pip_10_1_4 = 0;
_d__idx_fsm___pip_10_1_5 = _q__idx_fsm___pip_10_1_5;
_d__full_fsm___pip_10_1_5 = _q__full_fsm___pip_10_1_5;
_t__stall_fsm___pip_10_1_5 = 0;
_t__1stdisable_fsm___pip_10_1_5 = 0;
_d__idx_fsm___pip_10_1_6 = _q__idx_fsm___pip_10_1_6;
_d__full_fsm___pip_10_1_6 = _q__full_fsm___pip_10_1_6;
_t__stall_fsm___pip_10_1_6 = 0;
_t__1stdisable_fsm___pip_10_1_6 = 0;
_d__idx_fsm___pip_10_1_7 = _q__idx_fsm___pip_10_1_7;
_d__full_fsm___pip_10_1_7 = _q__full_fsm___pip_10_1_7;
_t__stall_fsm___pip_10_1_7 = 0;
_t__1stdisable_fsm___pip_10_1_7 = 0;
_d__idx_fsm___pip_10_1_8 = _q__idx_fsm___pip_10_1_8;
_d__full_fsm___pip_10_1_8 = _q__full_fsm___pip_10_1_8;
_t__stall_fsm___pip_10_1_8 = 0;
_t__1stdisable_fsm___pip_10_1_8 = 0;
_d__idx_fsm___pip_10_1_9 = _q__idx_fsm___pip_10_1_9;
_d__full_fsm___pip_10_1_9 = _q__full_fsm___pip_10_1_9;
_t__stall_fsm___pip_10_1_9 = 0;
_t__1stdisable_fsm___pip_10_1_9 = 0;
_d__idx_fsm___pip_10_1_10 = _q__idx_fsm___pip_10_1_10;
_d__full_fsm___pip_10_1_10 = _q__full_fsm___pip_10_1_10;
_t__stall_fsm___pip_10_1_10 = 0;
_t__1stdisable_fsm___pip_10_1_10 = 0;
_d__idx_fsm___pip_10_1_11 = _q__idx_fsm___pip_10_1_11;
_d__full_fsm___pip_10_1_11 = _q__full_fsm___pip_10_1_11;
_t__stall_fsm___pip_10_1_11 = 0;
_t__1stdisable_fsm___pip_10_1_11 = 0;
_d__idx_fsm___pip_10_1_12 = _q__idx_fsm___pip_10_1_12;
_d__full_fsm___pip_10_1_12 = _q__full_fsm___pip_10_1_12;
_t__stall_fsm___pip_10_1_12 = 0;
_t__1stdisable_fsm___pip_10_1_12 = 0;
_d__idx_fsm___pip_10_1_13 = _q__idx_fsm___pip_10_1_13;
_d__full_fsm___pip_10_1_13 = _q__full_fsm___pip_10_1_13;
_t__stall_fsm___pip_10_1_13 = 0;
_t__1stdisable_fsm___pip_10_1_13 = 0;
_d__idx_fsm___pip_10_1_14 = _q__idx_fsm___pip_10_1_14;
_d__full_fsm___pip_10_1_14 = _q__full_fsm___pip_10_1_14;
_t__stall_fsm___pip_10_1_14 = 0;
_t__1stdisable_fsm___pip_10_1_14 = 0;
_d__idx_fsm___pip_10_1_15 = _q__idx_fsm___pip_10_1_15;
_d__full_fsm___pip_10_1_15 = _q__full_fsm___pip_10_1_15;
_t__stall_fsm___pip_10_1_15 = 0;
_t__1stdisable_fsm___pip_10_1_15 = 0;
_d__idx_fsm___pip_10_1_16 = _q__idx_fsm___pip_10_1_16;
_d__full_fsm___pip_10_1_16 = _q__full_fsm___pip_10_1_16;
_t__stall_fsm___pip_10_1_16 = 0;
_t__1stdisable_fsm___pip_10_1_16 = 0;
_d__idx_fsm___pip_10_1_17 = _q__idx_fsm___pip_10_1_17;
_d__full_fsm___pip_10_1_17 = _q__full_fsm___pip_10_1_17;
_t__stall_fsm___pip_10_1_17 = 0;
_t__1stdisable_fsm___pip_10_1_17 = 0;
_d__idx_fsm___pip_10_1_18 = _q__idx_fsm___pip_10_1_18;
_d__full_fsm___pip_10_1_18 = _q__full_fsm___pip_10_1_18;
_t__stall_fsm___pip_10_1_18 = 0;
_t__1stdisable_fsm___pip_10_1_18 = 0;
_d__idx_fsm___pip_10_1_19 = _q__idx_fsm___pip_10_1_19;
_d__full_fsm___pip_10_1_19 = _q__full_fsm___pip_10_1_19;
_t__stall_fsm___pip_10_1_19 = 0;
_t__1stdisable_fsm___pip_10_1_19 = 0;
_d__idx_fsm___pip_10_1_20 = _q__idx_fsm___pip_10_1_20;
_d__full_fsm___pip_10_1_20 = _q__full_fsm___pip_10_1_20;
_t__stall_fsm___pip_10_1_20 = 0;
_t__1stdisable_fsm___pip_10_1_20 = 0;
_t___stage___block_5_x = 0;
_t___stage___block_5_y = 0;
_t___stage___block_6_u = 0;
_t___stage___block_6_v = 0;
_t___stage___block_6_u2 = 0;
_t___stage___block_6_v2 = 0;
_t___stage___block_7_h = 0;
_t___stage___block_7_t = 0;
_t___stage___block_8_p = 0;
_t___stage___block_8_q = 0;
_t___stage___block_9_w = 0;
_t___stage___block_16_o = 0;
_t___stage___block_17_w = 0;
_t___stage___block_17_R_s = 0;
_t___stage___block_17_B_s = 0;
_t___stage___block_25_R = 0;
_t___stage___block_25_p = 0;
_t___stage___block_25_c = 0;
_t___stage___block_27_o1 = 0;
_t___stage___block_28_o_t1 = 0;
_t___stage___block_29_o_t2 = 0;
_t___stage___block_30_o = 0;
_t___stage___block_31_B_g = 0;
_t___stage___block_39_r = 0;
_t___stage___block_39_d = 0;
_t___stage___block_40_R_g = 0;
_t___stage___block_48_R_k = 0;
_t___stage___block_48_B_k = 0;
_t___stage___block_48_c = 0;
_t___stage___block_64_r = 0;
_t___stage___block_64_b = 0;
_t___stage___block_64_G = 0;
_t___stage___block_64_g = 0;
// _always_pre
(* full_case *)
case (_q__idx_fsm0)
1: begin
// _top
_d__idx_fsm0 = 2;
end
2: begin
// __while__block_1
if (1) begin
// __block_2
// __block_4
// --> pipeline __pip_10_1 starts here
_t__1stdisable_fsm___pip_10_1_0 = 0;
// __block_71
// __block_72
_d__idx_fsm0 = 2;
end else begin
// __block_3
_d__idx_fsm0 = 0;
_t__1stdisable_fsm___pip_10_1_0 = 1;
end
end
0: begin 
end
default: begin 
_d__idx_fsm0 = {2{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// ==== pipelines ====
// pipeline
// -------- stage 0
(* full_case *)
case (_q__idx_fsm___pip_10_1_0)
1: begin
if (~_t__1stdisable_fsm___pip_10_1_0) begin 
// __stage___block_5
_t___stage___block_5_x = in_pix_x>>3;

_t___stage___block_5_y = in_pix_y>>3;

// end of pipeline stage
_d__full_fsm___pip_10_1_0 = 1;
end // 7
_d__idx_fsm___pip_10_1_0 = _t__stall_fsm___pip_10_1_0 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_10_1_0 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
if (_q__idx_fsm___pip_10_1_0 == 1  ) begin
_d___pip_10_1_0___stage___block_5_x = _t___stage___block_5_x;
end else begin
_d___pip_10_1_0___stage___block_5_x = _q___pip_10_1_0___stage___block_5_x;
end
if (_q__idx_fsm___pip_10_1_0 == 1  ) begin
_d___pip_10_1_0___stage___block_5_y = _t___stage___block_5_y;
end else begin
_d___pip_10_1_0___stage___block_5_y = _q___pip_10_1_0___stage___block_5_y;
end
// -------- stage 1
(* full_case *)
case (_q__idx_fsm___pip_10_1_1)
1: begin
// __stage___block_6
_t___stage___block_6_u = _q___pip_10_1_1___stage___block_5_x-36;

_t___stage___block_6_v = 18-_q___pip_10_1_1___stage___block_5_y;

_t___stage___block_6_u2 = _t___stage___block_6_u*_t___stage___block_6_u;

_t___stage___block_6_v2 = _t___stage___block_6_v*_t___stage___block_6_v;

// end of pipeline stage
_d__full_fsm___pip_10_1_1 = 1;
_d__idx_fsm___pip_10_1_1 = _t__stall_fsm___pip_10_1_1 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_10_1_1 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
if (_q__idx_fsm___pip_10_1_1 == 1  ) begin
_d___pip_10_1_1___stage___block_6_u2 = _t___stage___block_6_u2;
end else begin
_d___pip_10_1_1___stage___block_6_u2 = _q___pip_10_1_1___stage___block_6_u2;
end
if (_q__idx_fsm___pip_10_1_1 == 1  ) begin
_d___pip_10_1_1___stage___block_6_u = _t___stage___block_6_u;
end else begin
_d___pip_10_1_1___stage___block_6_u = _q___pip_10_1_1___stage___block_6_u;
end
if (_q__idx_fsm___pip_10_1_1 == 1  ) begin
_d___pip_10_1_1___stage___block_6_v = _t___stage___block_6_v;
end else begin
_d___pip_10_1_1___stage___block_6_v = _q___pip_10_1_1___stage___block_6_v;
end
if (_q__idx_fsm___pip_10_1_1 == 1  ) begin
_d___pip_10_1_1___stage___block_6_v2 = _t___stage___block_6_v2;
end else begin
_d___pip_10_1_1___stage___block_6_v2 = _q___pip_10_1_1___stage___block_6_v2;
end
// -------- stage 2
(* full_case *)
case (_q__idx_fsm___pip_10_1_2)
1: begin
// __stage___block_7
// var inits
// --
_t___stage___block_7_h = _q___pip_10_1_2___stage___block_6_u2+_q___pip_10_1_2___stage___block_6_v2;

_t___stage___block_7_t = 5200+(_t___stage___block_7_h<<3);

// end of pipeline stage
_d__full_fsm___pip_10_1_2 = 1;
_d__idx_fsm___pip_10_1_2 = _t__stall_fsm___pip_10_1_2 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_10_1_2 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
if (_q__idx_fsm___pip_10_1_2 == 1  ) begin
_d___pip_10_1_2___stage___block_7_B = _c___stage___block_7_B;
end else begin
_d___pip_10_1_2___stage___block_7_B = _q___pip_10_1_2___stage___block_7_B;
end
if (_q__idx_fsm___pip_10_1_2 == 1  ) begin
_d___pip_10_1_2___stage___block_7_h = _t___stage___block_7_h;
end else begin
_d___pip_10_1_2___stage___block_7_h = _q___pip_10_1_2___stage___block_7_h;
end
if (_q__idx_fsm___pip_10_1_2 == 1  ) begin
_d___pip_10_1_2___stage___block_7_t = _t___stage___block_7_t;
end else begin
_d___pip_10_1_2___stage___block_7_t = _q___pip_10_1_2___stage___block_7_t;
end
if (_q__idx_fsm___pip_10_1_2 == 1  ) begin
_d___pip_10_1_2___stage___block_7_R = _c___stage___block_7_R;
end else begin
_d___pip_10_1_2___stage___block_7_R = _q___pip_10_1_2___stage___block_7_R;
end
// -------- stage 3
(* full_case *)
case (_q__idx_fsm___pip_10_1_3)
1: begin
// __stage___block_8
_t___stage___block_8_p = ($signed(_q___pip_10_1_3___stage___block_7_t)*_q___pip_10_1_3___stage___block_6_u)>>>7;

_t___stage___block_8_q = ($signed(_q___pip_10_1_3___stage___block_7_t)*_q___pip_10_1_3___stage___block_6_v)>>>7;

// end of pipeline stage
_d__full_fsm___pip_10_1_3 = 1;
_d__idx_fsm___pip_10_1_3 = _t__stall_fsm___pip_10_1_3 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_10_1_3 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
if (_q__idx_fsm___pip_10_1_3 == 1  ) begin
_d___pip_10_1_3___stage___block_8_q = _t___stage___block_8_q;
end else begin
_d___pip_10_1_3___stage___block_8_q = _q___pip_10_1_3___stage___block_8_q;
end
if (_q__idx_fsm___pip_10_1_3 == 1  ) begin
_d___pip_10_1_3___stage___block_8_p = _t___stage___block_8_p;
end else begin
_d___pip_10_1_3___stage___block_8_p = _q___pip_10_1_3___stage___block_8_p;
end
// -------- stage 4
(* full_case *)
case (_q__idx_fsm___pip_10_1_4)
1: begin
// __stage___block_9
_t___stage___block_9_w = 18+(((_q___pip_10_1_4___stage___block_8_p*5-_q___pip_10_1_4___stage___block_8_q*13))>>>9);

// end of pipeline stage
_d__full_fsm___pip_10_1_4 = 1;
_d__idx_fsm___pip_10_1_4 = _t__stall_fsm___pip_10_1_4 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_10_1_4 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
if (_q__idx_fsm___pip_10_1_4 == 1  ) begin
_d___pip_10_1_4___stage___block_9_w = _t___stage___block_9_w;
end else begin
_d___pip_10_1_4___stage___block_9_w = _q___pip_10_1_4___stage___block_9_w;
end
// -------- stage 5
(* full_case *)
case (_q__idx_fsm___pip_10_1_5)
1: begin
// __stage___block_10
if (_q___pip_10_1_5___stage___block_9_w>0) begin
// __block_11
// __block_13
_d___pip_10_1_5___stage___block_7_R = _q___pip_10_1_5___stage___block_7_R+_q___pip_10_1_5___stage___block_9_w*_q___pip_10_1_5___stage___block_9_w;

// __block_14
_t__1stdisable_fsm___pip_10_1_0 = 1;
end else begin
// __block_12
_t__1stdisable_fsm___pip_10_1_0 = 1;
end
// 'after'
// __block_15
// end of pipeline stage
_d__full_fsm___pip_10_1_5 = 1;
_d__idx_fsm___pip_10_1_5 = _t__stall_fsm___pip_10_1_5 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_10_1_5 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 6
(* full_case *)
case (_q__idx_fsm___pip_10_1_6)
1: begin
// __stage___block_16
_t___stage___block_16_o = _q___pip_10_1_6___stage___block_8_q+900;

_d___pip_10_1_6___stage___block_7_R = (_q___pip_10_1_6___stage___block_7_R*_t___stage___block_16_o)>>>$signed(12);

_d___pip_10_1_6___stage___block_7_B = (_q___pip_10_1_6___stage___block_7_B*_t___stage___block_16_o)>>>$signed(12);

// end of pipeline stage
_d__full_fsm___pip_10_1_6 = 1;
_d__idx_fsm___pip_10_1_6 = _t__stall_fsm___pip_10_1_6 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_10_1_6 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 7
(* full_case *)
case (_q__idx_fsm___pip_10_1_7)
1: begin
// __stage___block_17
_t___stage___block_17_w = (_q___pip_10_1_7___stage___block_8_p+_q___pip_10_1_7___stage___block_8_q)>>>$signed(3);

if (_q___pip_10_1_7___stage___block_8_p>-_q___pip_10_1_7___stage___block_8_q) begin
// __block_18
// __block_20
_t___stage___block_17_R_s = _q___pip_10_1_7___stage___block_7_R+_t___stage___block_17_w;

_t___stage___block_17_B_s = _q___pip_10_1_7___stage___block_7_B+_t___stage___block_17_w;

// __block_21
_t__1stdisable_fsm___pip_10_1_0 = 1;
end else begin
// __block_19
// __block_22
_t___stage___block_17_R_s = _q___pip_10_1_7___stage___block_7_R;

_t___stage___block_17_B_s = _q___pip_10_1_7___stage___block_7_B;

// __block_23
_t__1stdisable_fsm___pip_10_1_0 = 1;
end
// 'after'
// __block_24
// end of pipeline stage
_d__full_fsm___pip_10_1_7 = 1;
_d__idx_fsm___pip_10_1_7 = _t__stall_fsm___pip_10_1_7 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_10_1_7 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
if (_q__idx_fsm___pip_10_1_7 == 1  ) begin
_d___pip_10_1_7___stage___block_17_B_s = _t___stage___block_17_B_s;
end else begin
_d___pip_10_1_7___stage___block_17_B_s = _q___pip_10_1_7___stage___block_17_B_s;
end
if (_q__idx_fsm___pip_10_1_7 == 1  ) begin
_d___pip_10_1_7___stage___block_17_R_s = _t___stage___block_17_R_s;
end else begin
_d___pip_10_1_7___stage___block_17_R_s = _q___pip_10_1_7___stage___block_17_R_s;
end
// -------- stage 8
(* full_case *)
case (_q__idx_fsm___pip_10_1_8)
1: begin
// __stage___block_25
// var inits
// --
_t___stage___block_25_R = 150+(_q___pip_10_1_8___stage___block_6_v<<1);

_t___stage___block_25_p = _q___pip_10_1_8___stage___block_7_h+(_q___pip_10_1_8___stage___block_6_v2<<3);

_t___stage___block_25_c = 240*(-_q___pip_10_1_8___stage___block_6_v);

// end of pipeline stage
_d__full_fsm___pip_10_1_8 = 1;
_d__idx_fsm___pip_10_1_8 = _t__stall_fsm___pip_10_1_8 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_10_1_8 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
if (_q__idx_fsm___pip_10_1_8 == 1  ) begin
_d___pip_10_1_8___stage___block_25_c = _t___stage___block_25_c;
end else begin
_d___pip_10_1_8___stage___block_25_c = _q___pip_10_1_8___stage___block_25_c;
end
if (_q__idx_fsm___pip_10_1_8 == 1  ) begin
_d___pip_10_1_8___stage___block_25_R = _t___stage___block_25_R;
end else begin
_d___pip_10_1_8___stage___block_25_R = _q___pip_10_1_8___stage___block_25_R;
end
if (_q__idx_fsm___pip_10_1_8 == 1  ) begin
_d___pip_10_1_8___stage___block_25_B = _c___stage___block_25_B;
end else begin
_d___pip_10_1_8___stage___block_25_B = _q___pip_10_1_8___stage___block_25_B;
end
if (_q__idx_fsm___pip_10_1_8 == 1  ) begin
_d___pip_10_1_8___stage___block_25_p = _t___stage___block_25_p;
end else begin
_d___pip_10_1_8___stage___block_25_p = _q___pip_10_1_8___stage___block_25_p;
end
// -------- stage 9
(* full_case *)
case (_q__idx_fsm___pip_10_1_9)
1: begin
// __stage___block_26
_d___pip_10_1_9___stage___block_25_c = _q___pip_10_1_9___stage___block_25_c-_q___pip_10_1_9___stage___block_25_p;

// end of pipeline stage
_d__full_fsm___pip_10_1_9 = 1;
_d__idx_fsm___pip_10_1_9 = _t__stall_fsm___pip_10_1_9 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_10_1_9 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 10
(* full_case *)
case (_q__idx_fsm___pip_10_1_10)
1: begin
// __stage___block_27
_t___stage___block_27_o1 = (25*_q___pip_10_1_10___stage___block_25_c)>>3;

// end of pipeline stage
_d__full_fsm___pip_10_1_10 = 1;
_d__idx_fsm___pip_10_1_10 = _t__stall_fsm___pip_10_1_10 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_10_1_10 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
if (_q__idx_fsm___pip_10_1_10 == 1  ) begin
_d___pip_10_1_10___stage___block_27_o1 = _t___stage___block_27_o1;
end else begin
_d___pip_10_1_10___stage___block_27_o1 = _q___pip_10_1_10___stage___block_27_o1;
end
// -------- stage 11
(* full_case *)
case (_q__idx_fsm___pip_10_1_11)
1: begin
// __stage___block_28
_t___stage___block_28_o_t1 = (7840-_q___pip_10_1_11___stage___block_27_o1);

// end of pipeline stage
_d__full_fsm___pip_10_1_11 = 1;
_d__idx_fsm___pip_10_1_11 = _t__stall_fsm___pip_10_1_11 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_10_1_11 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
if (_q__idx_fsm___pip_10_1_11 == 1  ) begin
_d___pip_10_1_11___stage___block_28_o_t1 = _t___stage___block_28_o_t1;
end else begin
_d___pip_10_1_11___stage___block_28_o_t1 = _q___pip_10_1_11___stage___block_28_o_t1;
end
// -------- stage 12
(* full_case *)
case (_q__idx_fsm___pip_10_1_12)
1: begin
// __stage___block_29
_t___stage___block_29_o_t2 = _q___pip_10_1_12___stage___block_25_c*_q___pip_10_1_12___stage___block_28_o_t1;

// end of pipeline stage
_d__full_fsm___pip_10_1_12 = 1;
_d__idx_fsm___pip_10_1_12 = _t__stall_fsm___pip_10_1_12 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_10_1_12 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
if (_q__idx_fsm___pip_10_1_12 == 1  ) begin
_d___pip_10_1_12___stage___block_29_o_t2 = _t___stage___block_29_o_t2;
end else begin
_d___pip_10_1_12___stage___block_29_o_t2 = _q___pip_10_1_12___stage___block_29_o_t2;
end
// -------- stage 13
(* full_case *)
case (_q__idx_fsm___pip_10_1_13)
1: begin
// __stage___block_30
_t___stage___block_30_o = (_q___pip_10_1_13___stage___block_29_o_t2>>>9)-8560;

// end of pipeline stage
_d__full_fsm___pip_10_1_13 = 1;
_d__idx_fsm___pip_10_1_13 = _t__stall_fsm___pip_10_1_13 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_10_1_13 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
if (_q__idx_fsm___pip_10_1_13 == 1  ) begin
_d___pip_10_1_13___stage___block_30_o = _t___stage___block_30_o;
end else begin
_d___pip_10_1_13___stage___block_30_o = _q___pip_10_1_13___stage___block_30_o;
end
// -------- stage 14
(* full_case *)
case (_q__idx_fsm___pip_10_1_14)
1: begin
// __stage___block_31
if (_q___pip_10_1_14___stage___block_25_c>1200) begin
// __block_32
// __block_34
_d___pip_10_1_14___stage___block_25_R = (_q___pip_10_1_14___stage___block_25_R*_q___pip_10_1_14___stage___block_30_o)>>10;

_t___stage___block_31_B_g = (_q___pip_10_1_14___stage___block_25_B*_q___pip_10_1_14___stage___block_30_o)>>10;

// __block_35
_t__1stdisable_fsm___pip_10_1_0 = 1;
end else begin
// __block_33
// __block_36
_t___stage___block_31_B_g = _q___pip_10_1_14___stage___block_25_B;

// __block_37
_t__1stdisable_fsm___pip_10_1_0 = 1;
end
// 'after'
// __block_38
// end of pipeline stage
_d__full_fsm___pip_10_1_14 = 1;
_d__idx_fsm___pip_10_1_14 = _t__stall_fsm___pip_10_1_14 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_10_1_14 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
if (_q__idx_fsm___pip_10_1_14 == 1  ) begin
_d___pip_10_1_14___stage___block_31_B_g = _t___stage___block_31_B_g;
end else begin
_d___pip_10_1_14___stage___block_31_B_g = _q___pip_10_1_14___stage___block_31_B_g;
end
// -------- stage 15
(* full_case *)
case (_q__idx_fsm___pip_10_1_15)
1: begin
// __stage___block_39
_t___stage___block_39_r = _q___pip_10_1_15___stage___block_25_c+_q___pip_10_1_15___stage___block_6_u*_q___pip_10_1_15___stage___block_6_v;

_t___stage___block_39_d = 3200-_q___pip_10_1_15___stage___block_7_h-(_t___stage___block_39_r<<<1);

// end of pipeline stage
_d__full_fsm___pip_10_1_15 = 1;
_d__idx_fsm___pip_10_1_15 = _t__stall_fsm___pip_10_1_15 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_10_1_15 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
if (_q__idx_fsm___pip_10_1_15 == 1  ) begin
_d___pip_10_1_15___stage___block_39_d = _t___stage___block_39_d;
end else begin
_d___pip_10_1_15___stage___block_39_d = _q___pip_10_1_15___stage___block_39_d;
end
// -------- stage 16
(* full_case *)
case (_q__idx_fsm___pip_10_1_16)
1: begin
// __stage___block_40
if (_q___pip_10_1_16___stage___block_39_d>0) begin
// __block_41
// __block_43
_t___stage___block_40_R_g = _q___pip_10_1_16___stage___block_25_R+_q___pip_10_1_16___stage___block_39_d;

// __block_44
_t__1stdisable_fsm___pip_10_1_0 = 1;
end else begin
// __block_42
// __block_45
_t___stage___block_40_R_g = _q___pip_10_1_16___stage___block_25_R;

// __block_46
_t__1stdisable_fsm___pip_10_1_0 = 1;
end
// 'after'
// __block_47
// end of pipeline stage
_d__full_fsm___pip_10_1_16 = 1;
_d__idx_fsm___pip_10_1_16 = _t__stall_fsm___pip_10_1_16 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_10_1_16 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
if (_q__idx_fsm___pip_10_1_16 == 1  ) begin
_d___pip_10_1_16___stage___block_40_R_g = _t___stage___block_40_R_g;
end else begin
_d___pip_10_1_16___stage___block_40_R_g = _q___pip_10_1_16___stage___block_40_R_g;
end
// -------- stage 17
(* full_case *)
case (_q__idx_fsm___pip_10_1_17)
1: begin
// __stage___block_48
_t___stage___block_48_c = _q___pip_10_1_17___stage___block_5_x+(_q___pip_10_1_17___stage___block_5_y<<2);

_t___stage___block_48_R_k = 132+_t___stage___block_48_c;

_t___stage___block_48_B_k = 192+_t___stage___block_48_c;

// end of pipeline stage
_d__full_fsm___pip_10_1_17 = 1;
_d__idx_fsm___pip_10_1_17 = _t__stall_fsm___pip_10_1_17 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_10_1_17 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
if (_q__idx_fsm___pip_10_1_17 == 1  ) begin
_d___pip_10_1_17___stage___block_48_B_k = _t___stage___block_48_B_k;
end else begin
_d___pip_10_1_17___stage___block_48_B_k = _q___pip_10_1_17___stage___block_48_B_k;
end
if (_q__idx_fsm___pip_10_1_17 == 1  ) begin
_d___pip_10_1_17___stage___block_48_R_k = _t___stage___block_48_R_k;
end else begin
_d___pip_10_1_17___stage___block_48_R_k = _q___pip_10_1_17___stage___block_48_R_k;
end
// -------- stage 18
(* full_case *)
case (_q__idx_fsm___pip_10_1_18)
1: begin
// __stage___block_49
if (_q___pip_10_1_18___stage___block_7_h<200) begin
// __block_50
// __block_52
_d___pip_10_1_18___stage___block_25_R = _q___pip_10_1_18___stage___block_17_R_s;

_d___pip_10_1_18___stage___block_25_B = _q___pip_10_1_18___stage___block_17_B_s;

// __block_53
_t__1stdisable_fsm___pip_10_1_0 = 1;
end else begin
// __block_51
// __block_54
if (_q___pip_10_1_18___stage___block_6_v<0) begin
// __block_55
// __block_57
_d___pip_10_1_18___stage___block_25_R = _q___pip_10_1_18___stage___block_40_R_g;

_d___pip_10_1_18___stage___block_25_B = _q___pip_10_1_18___stage___block_31_B_g;

// __block_58
_t__1stdisable_fsm___pip_10_1_0 = 1;
end else begin
// __block_56
// __block_59
_d___pip_10_1_18___stage___block_25_R = _q___pip_10_1_18___stage___block_48_R_k;

_d___pip_10_1_18___stage___block_25_B = _q___pip_10_1_18___stage___block_48_B_k;

// __block_60
_t__1stdisable_fsm___pip_10_1_0 = 1;
end
// 'after'
// __block_61
// __block_62
_t__1stdisable_fsm___pip_10_1_0 = 1;
end
// 'after'
// __block_63
// end of pipeline stage
_d__full_fsm___pip_10_1_18 = 1;
_d__idx_fsm___pip_10_1_18 = _t__stall_fsm___pip_10_1_18 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_10_1_18 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 19
(* full_case *)
case (_q__idx_fsm___pip_10_1_19)
1: begin
// __stage___block_64
_t___stage___block_64_r = _q___pip_10_1_19___stage___block_25_R<255 ? _q___pip_10_1_19___stage___block_25_R:255;

_t___stage___block_64_b = _q___pip_10_1_19___stage___block_25_B<255 ? _q___pip_10_1_19___stage___block_25_B:255;

_t___stage___block_64_G = (_t___stage___block_64_r*11+5*_t___stage___block_64_b)>>4;

_t___stage___block_64_g = _t___stage___block_64_G<255 ? _t___stage___block_64_G:255;

// end of pipeline stage
_d__full_fsm___pip_10_1_19 = 1;
_d__idx_fsm___pip_10_1_19 = _t__stall_fsm___pip_10_1_19 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_10_1_19 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
if (_q__idx_fsm___pip_10_1_19 == 1  ) begin
_d___pip_10_1_19___stage___block_64_r = _t___stage___block_64_r;
end else begin
_d___pip_10_1_19___stage___block_64_r = _q___pip_10_1_19___stage___block_64_r;
end
if (_q__idx_fsm___pip_10_1_19 == 1  ) begin
_d___pip_10_1_19___stage___block_64_b = _t___stage___block_64_b;
end else begin
_d___pip_10_1_19___stage___block_64_b = _q___pip_10_1_19___stage___block_64_b;
end
if (_q__idx_fsm___pip_10_1_19 == 1  ) begin
_d___pip_10_1_19___stage___block_64_g = _t___stage___block_64_g;
end else begin
_d___pip_10_1_19___stage___block_64_g = _q___pip_10_1_19___stage___block_64_g;
end
// -------- stage 20
(* full_case *)
case (_q__idx_fsm___pip_10_1_20)
1: begin
// __stage___block_65
if (in_pix_x<640) begin
// __block_66
// __block_68
_d_pix_r = _q___pip_10_1_20___stage___block_64_r;

_d_pix_g = _q___pip_10_1_20___stage___block_64_g;

_d_pix_b = _q___pip_10_1_20___stage___block_64_b;

// __block_69
end else begin
// __block_67
end
// 'after'
// __block_70
// end of last pipeline stage
_d__full_fsm___pip_10_1_20 = 1;
_d__idx_fsm___pip_10_1_20 = _t__stall_fsm___pip_10_1_20 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_10_1_20 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// ===================
// _always_post
// pipeline stage triggers
if ( (_ready_fsm___pip_10_1_20)   && (_d__full_fsm___pip_10_1_19)   && (!_t__stall_fsm___pip_10_1_19)   && (!_t__stall_fsm___pip_10_1_20)   ) begin
   _d__idx_fsm___pip_10_1_20 = 1;
   _d__full_fsm___pip_10_1_19 = 0;
end
if ( (_ready_fsm___pip_10_1_19)   && (_d__full_fsm___pip_10_1_18)   && (!_t__stall_fsm___pip_10_1_18)   && (!_d__full_fsm___pip_10_1_19)   && (!_t__stall_fsm___pip_10_1_19)   ) begin
   _d__idx_fsm___pip_10_1_19 = 1;
   _d__full_fsm___pip_10_1_18 = 0;
end
if ( (_ready_fsm___pip_10_1_18)   && (_d__full_fsm___pip_10_1_17)   && (!_t__stall_fsm___pip_10_1_17)   && (!_d__full_fsm___pip_10_1_18)   && (!_t__stall_fsm___pip_10_1_18)   ) begin
   _d__idx_fsm___pip_10_1_18 = 1;
   _d__full_fsm___pip_10_1_17 = 0;
end
if ( (_ready_fsm___pip_10_1_17)   && (_d__full_fsm___pip_10_1_16)   && (!_t__stall_fsm___pip_10_1_16)   && (!_d__full_fsm___pip_10_1_17)   && (!_t__stall_fsm___pip_10_1_17)   ) begin
   _d__idx_fsm___pip_10_1_17 = 1;
   _d__full_fsm___pip_10_1_16 = 0;
end
if ( (_ready_fsm___pip_10_1_16)   && (_d__full_fsm___pip_10_1_15)   && (!_t__stall_fsm___pip_10_1_15)   && (!_d__full_fsm___pip_10_1_16)   && (!_t__stall_fsm___pip_10_1_16)   ) begin
   _d__idx_fsm___pip_10_1_16 = 1;
   _d__full_fsm___pip_10_1_15 = 0;
end
if ( (_ready_fsm___pip_10_1_15)   && (_d__full_fsm___pip_10_1_14)   && (!_t__stall_fsm___pip_10_1_14)   && (!_d__full_fsm___pip_10_1_15)   && (!_t__stall_fsm___pip_10_1_15)   ) begin
   _d__idx_fsm___pip_10_1_15 = 1;
   _d__full_fsm___pip_10_1_14 = 0;
end
if ( (_ready_fsm___pip_10_1_14)   && (_d__full_fsm___pip_10_1_13)   && (!_t__stall_fsm___pip_10_1_13)   && (!_d__full_fsm___pip_10_1_14)   && (!_t__stall_fsm___pip_10_1_14)   ) begin
   _d__idx_fsm___pip_10_1_14 = 1;
   _d__full_fsm___pip_10_1_13 = 0;
end
if ( (_ready_fsm___pip_10_1_13)   && (_d__full_fsm___pip_10_1_12)   && (!_t__stall_fsm___pip_10_1_12)   && (!_d__full_fsm___pip_10_1_13)   && (!_t__stall_fsm___pip_10_1_13)   ) begin
   _d__idx_fsm___pip_10_1_13 = 1;
   _d__full_fsm___pip_10_1_12 = 0;
end
if ( (_ready_fsm___pip_10_1_12)   && (_d__full_fsm___pip_10_1_11)   && (!_t__stall_fsm___pip_10_1_11)   && (!_d__full_fsm___pip_10_1_12)   && (!_t__stall_fsm___pip_10_1_12)   ) begin
   _d__idx_fsm___pip_10_1_12 = 1;
   _d__full_fsm___pip_10_1_11 = 0;
end
if ( (_ready_fsm___pip_10_1_11)   && (_d__full_fsm___pip_10_1_10)   && (!_t__stall_fsm___pip_10_1_10)   && (!_d__full_fsm___pip_10_1_11)   && (!_t__stall_fsm___pip_10_1_11)   ) begin
   _d__idx_fsm___pip_10_1_11 = 1;
   _d__full_fsm___pip_10_1_10 = 0;
end
if ( (_ready_fsm___pip_10_1_10)   && (_d__full_fsm___pip_10_1_9)   && (!_t__stall_fsm___pip_10_1_9)   && (!_d__full_fsm___pip_10_1_10)   && (!_t__stall_fsm___pip_10_1_10)   ) begin
   _d__idx_fsm___pip_10_1_10 = 1;
   _d__full_fsm___pip_10_1_9 = 0;
end
if ( (_ready_fsm___pip_10_1_9)   && (_d__full_fsm___pip_10_1_8)   && (!_t__stall_fsm___pip_10_1_8)   && (!_d__full_fsm___pip_10_1_9)   && (!_t__stall_fsm___pip_10_1_9)   ) begin
   _d__idx_fsm___pip_10_1_9 = 1;
   _d__full_fsm___pip_10_1_8 = 0;
end
if ( (_ready_fsm___pip_10_1_8)   && (_d__full_fsm___pip_10_1_7)   && (!_t__stall_fsm___pip_10_1_7)   && (!_d__full_fsm___pip_10_1_8)   && (!_t__stall_fsm___pip_10_1_8)   ) begin
   _d__idx_fsm___pip_10_1_8 = 1;
   _d__full_fsm___pip_10_1_7 = 0;
end
if ( (_ready_fsm___pip_10_1_7)   && (_d__full_fsm___pip_10_1_6)   && (!_t__stall_fsm___pip_10_1_6)   && (!_d__full_fsm___pip_10_1_7)   && (!_t__stall_fsm___pip_10_1_7)   ) begin
   _d__idx_fsm___pip_10_1_7 = 1;
   _d__full_fsm___pip_10_1_6 = 0;
end
if ( (_ready_fsm___pip_10_1_6)   && (_d__full_fsm___pip_10_1_5)   && (!_t__stall_fsm___pip_10_1_5)   && (!_d__full_fsm___pip_10_1_6)   && (!_t__stall_fsm___pip_10_1_6)   ) begin
   _d__idx_fsm___pip_10_1_6 = 1;
   _d__full_fsm___pip_10_1_5 = 0;
end
if ( (_ready_fsm___pip_10_1_5)   && (_d__full_fsm___pip_10_1_4)   && (!_t__stall_fsm___pip_10_1_4)   && (!_d__full_fsm___pip_10_1_5)   && (!_t__stall_fsm___pip_10_1_5)   ) begin
   _d__idx_fsm___pip_10_1_5 = 1;
   _d__full_fsm___pip_10_1_4 = 0;
end
if ( (_ready_fsm___pip_10_1_4)   && (_d__full_fsm___pip_10_1_3)   && (!_t__stall_fsm___pip_10_1_3)   && (!_d__full_fsm___pip_10_1_4)   && (!_t__stall_fsm___pip_10_1_4)   ) begin
   _d__idx_fsm___pip_10_1_4 = 1;
   _d__full_fsm___pip_10_1_3 = 0;
end
if ( (_ready_fsm___pip_10_1_3)   && (_d__full_fsm___pip_10_1_2)   && (!_t__stall_fsm___pip_10_1_2)   && (!_d__full_fsm___pip_10_1_3)   && (!_t__stall_fsm___pip_10_1_3)   ) begin
   _d__idx_fsm___pip_10_1_3 = 1;
   _d__full_fsm___pip_10_1_2 = 0;
end
if ( (_ready_fsm___pip_10_1_2)   && (_d__full_fsm___pip_10_1_1)   && (!_t__stall_fsm___pip_10_1_1)   && (!_d__full_fsm___pip_10_1_2)   && (!_t__stall_fsm___pip_10_1_2)   ) begin
   _d__idx_fsm___pip_10_1_2 = 1;
   _d__full_fsm___pip_10_1_1 = 0;
end
if ( (_ready_fsm___pip_10_1_1)   && (_d__full_fsm___pip_10_1_0)   && (!_t__stall_fsm___pip_10_1_0)   && (!_d__full_fsm___pip_10_1_1)   && (!_t__stall_fsm___pip_10_1_1)   ) begin
   _d__idx_fsm___pip_10_1_1 = 1;
   _d__full_fsm___pip_10_1_0 = 0;
end
if ( (_ready_fsm___pip_10_1_0)   && ((( ~_autorun ? 1 : _d__idx_fsm0)) == 2)
  && (!_d__full_fsm___pip_10_1_0)   && (!_t__stall_fsm___pip_10_1_0)   ) begin
   _d__idx_fsm___pip_10_1_0 = 1;
end
end

always @(posedge clock) begin
_q___pip_10_1_7___stage___block_17_B_s <= _d___pip_10_1_7___stage___block_17_B_s;
_q___pip_10_1_8___stage___block_17_B_s <= (_d__idx_fsm___pip_10_1_8 == 1 && !_t__stall_fsm___pip_10_1_8) ? _d___pip_10_1_7___stage___block_17_B_s : _d___pip_10_1_8___stage___block_17_B_s;
_q___pip_10_1_9___stage___block_17_B_s <= (_d__idx_fsm___pip_10_1_9 == 1 && !_t__stall_fsm___pip_10_1_9) ? _d___pip_10_1_8___stage___block_17_B_s : _d___pip_10_1_9___stage___block_17_B_s;
_q___pip_10_1_10___stage___block_17_B_s <= (_d__idx_fsm___pip_10_1_10 == 1 && !_t__stall_fsm___pip_10_1_10) ? _d___pip_10_1_9___stage___block_17_B_s : _d___pip_10_1_10___stage___block_17_B_s;
_q___pip_10_1_11___stage___block_17_B_s <= (_d__idx_fsm___pip_10_1_11 == 1 && !_t__stall_fsm___pip_10_1_11) ? _d___pip_10_1_10___stage___block_17_B_s : _d___pip_10_1_11___stage___block_17_B_s;
_q___pip_10_1_12___stage___block_17_B_s <= (_d__idx_fsm___pip_10_1_12 == 1 && !_t__stall_fsm___pip_10_1_12) ? _d___pip_10_1_11___stage___block_17_B_s : _d___pip_10_1_12___stage___block_17_B_s;
_q___pip_10_1_13___stage___block_17_B_s <= (_d__idx_fsm___pip_10_1_13 == 1 && !_t__stall_fsm___pip_10_1_13) ? _d___pip_10_1_12___stage___block_17_B_s : _d___pip_10_1_13___stage___block_17_B_s;
_q___pip_10_1_14___stage___block_17_B_s <= (_d__idx_fsm___pip_10_1_14 == 1 && !_t__stall_fsm___pip_10_1_14) ? _d___pip_10_1_13___stage___block_17_B_s : _d___pip_10_1_14___stage___block_17_B_s;
_q___pip_10_1_15___stage___block_17_B_s <= (_d__idx_fsm___pip_10_1_15 == 1 && !_t__stall_fsm___pip_10_1_15) ? _d___pip_10_1_14___stage___block_17_B_s : _d___pip_10_1_15___stage___block_17_B_s;
_q___pip_10_1_16___stage___block_17_B_s <= (_d__idx_fsm___pip_10_1_16 == 1 && !_t__stall_fsm___pip_10_1_16) ? _d___pip_10_1_15___stage___block_17_B_s : _d___pip_10_1_16___stage___block_17_B_s;
_q___pip_10_1_17___stage___block_17_B_s <= (_d__idx_fsm___pip_10_1_17 == 1 && !_t__stall_fsm___pip_10_1_17) ? _d___pip_10_1_16___stage___block_17_B_s : _d___pip_10_1_17___stage___block_17_B_s;
_q___pip_10_1_18___stage___block_17_B_s <= (_d__idx_fsm___pip_10_1_18 == 1 && !_t__stall_fsm___pip_10_1_18) ? _d___pip_10_1_17___stage___block_17_B_s : _d___pip_10_1_18___stage___block_17_B_s;
_q___pip_10_1_7___stage___block_17_R_s <= _d___pip_10_1_7___stage___block_17_R_s;
_q___pip_10_1_8___stage___block_17_R_s <= (_d__idx_fsm___pip_10_1_8 == 1 && !_t__stall_fsm___pip_10_1_8) ? _d___pip_10_1_7___stage___block_17_R_s : _d___pip_10_1_8___stage___block_17_R_s;
_q___pip_10_1_9___stage___block_17_R_s <= (_d__idx_fsm___pip_10_1_9 == 1 && !_t__stall_fsm___pip_10_1_9) ? _d___pip_10_1_8___stage___block_17_R_s : _d___pip_10_1_9___stage___block_17_R_s;
_q___pip_10_1_10___stage___block_17_R_s <= (_d__idx_fsm___pip_10_1_10 == 1 && !_t__stall_fsm___pip_10_1_10) ? _d___pip_10_1_9___stage___block_17_R_s : _d___pip_10_1_10___stage___block_17_R_s;
_q___pip_10_1_11___stage___block_17_R_s <= (_d__idx_fsm___pip_10_1_11 == 1 && !_t__stall_fsm___pip_10_1_11) ? _d___pip_10_1_10___stage___block_17_R_s : _d___pip_10_1_11___stage___block_17_R_s;
_q___pip_10_1_12___stage___block_17_R_s <= (_d__idx_fsm___pip_10_1_12 == 1 && !_t__stall_fsm___pip_10_1_12) ? _d___pip_10_1_11___stage___block_17_R_s : _d___pip_10_1_12___stage___block_17_R_s;
_q___pip_10_1_13___stage___block_17_R_s <= (_d__idx_fsm___pip_10_1_13 == 1 && !_t__stall_fsm___pip_10_1_13) ? _d___pip_10_1_12___stage___block_17_R_s : _d___pip_10_1_13___stage___block_17_R_s;
_q___pip_10_1_14___stage___block_17_R_s <= (_d__idx_fsm___pip_10_1_14 == 1 && !_t__stall_fsm___pip_10_1_14) ? _d___pip_10_1_13___stage___block_17_R_s : _d___pip_10_1_14___stage___block_17_R_s;
_q___pip_10_1_15___stage___block_17_R_s <= (_d__idx_fsm___pip_10_1_15 == 1 && !_t__stall_fsm___pip_10_1_15) ? _d___pip_10_1_14___stage___block_17_R_s : _d___pip_10_1_15___stage___block_17_R_s;
_q___pip_10_1_16___stage___block_17_R_s <= (_d__idx_fsm___pip_10_1_16 == 1 && !_t__stall_fsm___pip_10_1_16) ? _d___pip_10_1_15___stage___block_17_R_s : _d___pip_10_1_16___stage___block_17_R_s;
_q___pip_10_1_17___stage___block_17_R_s <= (_d__idx_fsm___pip_10_1_17 == 1 && !_t__stall_fsm___pip_10_1_17) ? _d___pip_10_1_16___stage___block_17_R_s : _d___pip_10_1_17___stage___block_17_R_s;
_q___pip_10_1_18___stage___block_17_R_s <= (_d__idx_fsm___pip_10_1_18 == 1 && !_t__stall_fsm___pip_10_1_18) ? _d___pip_10_1_17___stage___block_17_R_s : _d___pip_10_1_18___stage___block_17_R_s;
_q___pip_10_1_8___stage___block_25_B <= _d___pip_10_1_8___stage___block_25_B;
_q___pip_10_1_9___stage___block_25_B <= (_d__idx_fsm___pip_10_1_9 == 1 && !_t__stall_fsm___pip_10_1_9) ? _d___pip_10_1_8___stage___block_25_B : _d___pip_10_1_9___stage___block_25_B;
_q___pip_10_1_10___stage___block_25_B <= (_d__idx_fsm___pip_10_1_10 == 1 && !_t__stall_fsm___pip_10_1_10) ? _d___pip_10_1_9___stage___block_25_B : _d___pip_10_1_10___stage___block_25_B;
_q___pip_10_1_11___stage___block_25_B <= (_d__idx_fsm___pip_10_1_11 == 1 && !_t__stall_fsm___pip_10_1_11) ? _d___pip_10_1_10___stage___block_25_B : _d___pip_10_1_11___stage___block_25_B;
_q___pip_10_1_12___stage___block_25_B <= (_d__idx_fsm___pip_10_1_12 == 1 && !_t__stall_fsm___pip_10_1_12) ? _d___pip_10_1_11___stage___block_25_B : _d___pip_10_1_12___stage___block_25_B;
_q___pip_10_1_13___stage___block_25_B <= (_d__idx_fsm___pip_10_1_13 == 1 && !_t__stall_fsm___pip_10_1_13) ? _d___pip_10_1_12___stage___block_25_B : _d___pip_10_1_13___stage___block_25_B;
_q___pip_10_1_14___stage___block_25_B <= (_d__idx_fsm___pip_10_1_14 == 1 && !_t__stall_fsm___pip_10_1_14) ? _d___pip_10_1_13___stage___block_25_B : _d___pip_10_1_14___stage___block_25_B;
_q___pip_10_1_15___stage___block_25_B <= (_d__idx_fsm___pip_10_1_15 == 1 && !_t__stall_fsm___pip_10_1_15) ? _d___pip_10_1_14___stage___block_25_B : _d___pip_10_1_15___stage___block_25_B;
_q___pip_10_1_16___stage___block_25_B <= (_d__idx_fsm___pip_10_1_16 == 1 && !_t__stall_fsm___pip_10_1_16) ? _d___pip_10_1_15___stage___block_25_B : _d___pip_10_1_16___stage___block_25_B;
_q___pip_10_1_17___stage___block_25_B <= (_d__idx_fsm___pip_10_1_17 == 1 && !_t__stall_fsm___pip_10_1_17) ? _d___pip_10_1_16___stage___block_25_B : _d___pip_10_1_17___stage___block_25_B;
_q___pip_10_1_18___stage___block_25_B <= (_d__idx_fsm___pip_10_1_18 == 1 && !_t__stall_fsm___pip_10_1_18) ? _d___pip_10_1_17___stage___block_25_B : _d___pip_10_1_18___stage___block_25_B;
_q___pip_10_1_19___stage___block_25_B <= (_d__idx_fsm___pip_10_1_19 == 1 && !_t__stall_fsm___pip_10_1_19) ? _d___pip_10_1_18___stage___block_25_B : _d___pip_10_1_19___stage___block_25_B;
_q___pip_10_1_8___stage___block_25_R <= _d___pip_10_1_8___stage___block_25_R;
_q___pip_10_1_9___stage___block_25_R <= (_d__idx_fsm___pip_10_1_9 == 1 && !_t__stall_fsm___pip_10_1_9) ? _d___pip_10_1_8___stage___block_25_R : _d___pip_10_1_9___stage___block_25_R;
_q___pip_10_1_10___stage___block_25_R <= (_d__idx_fsm___pip_10_1_10 == 1 && !_t__stall_fsm___pip_10_1_10) ? _d___pip_10_1_9___stage___block_25_R : _d___pip_10_1_10___stage___block_25_R;
_q___pip_10_1_11___stage___block_25_R <= (_d__idx_fsm___pip_10_1_11 == 1 && !_t__stall_fsm___pip_10_1_11) ? _d___pip_10_1_10___stage___block_25_R : _d___pip_10_1_11___stage___block_25_R;
_q___pip_10_1_12___stage___block_25_R <= (_d__idx_fsm___pip_10_1_12 == 1 && !_t__stall_fsm___pip_10_1_12) ? _d___pip_10_1_11___stage___block_25_R : _d___pip_10_1_12___stage___block_25_R;
_q___pip_10_1_13___stage___block_25_R <= (_d__idx_fsm___pip_10_1_13 == 1 && !_t__stall_fsm___pip_10_1_13) ? _d___pip_10_1_12___stage___block_25_R : _d___pip_10_1_13___stage___block_25_R;
_q___pip_10_1_14___stage___block_25_R <= (_d__idx_fsm___pip_10_1_14 == 1 && !_t__stall_fsm___pip_10_1_14) ? _d___pip_10_1_13___stage___block_25_R : _d___pip_10_1_14___stage___block_25_R;
_q___pip_10_1_15___stage___block_25_R <= (_d__idx_fsm___pip_10_1_15 == 1 && !_t__stall_fsm___pip_10_1_15) ? _d___pip_10_1_14___stage___block_25_R : _d___pip_10_1_15___stage___block_25_R;
_q___pip_10_1_16___stage___block_25_R <= (_d__idx_fsm___pip_10_1_16 == 1 && !_t__stall_fsm___pip_10_1_16) ? _d___pip_10_1_15___stage___block_25_R : _d___pip_10_1_16___stage___block_25_R;
_q___pip_10_1_17___stage___block_25_R <= (_d__idx_fsm___pip_10_1_17 == 1 && !_t__stall_fsm___pip_10_1_17) ? _d___pip_10_1_16___stage___block_25_R : _d___pip_10_1_17___stage___block_25_R;
_q___pip_10_1_18___stage___block_25_R <= (_d__idx_fsm___pip_10_1_18 == 1 && !_t__stall_fsm___pip_10_1_18) ? _d___pip_10_1_17___stage___block_25_R : _d___pip_10_1_18___stage___block_25_R;
_q___pip_10_1_19___stage___block_25_R <= (_d__idx_fsm___pip_10_1_19 == 1 && !_t__stall_fsm___pip_10_1_19) ? _d___pip_10_1_18___stage___block_25_R : _d___pip_10_1_19___stage___block_25_R;
_q___pip_10_1_8___stage___block_25_c <= _d___pip_10_1_8___stage___block_25_c;
_q___pip_10_1_9___stage___block_25_c <= (_d__idx_fsm___pip_10_1_9 == 1 && !_t__stall_fsm___pip_10_1_9) ? _d___pip_10_1_8___stage___block_25_c : _d___pip_10_1_9___stage___block_25_c;
_q___pip_10_1_10___stage___block_25_c <= (_d__idx_fsm___pip_10_1_10 == 1 && !_t__stall_fsm___pip_10_1_10) ? _d___pip_10_1_9___stage___block_25_c : _d___pip_10_1_10___stage___block_25_c;
_q___pip_10_1_11___stage___block_25_c <= (_d__idx_fsm___pip_10_1_11 == 1 && !_t__stall_fsm___pip_10_1_11) ? _d___pip_10_1_10___stage___block_25_c : _d___pip_10_1_11___stage___block_25_c;
_q___pip_10_1_12___stage___block_25_c <= (_d__idx_fsm___pip_10_1_12 == 1 && !_t__stall_fsm___pip_10_1_12) ? _d___pip_10_1_11___stage___block_25_c : _d___pip_10_1_12___stage___block_25_c;
_q___pip_10_1_13___stage___block_25_c <= (_d__idx_fsm___pip_10_1_13 == 1 && !_t__stall_fsm___pip_10_1_13) ? _d___pip_10_1_12___stage___block_25_c : _d___pip_10_1_13___stage___block_25_c;
_q___pip_10_1_14___stage___block_25_c <= (_d__idx_fsm___pip_10_1_14 == 1 && !_t__stall_fsm___pip_10_1_14) ? _d___pip_10_1_13___stage___block_25_c : _d___pip_10_1_14___stage___block_25_c;
_q___pip_10_1_15___stage___block_25_c <= (_d__idx_fsm___pip_10_1_15 == 1 && !_t__stall_fsm___pip_10_1_15) ? _d___pip_10_1_14___stage___block_25_c : _d___pip_10_1_15___stage___block_25_c;
_q___pip_10_1_8___stage___block_25_p <= _d___pip_10_1_8___stage___block_25_p;
_q___pip_10_1_9___stage___block_25_p <= (_d__idx_fsm___pip_10_1_9 == 1 && !_t__stall_fsm___pip_10_1_9) ? _d___pip_10_1_8___stage___block_25_p : _d___pip_10_1_9___stage___block_25_p;
_q___pip_10_1_10___stage___block_27_o1 <= _d___pip_10_1_10___stage___block_27_o1;
_q___pip_10_1_11___stage___block_27_o1 <= (_d__idx_fsm___pip_10_1_11 == 1 && !_t__stall_fsm___pip_10_1_11) ? _d___pip_10_1_10___stage___block_27_o1 : _d___pip_10_1_11___stage___block_27_o1;
_q___pip_10_1_11___stage___block_28_o_t1 <= _d___pip_10_1_11___stage___block_28_o_t1;
_q___pip_10_1_12___stage___block_28_o_t1 <= (_d__idx_fsm___pip_10_1_12 == 1 && !_t__stall_fsm___pip_10_1_12) ? _d___pip_10_1_11___stage___block_28_o_t1 : _d___pip_10_1_12___stage___block_28_o_t1;
_q___pip_10_1_12___stage___block_29_o_t2 <= _d___pip_10_1_12___stage___block_29_o_t2;
_q___pip_10_1_13___stage___block_29_o_t2 <= (_d__idx_fsm___pip_10_1_13 == 1 && !_t__stall_fsm___pip_10_1_13) ? _d___pip_10_1_12___stage___block_29_o_t2 : _d___pip_10_1_13___stage___block_29_o_t2;
_q___pip_10_1_13___stage___block_30_o <= _d___pip_10_1_13___stage___block_30_o;
_q___pip_10_1_14___stage___block_30_o <= (_d__idx_fsm___pip_10_1_14 == 1 && !_t__stall_fsm___pip_10_1_14) ? _d___pip_10_1_13___stage___block_30_o : _d___pip_10_1_14___stage___block_30_o;
_q___pip_10_1_14___stage___block_31_B_g <= _d___pip_10_1_14___stage___block_31_B_g;
_q___pip_10_1_15___stage___block_31_B_g <= (_d__idx_fsm___pip_10_1_15 == 1 && !_t__stall_fsm___pip_10_1_15) ? _d___pip_10_1_14___stage___block_31_B_g : _d___pip_10_1_15___stage___block_31_B_g;
_q___pip_10_1_16___stage___block_31_B_g <= (_d__idx_fsm___pip_10_1_16 == 1 && !_t__stall_fsm___pip_10_1_16) ? _d___pip_10_1_15___stage___block_31_B_g : _d___pip_10_1_16___stage___block_31_B_g;
_q___pip_10_1_17___stage___block_31_B_g <= (_d__idx_fsm___pip_10_1_17 == 1 && !_t__stall_fsm___pip_10_1_17) ? _d___pip_10_1_16___stage___block_31_B_g : _d___pip_10_1_17___stage___block_31_B_g;
_q___pip_10_1_18___stage___block_31_B_g <= (_d__idx_fsm___pip_10_1_18 == 1 && !_t__stall_fsm___pip_10_1_18) ? _d___pip_10_1_17___stage___block_31_B_g : _d___pip_10_1_18___stage___block_31_B_g;
_q___pip_10_1_15___stage___block_39_d <= _d___pip_10_1_15___stage___block_39_d;
_q___pip_10_1_16___stage___block_39_d <= (_d__idx_fsm___pip_10_1_16 == 1 && !_t__stall_fsm___pip_10_1_16) ? _d___pip_10_1_15___stage___block_39_d : _d___pip_10_1_16___stage___block_39_d;
_q___pip_10_1_16___stage___block_40_R_g <= _d___pip_10_1_16___stage___block_40_R_g;
_q___pip_10_1_17___stage___block_40_R_g <= (_d__idx_fsm___pip_10_1_17 == 1 && !_t__stall_fsm___pip_10_1_17) ? _d___pip_10_1_16___stage___block_40_R_g : _d___pip_10_1_17___stage___block_40_R_g;
_q___pip_10_1_18___stage___block_40_R_g <= (_d__idx_fsm___pip_10_1_18 == 1 && !_t__stall_fsm___pip_10_1_18) ? _d___pip_10_1_17___stage___block_40_R_g : _d___pip_10_1_18___stage___block_40_R_g;
_q___pip_10_1_17___stage___block_48_B_k <= _d___pip_10_1_17___stage___block_48_B_k;
_q___pip_10_1_18___stage___block_48_B_k <= (_d__idx_fsm___pip_10_1_18 == 1 && !_t__stall_fsm___pip_10_1_18) ? _d___pip_10_1_17___stage___block_48_B_k : _d___pip_10_1_18___stage___block_48_B_k;
_q___pip_10_1_17___stage___block_48_R_k <= _d___pip_10_1_17___stage___block_48_R_k;
_q___pip_10_1_18___stage___block_48_R_k <= (_d__idx_fsm___pip_10_1_18 == 1 && !_t__stall_fsm___pip_10_1_18) ? _d___pip_10_1_17___stage___block_48_R_k : _d___pip_10_1_18___stage___block_48_R_k;
_q___pip_10_1_0___stage___block_5_x <= _d___pip_10_1_0___stage___block_5_x;
_q___pip_10_1_1___stage___block_5_x <= (_d__idx_fsm___pip_10_1_1 == 1 && !_t__stall_fsm___pip_10_1_1) ? _d___pip_10_1_0___stage___block_5_x : _d___pip_10_1_1___stage___block_5_x;
_q___pip_10_1_2___stage___block_5_x <= (_d__idx_fsm___pip_10_1_2 == 1 && !_t__stall_fsm___pip_10_1_2) ? _d___pip_10_1_1___stage___block_5_x : _d___pip_10_1_2___stage___block_5_x;
_q___pip_10_1_3___stage___block_5_x <= (_d__idx_fsm___pip_10_1_3 == 1 && !_t__stall_fsm___pip_10_1_3) ? _d___pip_10_1_2___stage___block_5_x : _d___pip_10_1_3___stage___block_5_x;
_q___pip_10_1_4___stage___block_5_x <= (_d__idx_fsm___pip_10_1_4 == 1 && !_t__stall_fsm___pip_10_1_4) ? _d___pip_10_1_3___stage___block_5_x : _d___pip_10_1_4___stage___block_5_x;
_q___pip_10_1_5___stage___block_5_x <= (_d__idx_fsm___pip_10_1_5 == 1 && !_t__stall_fsm___pip_10_1_5) ? _d___pip_10_1_4___stage___block_5_x : _d___pip_10_1_5___stage___block_5_x;
_q___pip_10_1_6___stage___block_5_x <= (_d__idx_fsm___pip_10_1_6 == 1 && !_t__stall_fsm___pip_10_1_6) ? _d___pip_10_1_5___stage___block_5_x : _d___pip_10_1_6___stage___block_5_x;
_q___pip_10_1_7___stage___block_5_x <= (_d__idx_fsm___pip_10_1_7 == 1 && !_t__stall_fsm___pip_10_1_7) ? _d___pip_10_1_6___stage___block_5_x : _d___pip_10_1_7___stage___block_5_x;
_q___pip_10_1_8___stage___block_5_x <= (_d__idx_fsm___pip_10_1_8 == 1 && !_t__stall_fsm___pip_10_1_8) ? _d___pip_10_1_7___stage___block_5_x : _d___pip_10_1_8___stage___block_5_x;
_q___pip_10_1_9___stage___block_5_x <= (_d__idx_fsm___pip_10_1_9 == 1 && !_t__stall_fsm___pip_10_1_9) ? _d___pip_10_1_8___stage___block_5_x : _d___pip_10_1_9___stage___block_5_x;
_q___pip_10_1_10___stage___block_5_x <= (_d__idx_fsm___pip_10_1_10 == 1 && !_t__stall_fsm___pip_10_1_10) ? _d___pip_10_1_9___stage___block_5_x : _d___pip_10_1_10___stage___block_5_x;
_q___pip_10_1_11___stage___block_5_x <= (_d__idx_fsm___pip_10_1_11 == 1 && !_t__stall_fsm___pip_10_1_11) ? _d___pip_10_1_10___stage___block_5_x : _d___pip_10_1_11___stage___block_5_x;
_q___pip_10_1_12___stage___block_5_x <= (_d__idx_fsm___pip_10_1_12 == 1 && !_t__stall_fsm___pip_10_1_12) ? _d___pip_10_1_11___stage___block_5_x : _d___pip_10_1_12___stage___block_5_x;
_q___pip_10_1_13___stage___block_5_x <= (_d__idx_fsm___pip_10_1_13 == 1 && !_t__stall_fsm___pip_10_1_13) ? _d___pip_10_1_12___stage___block_5_x : _d___pip_10_1_13___stage___block_5_x;
_q___pip_10_1_14___stage___block_5_x <= (_d__idx_fsm___pip_10_1_14 == 1 && !_t__stall_fsm___pip_10_1_14) ? _d___pip_10_1_13___stage___block_5_x : _d___pip_10_1_14___stage___block_5_x;
_q___pip_10_1_15___stage___block_5_x <= (_d__idx_fsm___pip_10_1_15 == 1 && !_t__stall_fsm___pip_10_1_15) ? _d___pip_10_1_14___stage___block_5_x : _d___pip_10_1_15___stage___block_5_x;
_q___pip_10_1_16___stage___block_5_x <= (_d__idx_fsm___pip_10_1_16 == 1 && !_t__stall_fsm___pip_10_1_16) ? _d___pip_10_1_15___stage___block_5_x : _d___pip_10_1_16___stage___block_5_x;
_q___pip_10_1_17___stage___block_5_x <= (_d__idx_fsm___pip_10_1_17 == 1 && !_t__stall_fsm___pip_10_1_17) ? _d___pip_10_1_16___stage___block_5_x : _d___pip_10_1_17___stage___block_5_x;
_q___pip_10_1_0___stage___block_5_y <= _d___pip_10_1_0___stage___block_5_y;
_q___pip_10_1_1___stage___block_5_y <= (_d__idx_fsm___pip_10_1_1 == 1 && !_t__stall_fsm___pip_10_1_1) ? _d___pip_10_1_0___stage___block_5_y : _d___pip_10_1_1___stage___block_5_y;
_q___pip_10_1_2___stage___block_5_y <= (_d__idx_fsm___pip_10_1_2 == 1 && !_t__stall_fsm___pip_10_1_2) ? _d___pip_10_1_1___stage___block_5_y : _d___pip_10_1_2___stage___block_5_y;
_q___pip_10_1_3___stage___block_5_y <= (_d__idx_fsm___pip_10_1_3 == 1 && !_t__stall_fsm___pip_10_1_3) ? _d___pip_10_1_2___stage___block_5_y : _d___pip_10_1_3___stage___block_5_y;
_q___pip_10_1_4___stage___block_5_y <= (_d__idx_fsm___pip_10_1_4 == 1 && !_t__stall_fsm___pip_10_1_4) ? _d___pip_10_1_3___stage___block_5_y : _d___pip_10_1_4___stage___block_5_y;
_q___pip_10_1_5___stage___block_5_y <= (_d__idx_fsm___pip_10_1_5 == 1 && !_t__stall_fsm___pip_10_1_5) ? _d___pip_10_1_4___stage___block_5_y : _d___pip_10_1_5___stage___block_5_y;
_q___pip_10_1_6___stage___block_5_y <= (_d__idx_fsm___pip_10_1_6 == 1 && !_t__stall_fsm___pip_10_1_6) ? _d___pip_10_1_5___stage___block_5_y : _d___pip_10_1_6___stage___block_5_y;
_q___pip_10_1_7___stage___block_5_y <= (_d__idx_fsm___pip_10_1_7 == 1 && !_t__stall_fsm___pip_10_1_7) ? _d___pip_10_1_6___stage___block_5_y : _d___pip_10_1_7___stage___block_5_y;
_q___pip_10_1_8___stage___block_5_y <= (_d__idx_fsm___pip_10_1_8 == 1 && !_t__stall_fsm___pip_10_1_8) ? _d___pip_10_1_7___stage___block_5_y : _d___pip_10_1_8___stage___block_5_y;
_q___pip_10_1_9___stage___block_5_y <= (_d__idx_fsm___pip_10_1_9 == 1 && !_t__stall_fsm___pip_10_1_9) ? _d___pip_10_1_8___stage___block_5_y : _d___pip_10_1_9___stage___block_5_y;
_q___pip_10_1_10___stage___block_5_y <= (_d__idx_fsm___pip_10_1_10 == 1 && !_t__stall_fsm___pip_10_1_10) ? _d___pip_10_1_9___stage___block_5_y : _d___pip_10_1_10___stage___block_5_y;
_q___pip_10_1_11___stage___block_5_y <= (_d__idx_fsm___pip_10_1_11 == 1 && !_t__stall_fsm___pip_10_1_11) ? _d___pip_10_1_10___stage___block_5_y : _d___pip_10_1_11___stage___block_5_y;
_q___pip_10_1_12___stage___block_5_y <= (_d__idx_fsm___pip_10_1_12 == 1 && !_t__stall_fsm___pip_10_1_12) ? _d___pip_10_1_11___stage___block_5_y : _d___pip_10_1_12___stage___block_5_y;
_q___pip_10_1_13___stage___block_5_y <= (_d__idx_fsm___pip_10_1_13 == 1 && !_t__stall_fsm___pip_10_1_13) ? _d___pip_10_1_12___stage___block_5_y : _d___pip_10_1_13___stage___block_5_y;
_q___pip_10_1_14___stage___block_5_y <= (_d__idx_fsm___pip_10_1_14 == 1 && !_t__stall_fsm___pip_10_1_14) ? _d___pip_10_1_13___stage___block_5_y : _d___pip_10_1_14___stage___block_5_y;
_q___pip_10_1_15___stage___block_5_y <= (_d__idx_fsm___pip_10_1_15 == 1 && !_t__stall_fsm___pip_10_1_15) ? _d___pip_10_1_14___stage___block_5_y : _d___pip_10_1_15___stage___block_5_y;
_q___pip_10_1_16___stage___block_5_y <= (_d__idx_fsm___pip_10_1_16 == 1 && !_t__stall_fsm___pip_10_1_16) ? _d___pip_10_1_15___stage___block_5_y : _d___pip_10_1_16___stage___block_5_y;
_q___pip_10_1_17___stage___block_5_y <= (_d__idx_fsm___pip_10_1_17 == 1 && !_t__stall_fsm___pip_10_1_17) ? _d___pip_10_1_16___stage___block_5_y : _d___pip_10_1_17___stage___block_5_y;
_q___pip_10_1_19___stage___block_64_b <= _d___pip_10_1_19___stage___block_64_b;
_q___pip_10_1_20___stage___block_64_b <= (_d__idx_fsm___pip_10_1_20 == 1 && !_t__stall_fsm___pip_10_1_20) ? _d___pip_10_1_19___stage___block_64_b : _d___pip_10_1_20___stage___block_64_b;
_q___pip_10_1_19___stage___block_64_g <= _d___pip_10_1_19___stage___block_64_g;
_q___pip_10_1_20___stage___block_64_g <= (_d__idx_fsm___pip_10_1_20 == 1 && !_t__stall_fsm___pip_10_1_20) ? _d___pip_10_1_19___stage___block_64_g : _d___pip_10_1_20___stage___block_64_g;
_q___pip_10_1_19___stage___block_64_r <= _d___pip_10_1_19___stage___block_64_r;
_q___pip_10_1_20___stage___block_64_r <= (_d__idx_fsm___pip_10_1_20 == 1 && !_t__stall_fsm___pip_10_1_20) ? _d___pip_10_1_19___stage___block_64_r : _d___pip_10_1_20___stage___block_64_r;
_q___pip_10_1_1___stage___block_6_u <= _d___pip_10_1_1___stage___block_6_u;
_q___pip_10_1_2___stage___block_6_u <= (_d__idx_fsm___pip_10_1_2 == 1 && !_t__stall_fsm___pip_10_1_2) ? _d___pip_10_1_1___stage___block_6_u : _d___pip_10_1_2___stage___block_6_u;
_q___pip_10_1_3___stage___block_6_u <= (_d__idx_fsm___pip_10_1_3 == 1 && !_t__stall_fsm___pip_10_1_3) ? _d___pip_10_1_2___stage___block_6_u : _d___pip_10_1_3___stage___block_6_u;
_q___pip_10_1_4___stage___block_6_u <= (_d__idx_fsm___pip_10_1_4 == 1 && !_t__stall_fsm___pip_10_1_4) ? _d___pip_10_1_3___stage___block_6_u : _d___pip_10_1_4___stage___block_6_u;
_q___pip_10_1_5___stage___block_6_u <= (_d__idx_fsm___pip_10_1_5 == 1 && !_t__stall_fsm___pip_10_1_5) ? _d___pip_10_1_4___stage___block_6_u : _d___pip_10_1_5___stage___block_6_u;
_q___pip_10_1_6___stage___block_6_u <= (_d__idx_fsm___pip_10_1_6 == 1 && !_t__stall_fsm___pip_10_1_6) ? _d___pip_10_1_5___stage___block_6_u : _d___pip_10_1_6___stage___block_6_u;
_q___pip_10_1_7___stage___block_6_u <= (_d__idx_fsm___pip_10_1_7 == 1 && !_t__stall_fsm___pip_10_1_7) ? _d___pip_10_1_6___stage___block_6_u : _d___pip_10_1_7___stage___block_6_u;
_q___pip_10_1_8___stage___block_6_u <= (_d__idx_fsm___pip_10_1_8 == 1 && !_t__stall_fsm___pip_10_1_8) ? _d___pip_10_1_7___stage___block_6_u : _d___pip_10_1_8___stage___block_6_u;
_q___pip_10_1_9___stage___block_6_u <= (_d__idx_fsm___pip_10_1_9 == 1 && !_t__stall_fsm___pip_10_1_9) ? _d___pip_10_1_8___stage___block_6_u : _d___pip_10_1_9___stage___block_6_u;
_q___pip_10_1_10___stage___block_6_u <= (_d__idx_fsm___pip_10_1_10 == 1 && !_t__stall_fsm___pip_10_1_10) ? _d___pip_10_1_9___stage___block_6_u : _d___pip_10_1_10___stage___block_6_u;
_q___pip_10_1_11___stage___block_6_u <= (_d__idx_fsm___pip_10_1_11 == 1 && !_t__stall_fsm___pip_10_1_11) ? _d___pip_10_1_10___stage___block_6_u : _d___pip_10_1_11___stage___block_6_u;
_q___pip_10_1_12___stage___block_6_u <= (_d__idx_fsm___pip_10_1_12 == 1 && !_t__stall_fsm___pip_10_1_12) ? _d___pip_10_1_11___stage___block_6_u : _d___pip_10_1_12___stage___block_6_u;
_q___pip_10_1_13___stage___block_6_u <= (_d__idx_fsm___pip_10_1_13 == 1 && !_t__stall_fsm___pip_10_1_13) ? _d___pip_10_1_12___stage___block_6_u : _d___pip_10_1_13___stage___block_6_u;
_q___pip_10_1_14___stage___block_6_u <= (_d__idx_fsm___pip_10_1_14 == 1 && !_t__stall_fsm___pip_10_1_14) ? _d___pip_10_1_13___stage___block_6_u : _d___pip_10_1_14___stage___block_6_u;
_q___pip_10_1_15___stage___block_6_u <= (_d__idx_fsm___pip_10_1_15 == 1 && !_t__stall_fsm___pip_10_1_15) ? _d___pip_10_1_14___stage___block_6_u : _d___pip_10_1_15___stage___block_6_u;
_q___pip_10_1_1___stage___block_6_u2 <= _d___pip_10_1_1___stage___block_6_u2;
_q___pip_10_1_2___stage___block_6_u2 <= (_d__idx_fsm___pip_10_1_2 == 1 && !_t__stall_fsm___pip_10_1_2) ? _d___pip_10_1_1___stage___block_6_u2 : _d___pip_10_1_2___stage___block_6_u2;
_q___pip_10_1_1___stage___block_6_v <= _d___pip_10_1_1___stage___block_6_v;
_q___pip_10_1_2___stage___block_6_v <= (_d__idx_fsm___pip_10_1_2 == 1 && !_t__stall_fsm___pip_10_1_2) ? _d___pip_10_1_1___stage___block_6_v : _d___pip_10_1_2___stage___block_6_v;
_q___pip_10_1_3___stage___block_6_v <= (_d__idx_fsm___pip_10_1_3 == 1 && !_t__stall_fsm___pip_10_1_3) ? _d___pip_10_1_2___stage___block_6_v : _d___pip_10_1_3___stage___block_6_v;
_q___pip_10_1_4___stage___block_6_v <= (_d__idx_fsm___pip_10_1_4 == 1 && !_t__stall_fsm___pip_10_1_4) ? _d___pip_10_1_3___stage___block_6_v : _d___pip_10_1_4___stage___block_6_v;
_q___pip_10_1_5___stage___block_6_v <= (_d__idx_fsm___pip_10_1_5 == 1 && !_t__stall_fsm___pip_10_1_5) ? _d___pip_10_1_4___stage___block_6_v : _d___pip_10_1_5___stage___block_6_v;
_q___pip_10_1_6___stage___block_6_v <= (_d__idx_fsm___pip_10_1_6 == 1 && !_t__stall_fsm___pip_10_1_6) ? _d___pip_10_1_5___stage___block_6_v : _d___pip_10_1_6___stage___block_6_v;
_q___pip_10_1_7___stage___block_6_v <= (_d__idx_fsm___pip_10_1_7 == 1 && !_t__stall_fsm___pip_10_1_7) ? _d___pip_10_1_6___stage___block_6_v : _d___pip_10_1_7___stage___block_6_v;
_q___pip_10_1_8___stage___block_6_v <= (_d__idx_fsm___pip_10_1_8 == 1 && !_t__stall_fsm___pip_10_1_8) ? _d___pip_10_1_7___stage___block_6_v : _d___pip_10_1_8___stage___block_6_v;
_q___pip_10_1_9___stage___block_6_v <= (_d__idx_fsm___pip_10_1_9 == 1 && !_t__stall_fsm___pip_10_1_9) ? _d___pip_10_1_8___stage___block_6_v : _d___pip_10_1_9___stage___block_6_v;
_q___pip_10_1_10___stage___block_6_v <= (_d__idx_fsm___pip_10_1_10 == 1 && !_t__stall_fsm___pip_10_1_10) ? _d___pip_10_1_9___stage___block_6_v : _d___pip_10_1_10___stage___block_6_v;
_q___pip_10_1_11___stage___block_6_v <= (_d__idx_fsm___pip_10_1_11 == 1 && !_t__stall_fsm___pip_10_1_11) ? _d___pip_10_1_10___stage___block_6_v : _d___pip_10_1_11___stage___block_6_v;
_q___pip_10_1_12___stage___block_6_v <= (_d__idx_fsm___pip_10_1_12 == 1 && !_t__stall_fsm___pip_10_1_12) ? _d___pip_10_1_11___stage___block_6_v : _d___pip_10_1_12___stage___block_6_v;
_q___pip_10_1_13___stage___block_6_v <= (_d__idx_fsm___pip_10_1_13 == 1 && !_t__stall_fsm___pip_10_1_13) ? _d___pip_10_1_12___stage___block_6_v : _d___pip_10_1_13___stage___block_6_v;
_q___pip_10_1_14___stage___block_6_v <= (_d__idx_fsm___pip_10_1_14 == 1 && !_t__stall_fsm___pip_10_1_14) ? _d___pip_10_1_13___stage___block_6_v : _d___pip_10_1_14___stage___block_6_v;
_q___pip_10_1_15___stage___block_6_v <= (_d__idx_fsm___pip_10_1_15 == 1 && !_t__stall_fsm___pip_10_1_15) ? _d___pip_10_1_14___stage___block_6_v : _d___pip_10_1_15___stage___block_6_v;
_q___pip_10_1_16___stage___block_6_v <= (_d__idx_fsm___pip_10_1_16 == 1 && !_t__stall_fsm___pip_10_1_16) ? _d___pip_10_1_15___stage___block_6_v : _d___pip_10_1_16___stage___block_6_v;
_q___pip_10_1_17___stage___block_6_v <= (_d__idx_fsm___pip_10_1_17 == 1 && !_t__stall_fsm___pip_10_1_17) ? _d___pip_10_1_16___stage___block_6_v : _d___pip_10_1_17___stage___block_6_v;
_q___pip_10_1_18___stage___block_6_v <= (_d__idx_fsm___pip_10_1_18 == 1 && !_t__stall_fsm___pip_10_1_18) ? _d___pip_10_1_17___stage___block_6_v : _d___pip_10_1_18___stage___block_6_v;
_q___pip_10_1_1___stage___block_6_v2 <= _d___pip_10_1_1___stage___block_6_v2;
_q___pip_10_1_2___stage___block_6_v2 <= (_d__idx_fsm___pip_10_1_2 == 1 && !_t__stall_fsm___pip_10_1_2) ? _d___pip_10_1_1___stage___block_6_v2 : _d___pip_10_1_2___stage___block_6_v2;
_q___pip_10_1_3___stage___block_6_v2 <= (_d__idx_fsm___pip_10_1_3 == 1 && !_t__stall_fsm___pip_10_1_3) ? _d___pip_10_1_2___stage___block_6_v2 : _d___pip_10_1_3___stage___block_6_v2;
_q___pip_10_1_4___stage___block_6_v2 <= (_d__idx_fsm___pip_10_1_4 == 1 && !_t__stall_fsm___pip_10_1_4) ? _d___pip_10_1_3___stage___block_6_v2 : _d___pip_10_1_4___stage___block_6_v2;
_q___pip_10_1_5___stage___block_6_v2 <= (_d__idx_fsm___pip_10_1_5 == 1 && !_t__stall_fsm___pip_10_1_5) ? _d___pip_10_1_4___stage___block_6_v2 : _d___pip_10_1_5___stage___block_6_v2;
_q___pip_10_1_6___stage___block_6_v2 <= (_d__idx_fsm___pip_10_1_6 == 1 && !_t__stall_fsm___pip_10_1_6) ? _d___pip_10_1_5___stage___block_6_v2 : _d___pip_10_1_6___stage___block_6_v2;
_q___pip_10_1_7___stage___block_6_v2 <= (_d__idx_fsm___pip_10_1_7 == 1 && !_t__stall_fsm___pip_10_1_7) ? _d___pip_10_1_6___stage___block_6_v2 : _d___pip_10_1_7___stage___block_6_v2;
_q___pip_10_1_8___stage___block_6_v2 <= (_d__idx_fsm___pip_10_1_8 == 1 && !_t__stall_fsm___pip_10_1_8) ? _d___pip_10_1_7___stage___block_6_v2 : _d___pip_10_1_8___stage___block_6_v2;
_q___pip_10_1_2___stage___block_7_B <= _d___pip_10_1_2___stage___block_7_B;
_q___pip_10_1_3___stage___block_7_B <= (_d__idx_fsm___pip_10_1_3 == 1 && !_t__stall_fsm___pip_10_1_3) ? _d___pip_10_1_2___stage___block_7_B : _d___pip_10_1_3___stage___block_7_B;
_q___pip_10_1_4___stage___block_7_B <= (_d__idx_fsm___pip_10_1_4 == 1 && !_t__stall_fsm___pip_10_1_4) ? _d___pip_10_1_3___stage___block_7_B : _d___pip_10_1_4___stage___block_7_B;
_q___pip_10_1_5___stage___block_7_B <= (_d__idx_fsm___pip_10_1_5 == 1 && !_t__stall_fsm___pip_10_1_5) ? _d___pip_10_1_4___stage___block_7_B : _d___pip_10_1_5___stage___block_7_B;
_q___pip_10_1_6___stage___block_7_B <= (_d__idx_fsm___pip_10_1_6 == 1 && !_t__stall_fsm___pip_10_1_6) ? _d___pip_10_1_5___stage___block_7_B : _d___pip_10_1_6___stage___block_7_B;
_q___pip_10_1_7___stage___block_7_B <= (_d__idx_fsm___pip_10_1_7 == 1 && !_t__stall_fsm___pip_10_1_7) ? _d___pip_10_1_6___stage___block_7_B : _d___pip_10_1_7___stage___block_7_B;
_q___pip_10_1_2___stage___block_7_R <= _d___pip_10_1_2___stage___block_7_R;
_q___pip_10_1_3___stage___block_7_R <= (_d__idx_fsm___pip_10_1_3 == 1 && !_t__stall_fsm___pip_10_1_3) ? _d___pip_10_1_2___stage___block_7_R : _d___pip_10_1_3___stage___block_7_R;
_q___pip_10_1_4___stage___block_7_R <= (_d__idx_fsm___pip_10_1_4 == 1 && !_t__stall_fsm___pip_10_1_4) ? _d___pip_10_1_3___stage___block_7_R : _d___pip_10_1_4___stage___block_7_R;
_q___pip_10_1_5___stage___block_7_R <= (_d__idx_fsm___pip_10_1_5 == 1 && !_t__stall_fsm___pip_10_1_5) ? _d___pip_10_1_4___stage___block_7_R : _d___pip_10_1_5___stage___block_7_R;
_q___pip_10_1_6___stage___block_7_R <= (_d__idx_fsm___pip_10_1_6 == 1 && !_t__stall_fsm___pip_10_1_6) ? _d___pip_10_1_5___stage___block_7_R : _d___pip_10_1_6___stage___block_7_R;
_q___pip_10_1_7___stage___block_7_R <= (_d__idx_fsm___pip_10_1_7 == 1 && !_t__stall_fsm___pip_10_1_7) ? _d___pip_10_1_6___stage___block_7_R : _d___pip_10_1_7___stage___block_7_R;
_q___pip_10_1_2___stage___block_7_h <= _d___pip_10_1_2___stage___block_7_h;
_q___pip_10_1_3___stage___block_7_h <= (_d__idx_fsm___pip_10_1_3 == 1 && !_t__stall_fsm___pip_10_1_3) ? _d___pip_10_1_2___stage___block_7_h : _d___pip_10_1_3___stage___block_7_h;
_q___pip_10_1_4___stage___block_7_h <= (_d__idx_fsm___pip_10_1_4 == 1 && !_t__stall_fsm___pip_10_1_4) ? _d___pip_10_1_3___stage___block_7_h : _d___pip_10_1_4___stage___block_7_h;
_q___pip_10_1_5___stage___block_7_h <= (_d__idx_fsm___pip_10_1_5 == 1 && !_t__stall_fsm___pip_10_1_5) ? _d___pip_10_1_4___stage___block_7_h : _d___pip_10_1_5___stage___block_7_h;
_q___pip_10_1_6___stage___block_7_h <= (_d__idx_fsm___pip_10_1_6 == 1 && !_t__stall_fsm___pip_10_1_6) ? _d___pip_10_1_5___stage___block_7_h : _d___pip_10_1_6___stage___block_7_h;
_q___pip_10_1_7___stage___block_7_h <= (_d__idx_fsm___pip_10_1_7 == 1 && !_t__stall_fsm___pip_10_1_7) ? _d___pip_10_1_6___stage___block_7_h : _d___pip_10_1_7___stage___block_7_h;
_q___pip_10_1_8___stage___block_7_h <= (_d__idx_fsm___pip_10_1_8 == 1 && !_t__stall_fsm___pip_10_1_8) ? _d___pip_10_1_7___stage___block_7_h : _d___pip_10_1_8___stage___block_7_h;
_q___pip_10_1_9___stage___block_7_h <= (_d__idx_fsm___pip_10_1_9 == 1 && !_t__stall_fsm___pip_10_1_9) ? _d___pip_10_1_8___stage___block_7_h : _d___pip_10_1_9___stage___block_7_h;
_q___pip_10_1_10___stage___block_7_h <= (_d__idx_fsm___pip_10_1_10 == 1 && !_t__stall_fsm___pip_10_1_10) ? _d___pip_10_1_9___stage___block_7_h : _d___pip_10_1_10___stage___block_7_h;
_q___pip_10_1_11___stage___block_7_h <= (_d__idx_fsm___pip_10_1_11 == 1 && !_t__stall_fsm___pip_10_1_11) ? _d___pip_10_1_10___stage___block_7_h : _d___pip_10_1_11___stage___block_7_h;
_q___pip_10_1_12___stage___block_7_h <= (_d__idx_fsm___pip_10_1_12 == 1 && !_t__stall_fsm___pip_10_1_12) ? _d___pip_10_1_11___stage___block_7_h : _d___pip_10_1_12___stage___block_7_h;
_q___pip_10_1_13___stage___block_7_h <= (_d__idx_fsm___pip_10_1_13 == 1 && !_t__stall_fsm___pip_10_1_13) ? _d___pip_10_1_12___stage___block_7_h : _d___pip_10_1_13___stage___block_7_h;
_q___pip_10_1_14___stage___block_7_h <= (_d__idx_fsm___pip_10_1_14 == 1 && !_t__stall_fsm___pip_10_1_14) ? _d___pip_10_1_13___stage___block_7_h : _d___pip_10_1_14___stage___block_7_h;
_q___pip_10_1_15___stage___block_7_h <= (_d__idx_fsm___pip_10_1_15 == 1 && !_t__stall_fsm___pip_10_1_15) ? _d___pip_10_1_14___stage___block_7_h : _d___pip_10_1_15___stage___block_7_h;
_q___pip_10_1_16___stage___block_7_h <= (_d__idx_fsm___pip_10_1_16 == 1 && !_t__stall_fsm___pip_10_1_16) ? _d___pip_10_1_15___stage___block_7_h : _d___pip_10_1_16___stage___block_7_h;
_q___pip_10_1_17___stage___block_7_h <= (_d__idx_fsm___pip_10_1_17 == 1 && !_t__stall_fsm___pip_10_1_17) ? _d___pip_10_1_16___stage___block_7_h : _d___pip_10_1_17___stage___block_7_h;
_q___pip_10_1_18___stage___block_7_h <= (_d__idx_fsm___pip_10_1_18 == 1 && !_t__stall_fsm___pip_10_1_18) ? _d___pip_10_1_17___stage___block_7_h : _d___pip_10_1_18___stage___block_7_h;
_q___pip_10_1_2___stage___block_7_t <= _d___pip_10_1_2___stage___block_7_t;
_q___pip_10_1_3___stage___block_7_t <= (_d__idx_fsm___pip_10_1_3 == 1 && !_t__stall_fsm___pip_10_1_3) ? _d___pip_10_1_2___stage___block_7_t : _d___pip_10_1_3___stage___block_7_t;
_q___pip_10_1_3___stage___block_8_p <= _d___pip_10_1_3___stage___block_8_p;
_q___pip_10_1_4___stage___block_8_p <= (_d__idx_fsm___pip_10_1_4 == 1 && !_t__stall_fsm___pip_10_1_4) ? _d___pip_10_1_3___stage___block_8_p : _d___pip_10_1_4___stage___block_8_p;
_q___pip_10_1_5___stage___block_8_p <= (_d__idx_fsm___pip_10_1_5 == 1 && !_t__stall_fsm___pip_10_1_5) ? _d___pip_10_1_4___stage___block_8_p : _d___pip_10_1_5___stage___block_8_p;
_q___pip_10_1_6___stage___block_8_p <= (_d__idx_fsm___pip_10_1_6 == 1 && !_t__stall_fsm___pip_10_1_6) ? _d___pip_10_1_5___stage___block_8_p : _d___pip_10_1_6___stage___block_8_p;
_q___pip_10_1_7___stage___block_8_p <= (_d__idx_fsm___pip_10_1_7 == 1 && !_t__stall_fsm___pip_10_1_7) ? _d___pip_10_1_6___stage___block_8_p : _d___pip_10_1_7___stage___block_8_p;
_q___pip_10_1_3___stage___block_8_q <= _d___pip_10_1_3___stage___block_8_q;
_q___pip_10_1_4___stage___block_8_q <= (_d__idx_fsm___pip_10_1_4 == 1 && !_t__stall_fsm___pip_10_1_4) ? _d___pip_10_1_3___stage___block_8_q : _d___pip_10_1_4___stage___block_8_q;
_q___pip_10_1_5___stage___block_8_q <= (_d__idx_fsm___pip_10_1_5 == 1 && !_t__stall_fsm___pip_10_1_5) ? _d___pip_10_1_4___stage___block_8_q : _d___pip_10_1_5___stage___block_8_q;
_q___pip_10_1_6___stage___block_8_q <= (_d__idx_fsm___pip_10_1_6 == 1 && !_t__stall_fsm___pip_10_1_6) ? _d___pip_10_1_5___stage___block_8_q : _d___pip_10_1_6___stage___block_8_q;
_q___pip_10_1_7___stage___block_8_q <= (_d__idx_fsm___pip_10_1_7 == 1 && !_t__stall_fsm___pip_10_1_7) ? _d___pip_10_1_6___stage___block_8_q : _d___pip_10_1_7___stage___block_8_q;
_q___pip_10_1_4___stage___block_9_w <= _d___pip_10_1_4___stage___block_9_w;
_q___pip_10_1_5___stage___block_9_w <= (_d__idx_fsm___pip_10_1_5 == 1 && !_t__stall_fsm___pip_10_1_5) ? _d___pip_10_1_4___stage___block_9_w : _d___pip_10_1_5___stage___block_9_w;
_q_pix_r <= _d_pix_r;
_q_pix_g <= _d_pix_g;
_q_pix_b <= _d_pix_b;
_q__idx_fsm0 <= reset ? 0 : ( ~_autorun ? 1 : _d__idx_fsm0);
_autorun <= reset ? 0 : 1;
_q__idx_fsm___pip_10_1_0 <= reset ? 0 : _d__idx_fsm___pip_10_1_0;
_q__full_fsm___pip_10_1_0 <= reset ? 0 : _d__full_fsm___pip_10_1_0;
_q__idx_fsm___pip_10_1_1 <= reset ? 0 : _d__idx_fsm___pip_10_1_1;
_q__full_fsm___pip_10_1_1 <= reset ? 0 : _d__full_fsm___pip_10_1_1;
_q__idx_fsm___pip_10_1_2 <= reset ? 0 : _d__idx_fsm___pip_10_1_2;
_q__full_fsm___pip_10_1_2 <= reset ? 0 : _d__full_fsm___pip_10_1_2;
_q__idx_fsm___pip_10_1_3 <= reset ? 0 : _d__idx_fsm___pip_10_1_3;
_q__full_fsm___pip_10_1_3 <= reset ? 0 : _d__full_fsm___pip_10_1_3;
_q__idx_fsm___pip_10_1_4 <= reset ? 0 : _d__idx_fsm___pip_10_1_4;
_q__full_fsm___pip_10_1_4 <= reset ? 0 : _d__full_fsm___pip_10_1_4;
_q__idx_fsm___pip_10_1_5 <= reset ? 0 : _d__idx_fsm___pip_10_1_5;
_q__full_fsm___pip_10_1_5 <= reset ? 0 : _d__full_fsm___pip_10_1_5;
_q__idx_fsm___pip_10_1_6 <= reset ? 0 : _d__idx_fsm___pip_10_1_6;
_q__full_fsm___pip_10_1_6 <= reset ? 0 : _d__full_fsm___pip_10_1_6;
_q__idx_fsm___pip_10_1_7 <= reset ? 0 : _d__idx_fsm___pip_10_1_7;
_q__full_fsm___pip_10_1_7 <= reset ? 0 : _d__full_fsm___pip_10_1_7;
_q__idx_fsm___pip_10_1_8 <= reset ? 0 : _d__idx_fsm___pip_10_1_8;
_q__full_fsm___pip_10_1_8 <= reset ? 0 : _d__full_fsm___pip_10_1_8;
_q__idx_fsm___pip_10_1_9 <= reset ? 0 : _d__idx_fsm___pip_10_1_9;
_q__full_fsm___pip_10_1_9 <= reset ? 0 : _d__full_fsm___pip_10_1_9;
_q__idx_fsm___pip_10_1_10 <= reset ? 0 : _d__idx_fsm___pip_10_1_10;
_q__full_fsm___pip_10_1_10 <= reset ? 0 : _d__full_fsm___pip_10_1_10;
_q__idx_fsm___pip_10_1_11 <= reset ? 0 : _d__idx_fsm___pip_10_1_11;
_q__full_fsm___pip_10_1_11 <= reset ? 0 : _d__full_fsm___pip_10_1_11;
_q__idx_fsm___pip_10_1_12 <= reset ? 0 : _d__idx_fsm___pip_10_1_12;
_q__full_fsm___pip_10_1_12 <= reset ? 0 : _d__full_fsm___pip_10_1_12;
_q__idx_fsm___pip_10_1_13 <= reset ? 0 : _d__idx_fsm___pip_10_1_13;
_q__full_fsm___pip_10_1_13 <= reset ? 0 : _d__full_fsm___pip_10_1_13;
_q__idx_fsm___pip_10_1_14 <= reset ? 0 : _d__idx_fsm___pip_10_1_14;
_q__full_fsm___pip_10_1_14 <= reset ? 0 : _d__full_fsm___pip_10_1_14;
_q__idx_fsm___pip_10_1_15 <= reset ? 0 : _d__idx_fsm___pip_10_1_15;
_q__full_fsm___pip_10_1_15 <= reset ? 0 : _d__full_fsm___pip_10_1_15;
_q__idx_fsm___pip_10_1_16 <= reset ? 0 : _d__idx_fsm___pip_10_1_16;
_q__full_fsm___pip_10_1_16 <= reset ? 0 : _d__full_fsm___pip_10_1_16;
_q__idx_fsm___pip_10_1_17 <= reset ? 0 : _d__idx_fsm___pip_10_1_17;
_q__full_fsm___pip_10_1_17 <= reset ? 0 : _d__full_fsm___pip_10_1_17;
_q__idx_fsm___pip_10_1_18 <= reset ? 0 : _d__idx_fsm___pip_10_1_18;
_q__full_fsm___pip_10_1_18 <= reset ? 0 : _d__full_fsm___pip_10_1_18;
_q__idx_fsm___pip_10_1_19 <= reset ? 0 : _d__idx_fsm___pip_10_1_19;
_q__full_fsm___pip_10_1_19 <= reset ? 0 : _d__full_fsm___pip_10_1_19;
_q__idx_fsm___pip_10_1_20 <= reset ? 0 : _d__idx_fsm___pip_10_1_20;
_q__full_fsm___pip_10_1_20 <= reset ? 0 : _d__full_fsm___pip_10_1_20;
end

endmodule

