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
reg signed [23:0] _t___stage___block_5_view_x;
reg signed [23:0] _t___stage___block_5_view_y;
reg  [23:0] _t___stage___block_6_lsq;
reg  [23:0] _t___stage___block_6_inv_l;
reg  [23:0] _t___block_7_c_rsqrt_v;
reg  [18:0] _t___block_7_c_rsqrt_b;
reg  [18:0] _t___block_7_c_rsqrt_t;
reg  [31:0] _t___block_7_c_rsqrt_l;
reg  [18:0] _t___block_7_c_rsqrt_ff;
reg  [4:0] _t___block_7_c_rsqrt_lx;
reg  [31:0] _t___block_7_c_rsqrt_xx;
reg  [4:0] _t___block_8_clog_count;
reg  [3:0] _t___block_9_clz_r_half_count;
reg  [15:0] _t___block_9_clz_r_lhs;
reg  [15:0] _t___block_9_clz_r_rhs;
reg  [15:0] _t___block_9_clz_r_half;
reg  [2:0] _t___block_10_clz_r_half_count;
reg  [7:0] _t___block_10_clz_r_lhs;
reg  [7:0] _t___block_10_clz_r_rhs;
reg  [7:0] _t___block_10_clz_r_half;
reg  [1:0] _t___block_11_clz_r_half_count;
reg  [3:0] _t___block_11_clz_r_lhs;
reg  [3:0] _t___block_11_clz_r_rhs;
reg  [3:0] _t___block_11_clz_r_half;
reg  [0:0] _t___block_12_clz_r_half_count;
reg  [1:0] _t___block_12_clz_r_lhs;
reg  [1:0] _t___block_12_clz_r_rhs;
reg  [1:0] _t___block_12_clz_r_half;
reg  [35:0] _t___stage___block_21_y;
reg  [23:0] _t___block_27_invd;
reg  [0:0] _t___stage___block_28_in_circ;
reg  [7:0] _t___stage___block_28_comp;
reg  [7:0] _t___stage___block_28_shaded;

reg  [23:0] _d_frame = 0;
reg  [23:0] _q_frame = 0;
reg  [0:0] _d___block_9_clz_r_left_empty;
reg  [0:0] _q___block_9_clz_r_left_empty;
reg  [0:0] _d___block_10_clz_r_left_empty;
reg  [0:0] _q___block_10_clz_r_left_empty;
reg  [0:0] _d___block_11_clz_r_left_empty;
reg  [0:0] _q___block_11_clz_r_left_empty;
reg  [0:0] _d___block_12_clz_r_left_empty;
reg  [0:0] _q___block_12_clz_r_left_empty;
reg  [23:0] _d___pip_11_1_8___block_27_invd;
reg  [23:0] _q___pip_11_1_8___block_27_invd;
reg  [23:0] _d___pip_11_1_9___block_27_invd;
reg  [23:0] _q___pip_11_1_9___block_27_invd;
reg  [18:0] _d___pip_11_1_2___block_7_c_rsqrt_b;
reg  [18:0] _q___pip_11_1_2___block_7_c_rsqrt_b;
reg  [18:0] _d___pip_11_1_3___block_7_c_rsqrt_b;
reg  [18:0] _q___pip_11_1_3___block_7_c_rsqrt_b;
reg  [18:0] _d___pip_11_1_2___block_7_c_rsqrt_ff;
reg  [18:0] _q___pip_11_1_2___block_7_c_rsqrt_ff;
reg  [18:0] _d___pip_11_1_3___block_7_c_rsqrt_ff;
reg  [18:0] _q___pip_11_1_3___block_7_c_rsqrt_ff;
reg  [4:0] _d___pip_11_1_1___block_7_c_rsqrt_lx;
reg  [4:0] _q___pip_11_1_1___block_7_c_rsqrt_lx;
reg  [4:0] _d___pip_11_1_2___block_7_c_rsqrt_lx;
reg  [4:0] _q___pip_11_1_2___block_7_c_rsqrt_lx;
reg  [18:0] _d___pip_11_1_2___block_7_c_rsqrt_t;
reg  [18:0] _q___pip_11_1_2___block_7_c_rsqrt_t;
reg  [18:0] _d___pip_11_1_3___block_7_c_rsqrt_t;
reg  [18:0] _q___pip_11_1_3___block_7_c_rsqrt_t;
reg  [23:0] _d___pip_11_1_1___block_7_c_rsqrt_v;
reg  [23:0] _q___pip_11_1_1___block_7_c_rsqrt_v;
reg  [23:0] _d___pip_11_1_2___block_7_c_rsqrt_v;
reg  [23:0] _q___pip_11_1_2___block_7_c_rsqrt_v;
reg  [35:0] _d___pip_11_1_3___stage___block_21_y;
reg  [35:0] _q___pip_11_1_3___stage___block_21_y;
reg  [35:0] _d___pip_11_1_4___stage___block_21_y;
reg  [35:0] _q___pip_11_1_4___stage___block_21_y;
reg  [35:0] _d___pip_11_1_5___stage___block_21_y;
reg  [35:0] _q___pip_11_1_5___stage___block_21_y;
reg  [35:0] _d___pip_11_1_6___stage___block_21_y;
reg  [35:0] _q___pip_11_1_6___stage___block_21_y;
reg  [35:0] _d___pip_11_1_7___stage___block_21_y;
reg  [35:0] _q___pip_11_1_7___stage___block_21_y;
reg  [35:0] _d___pip_11_1_8___stage___block_21_y;
reg  [35:0] _q___pip_11_1_8___stage___block_21_y;
reg signed [23:0] _d___pip_11_1_0___stage___block_5_view_x;
reg signed [23:0] _q___pip_11_1_0___stage___block_5_view_x;
reg signed [23:0] _d___pip_11_1_1___stage___block_5_view_x;
reg signed [23:0] _q___pip_11_1_1___stage___block_5_view_x;
reg signed [23:0] _d___pip_11_1_0___stage___block_5_view_y;
reg signed [23:0] _q___pip_11_1_0___stage___block_5_view_y;
reg signed [23:0] _d___pip_11_1_1___stage___block_5_view_y;
reg signed [23:0] _q___pip_11_1_1___stage___block_5_view_y;
reg  [23:0] _d___pip_11_1_8___stage___block_6_inv_l;
reg  [23:0] _q___pip_11_1_8___stage___block_6_inv_l;
reg  [23:0] _d___pip_11_1_9___stage___block_6_inv_l;
reg  [23:0] _q___pip_11_1_9___stage___block_6_inv_l;
reg  [23:0] _d___pip_11_1_1___stage___block_6_lsq;
reg  [23:0] _q___pip_11_1_1___stage___block_6_lsq;
reg  [23:0] _d___pip_11_1_2___stage___block_6_lsq;
reg  [23:0] _q___pip_11_1_2___stage___block_6_lsq;
reg  [23:0] _d___pip_11_1_3___stage___block_6_lsq;
reg  [23:0] _q___pip_11_1_3___stage___block_6_lsq;
reg  [23:0] _d___pip_11_1_4___stage___block_6_lsq;
reg  [23:0] _q___pip_11_1_4___stage___block_6_lsq;
reg  [23:0] _d___pip_11_1_5___stage___block_6_lsq;
reg  [23:0] _q___pip_11_1_5___stage___block_6_lsq;
reg  [23:0] _d___pip_11_1_6___stage___block_6_lsq;
reg  [23:0] _q___pip_11_1_6___stage___block_6_lsq;
reg  [23:0] _d___pip_11_1_7___stage___block_6_lsq;
reg  [23:0] _q___pip_11_1_7___stage___block_6_lsq;
reg  [23:0] _d___pip_11_1_8___stage___block_6_lsq;
reg  [23:0] _q___pip_11_1_8___stage___block_6_lsq;
reg  [7:0] _d_pix_r;
reg  [7:0] _q_pix_r;
reg  [7:0] _d_pix_g;
reg  [7:0] _q_pix_g;
reg  [7:0] _d_pix_b;
reg  [7:0] _q_pix_b;
reg  [1:0] _d__idx_fsm0,_q__idx_fsm0;
reg  _autorun = 0;
reg  [0:0] _d__idx_fsm___pip_11_1_0,_q__idx_fsm___pip_11_1_0;
wire _ready_fsm___pip_11_1_0 = (_q__idx_fsm___pip_11_1_0 == 1) || (_q__idx_fsm___pip_11_1_0 == 0);
reg  [0:0] _d__full_fsm___pip_11_1_0 = 0,_q__full_fsm___pip_11_1_0 = 0;
reg  [0:0] _t__stall_fsm___pip_11_1_0 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_11_1_0 = 0;
reg  [0:0] _d__idx_fsm___pip_11_1_1,_q__idx_fsm___pip_11_1_1;
wire _ready_fsm___pip_11_1_1 = (_q__idx_fsm___pip_11_1_1 == 1) || (_q__idx_fsm___pip_11_1_1 == 0);
reg  [0:0] _d__full_fsm___pip_11_1_1 = 0,_q__full_fsm___pip_11_1_1 = 0;
reg  [0:0] _t__stall_fsm___pip_11_1_1 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_11_1_1 = 0;
reg  [0:0] _d__idx_fsm___pip_11_1_2,_q__idx_fsm___pip_11_1_2;
wire _ready_fsm___pip_11_1_2 = (_q__idx_fsm___pip_11_1_2 == 1) || (_q__idx_fsm___pip_11_1_2 == 0);
reg  [0:0] _d__full_fsm___pip_11_1_2 = 0,_q__full_fsm___pip_11_1_2 = 0;
reg  [0:0] _t__stall_fsm___pip_11_1_2 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_11_1_2 = 0;
reg  [0:0] _d__idx_fsm___pip_11_1_3,_q__idx_fsm___pip_11_1_3;
wire _ready_fsm___pip_11_1_3 = (_q__idx_fsm___pip_11_1_3 == 1) || (_q__idx_fsm___pip_11_1_3 == 0);
reg  [0:0] _d__full_fsm___pip_11_1_3 = 0,_q__full_fsm___pip_11_1_3 = 0;
reg  [0:0] _t__stall_fsm___pip_11_1_3 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_11_1_3 = 0;
reg  [0:0] _d__idx_fsm___pip_11_1_4,_q__idx_fsm___pip_11_1_4;
wire _ready_fsm___pip_11_1_4 = (_q__idx_fsm___pip_11_1_4 == 1) || (_q__idx_fsm___pip_11_1_4 == 0);
reg  [0:0] _d__full_fsm___pip_11_1_4 = 0,_q__full_fsm___pip_11_1_4 = 0;
reg  [0:0] _t__stall_fsm___pip_11_1_4 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_11_1_4 = 0;
reg  [0:0] _d__idx_fsm___pip_11_1_5,_q__idx_fsm___pip_11_1_5;
wire _ready_fsm___pip_11_1_5 = (_q__idx_fsm___pip_11_1_5 == 1) || (_q__idx_fsm___pip_11_1_5 == 0);
reg  [0:0] _d__full_fsm___pip_11_1_5 = 0,_q__full_fsm___pip_11_1_5 = 0;
reg  [0:0] _t__stall_fsm___pip_11_1_5 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_11_1_5 = 0;
reg  [0:0] _d__idx_fsm___pip_11_1_6,_q__idx_fsm___pip_11_1_6;
wire _ready_fsm___pip_11_1_6 = (_q__idx_fsm___pip_11_1_6 == 1) || (_q__idx_fsm___pip_11_1_6 == 0);
reg  [0:0] _d__full_fsm___pip_11_1_6 = 0,_q__full_fsm___pip_11_1_6 = 0;
reg  [0:0] _t__stall_fsm___pip_11_1_6 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_11_1_6 = 0;
reg  [0:0] _d__idx_fsm___pip_11_1_7,_q__idx_fsm___pip_11_1_7;
wire _ready_fsm___pip_11_1_7 = (_q__idx_fsm___pip_11_1_7 == 1) || (_q__idx_fsm___pip_11_1_7 == 0);
reg  [0:0] _d__full_fsm___pip_11_1_7 = 0,_q__full_fsm___pip_11_1_7 = 0;
reg  [0:0] _t__stall_fsm___pip_11_1_7 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_11_1_7 = 0;
reg  [0:0] _d__idx_fsm___pip_11_1_8,_q__idx_fsm___pip_11_1_8;
wire _ready_fsm___pip_11_1_8 = (_q__idx_fsm___pip_11_1_8 == 1) || (_q__idx_fsm___pip_11_1_8 == 0);
reg  [0:0] _d__full_fsm___pip_11_1_8 = 0,_q__full_fsm___pip_11_1_8 = 0;
reg  [0:0] _t__stall_fsm___pip_11_1_8 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_11_1_8 = 0;
reg  [0:0] _d__idx_fsm___pip_11_1_9,_q__idx_fsm___pip_11_1_9;
wire _ready_fsm___pip_11_1_9 = (_q__idx_fsm___pip_11_1_9 == 1) || (_q__idx_fsm___pip_11_1_9 == 0);
reg  [0:0] _d__full_fsm___pip_11_1_9 = 0,_q__full_fsm___pip_11_1_9 = 0;
reg  [0:0] _t__stall_fsm___pip_11_1_9 = 0;
reg  [0:0] _t__1stdisable_fsm___pip_11_1_9 = 0;
assign out_pix_r = _d_pix_r;
assign out_pix_g = _d_pix_g;
assign out_pix_b = _d_pix_b;
assign out_done = (_q__idx_fsm0 == 0) && _autorun
 &&   _q__idx_fsm___pip_11_1_0 == 0 && ~ _q__full_fsm___pip_11_1_0
 &&   _q__idx_fsm___pip_11_1_1 == 0 && ~ _q__full_fsm___pip_11_1_1
 &&   _q__idx_fsm___pip_11_1_2 == 0 && ~ _q__full_fsm___pip_11_1_2
 &&   _q__idx_fsm___pip_11_1_3 == 0 && ~ _q__full_fsm___pip_11_1_3
 &&   _q__idx_fsm___pip_11_1_4 == 0 && ~ _q__full_fsm___pip_11_1_4
 &&   _q__idx_fsm___pip_11_1_5 == 0 && ~ _q__full_fsm___pip_11_1_5
 &&   _q__idx_fsm___pip_11_1_6 == 0 && ~ _q__full_fsm___pip_11_1_6
 &&   _q__idx_fsm___pip_11_1_7 == 0 && ~ _q__full_fsm___pip_11_1_7
 &&   _q__idx_fsm___pip_11_1_8 == 0 && ~ _q__full_fsm___pip_11_1_8
 &&   _q__idx_fsm___pip_11_1_9 == 0
;



`ifdef FORMAL
initial begin
assume(reset);
end
assume property($initstate || (out_done));
`endif
always @* begin
_d_frame = _q_frame;
_d___block_9_clz_r_left_empty = _q___block_9_clz_r_left_empty;
_d___block_10_clz_r_left_empty = _q___block_10_clz_r_left_empty;
_d___block_11_clz_r_left_empty = _q___block_11_clz_r_left_empty;
_d___block_12_clz_r_left_empty = _q___block_12_clz_r_left_empty;
_d___pip_11_1_8___block_27_invd = _q___pip_11_1_8___block_27_invd;
_d___pip_11_1_9___block_27_invd = _q___pip_11_1_9___block_27_invd;
_d___pip_11_1_2___block_7_c_rsqrt_b = _q___pip_11_1_2___block_7_c_rsqrt_b;
_d___pip_11_1_3___block_7_c_rsqrt_b = _q___pip_11_1_3___block_7_c_rsqrt_b;
_d___pip_11_1_2___block_7_c_rsqrt_ff = _q___pip_11_1_2___block_7_c_rsqrt_ff;
_d___pip_11_1_3___block_7_c_rsqrt_ff = _q___pip_11_1_3___block_7_c_rsqrt_ff;
_d___pip_11_1_1___block_7_c_rsqrt_lx = _q___pip_11_1_1___block_7_c_rsqrt_lx;
_d___pip_11_1_2___block_7_c_rsqrt_lx = _q___pip_11_1_2___block_7_c_rsqrt_lx;
_d___pip_11_1_2___block_7_c_rsqrt_t = _q___pip_11_1_2___block_7_c_rsqrt_t;
_d___pip_11_1_3___block_7_c_rsqrt_t = _q___pip_11_1_3___block_7_c_rsqrt_t;
_d___pip_11_1_1___block_7_c_rsqrt_v = _q___pip_11_1_1___block_7_c_rsqrt_v;
_d___pip_11_1_2___block_7_c_rsqrt_v = _q___pip_11_1_2___block_7_c_rsqrt_v;
_d___pip_11_1_3___stage___block_21_y = _q___pip_11_1_3___stage___block_21_y;
_d___pip_11_1_4___stage___block_21_y = _q___pip_11_1_4___stage___block_21_y;
_d___pip_11_1_5___stage___block_21_y = _q___pip_11_1_5___stage___block_21_y;
_d___pip_11_1_6___stage___block_21_y = _q___pip_11_1_6___stage___block_21_y;
_d___pip_11_1_7___stage___block_21_y = _q___pip_11_1_7___stage___block_21_y;
_d___pip_11_1_8___stage___block_21_y = _q___pip_11_1_8___stage___block_21_y;
_d___pip_11_1_0___stage___block_5_view_x = _q___pip_11_1_0___stage___block_5_view_x;
_d___pip_11_1_1___stage___block_5_view_x = _q___pip_11_1_1___stage___block_5_view_x;
_d___pip_11_1_0___stage___block_5_view_y = _q___pip_11_1_0___stage___block_5_view_y;
_d___pip_11_1_1___stage___block_5_view_y = _q___pip_11_1_1___stage___block_5_view_y;
_d___pip_11_1_8___stage___block_6_inv_l = _q___pip_11_1_8___stage___block_6_inv_l;
_d___pip_11_1_9___stage___block_6_inv_l = _q___pip_11_1_9___stage___block_6_inv_l;
_d___pip_11_1_1___stage___block_6_lsq = _q___pip_11_1_1___stage___block_6_lsq;
_d___pip_11_1_2___stage___block_6_lsq = _q___pip_11_1_2___stage___block_6_lsq;
_d___pip_11_1_3___stage___block_6_lsq = _q___pip_11_1_3___stage___block_6_lsq;
_d___pip_11_1_4___stage___block_6_lsq = _q___pip_11_1_4___stage___block_6_lsq;
_d___pip_11_1_5___stage___block_6_lsq = _q___pip_11_1_5___stage___block_6_lsq;
_d___pip_11_1_6___stage___block_6_lsq = _q___pip_11_1_6___stage___block_6_lsq;
_d___pip_11_1_7___stage___block_6_lsq = _q___pip_11_1_7___stage___block_6_lsq;
_d___pip_11_1_8___stage___block_6_lsq = _q___pip_11_1_8___stage___block_6_lsq;
_d_pix_r = _q_pix_r;
_d_pix_g = _q_pix_g;
_d_pix_b = _q_pix_b;
_d__idx_fsm0 = _q__idx_fsm0;
_d__idx_fsm___pip_11_1_0 = _q__idx_fsm___pip_11_1_0;
_d__full_fsm___pip_11_1_0 = _q__full_fsm___pip_11_1_0;
_t__stall_fsm___pip_11_1_0 = 0;
_t__1stdisable_fsm___pip_11_1_0 = 0;
_d__idx_fsm___pip_11_1_1 = _q__idx_fsm___pip_11_1_1;
_d__full_fsm___pip_11_1_1 = _q__full_fsm___pip_11_1_1;
_t__stall_fsm___pip_11_1_1 = 0;
_t__1stdisable_fsm___pip_11_1_1 = 0;
_d__idx_fsm___pip_11_1_2 = _q__idx_fsm___pip_11_1_2;
_d__full_fsm___pip_11_1_2 = _q__full_fsm___pip_11_1_2;
_t__stall_fsm___pip_11_1_2 = 0;
_t__1stdisable_fsm___pip_11_1_2 = 0;
_d__idx_fsm___pip_11_1_3 = _q__idx_fsm___pip_11_1_3;
_d__full_fsm___pip_11_1_3 = _q__full_fsm___pip_11_1_3;
_t__stall_fsm___pip_11_1_3 = 0;
_t__1stdisable_fsm___pip_11_1_3 = 0;
_d__idx_fsm___pip_11_1_4 = _q__idx_fsm___pip_11_1_4;
_d__full_fsm___pip_11_1_4 = _q__full_fsm___pip_11_1_4;
_t__stall_fsm___pip_11_1_4 = 0;
_t__1stdisable_fsm___pip_11_1_4 = 0;
_d__idx_fsm___pip_11_1_5 = _q__idx_fsm___pip_11_1_5;
_d__full_fsm___pip_11_1_5 = _q__full_fsm___pip_11_1_5;
_t__stall_fsm___pip_11_1_5 = 0;
_t__1stdisable_fsm___pip_11_1_5 = 0;
_d__idx_fsm___pip_11_1_6 = _q__idx_fsm___pip_11_1_6;
_d__full_fsm___pip_11_1_6 = _q__full_fsm___pip_11_1_6;
_t__stall_fsm___pip_11_1_6 = 0;
_t__1stdisable_fsm___pip_11_1_6 = 0;
_d__idx_fsm___pip_11_1_7 = _q__idx_fsm___pip_11_1_7;
_d__full_fsm___pip_11_1_7 = _q__full_fsm___pip_11_1_7;
_t__stall_fsm___pip_11_1_7 = 0;
_t__1stdisable_fsm___pip_11_1_7 = 0;
_d__idx_fsm___pip_11_1_8 = _q__idx_fsm___pip_11_1_8;
_d__full_fsm___pip_11_1_8 = _q__full_fsm___pip_11_1_8;
_t__stall_fsm___pip_11_1_8 = 0;
_t__1stdisable_fsm___pip_11_1_8 = 0;
_d__idx_fsm___pip_11_1_9 = _q__idx_fsm___pip_11_1_9;
_d__full_fsm___pip_11_1_9 = _q__full_fsm___pip_11_1_9;
_t__stall_fsm___pip_11_1_9 = 0;
_t__1stdisable_fsm___pip_11_1_9 = 0;
_t___stage___block_5_view_x = 0;
_t___stage___block_5_view_y = 0;
_t___stage___block_6_lsq = 0;
_t___stage___block_6_inv_l = 0;
_t___block_7_c_rsqrt_v = 0;
_t___block_7_c_rsqrt_b = 0;
_t___block_7_c_rsqrt_t = 0;
_t___block_7_c_rsqrt_l = 0;
_t___block_7_c_rsqrt_ff = 0;
_t___block_7_c_rsqrt_lx = 0;
_t___block_7_c_rsqrt_xx = 0;
_t___block_8_clog_count = 0;
_t___block_9_clz_r_half_count = 0;
_t___block_9_clz_r_lhs = 0;
_t___block_9_clz_r_rhs = 0;
_t___block_9_clz_r_half = 0;
_t___block_10_clz_r_half_count = 0;
_t___block_10_clz_r_lhs = 0;
_t___block_10_clz_r_rhs = 0;
_t___block_10_clz_r_half = 0;
_t___block_11_clz_r_half_count = 0;
_t___block_11_clz_r_lhs = 0;
_t___block_11_clz_r_rhs = 0;
_t___block_11_clz_r_half = 0;
_t___block_12_clz_r_half_count = 0;
_t___block_12_clz_r_lhs = 0;
_t___block_12_clz_r_rhs = 0;
_t___block_12_clz_r_half = 0;
_t___stage___block_21_y = 0;
_t___block_27_invd = 0;
_t___stage___block_28_in_circ = 0;
_t___stage___block_28_comp = 0;
_t___stage___block_28_shaded = 0;
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
// --> pipeline __pip_11_1 starts here
_t__1stdisable_fsm___pip_11_1_0 = 0;
// __block_34
// __block_35
_d__idx_fsm0 = 2;
end else begin
// __block_3
_d__idx_fsm0 = 0;
_t__1stdisable_fsm___pip_11_1_0 = 1;
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
case (_q__idx_fsm___pip_11_1_0)
1: begin
if (~_t__1stdisable_fsm___pip_11_1_0) begin 
// __stage___block_5
_t___stage___block_5_view_x = (($signed(in_pix_x)-$signed(24'd320)));

_t___stage___block_5_view_y = (($signed(in_pix_y)-$signed(24'd240)));

// end of pipeline stage
_d__full_fsm___pip_11_1_0 = 1;
end // 7
_d__idx_fsm___pip_11_1_0 = _t__stall_fsm___pip_11_1_0 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_11_1_0 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
if (_q__idx_fsm___pip_11_1_0 == 1  ) begin
_d___pip_11_1_0___stage___block_5_view_y = _t___stage___block_5_view_y;
end else begin
_d___pip_11_1_0___stage___block_5_view_y = _q___pip_11_1_0___stage___block_5_view_y;
end
if (_q__idx_fsm___pip_11_1_0 == 1  ) begin
_d___pip_11_1_0___stage___block_5_view_x = _t___stage___block_5_view_x;
end else begin
_d___pip_11_1_0___stage___block_5_view_x = _q___pip_11_1_0___stage___block_5_view_x;
end
// -------- stage 1
(* full_case *)
case (_q__idx_fsm___pip_11_1_1)
1: begin
// __stage___block_6
_t___stage___block_6_lsq = (_q___pip_11_1_1___stage___block_5_view_x*_q___pip_11_1_1___stage___block_5_view_x+_q___pip_11_1_1___stage___block_5_view_y*_q___pip_11_1_1___stage___block_5_view_y)>>2;

// __block_7_c_rsqrt
_t___block_7_c_rsqrt_xx = _t___stage___block_6_lsq;

// __block_8_clog
// __block_9_clz_r
_t___block_9_clz_r_lhs = _t___block_7_c_rsqrt_xx[16+:16];

_t___block_9_clz_r_rhs = _t___block_7_c_rsqrt_xx[0+:16];

_t___block_9_clz_r_half = _q___block_9_clz_r_left_empty ? _t___block_9_clz_r_rhs:_t___block_9_clz_r_lhs;

_d___block_9_clz_r_left_empty = ~|_t___block_9_clz_r_lhs;

// __block_10_clz_r
_t___block_10_clz_r_lhs = _t___block_9_clz_r_half[8+:8];

_t___block_10_clz_r_rhs = _t___block_9_clz_r_half[0+:8];

_t___block_10_clz_r_half = _q___block_10_clz_r_left_empty ? _t___block_10_clz_r_rhs:_t___block_10_clz_r_lhs;

_d___block_10_clz_r_left_empty = ~|_t___block_10_clz_r_lhs;

// __block_11_clz_r
_t___block_11_clz_r_lhs = _t___block_10_clz_r_half[4+:4];

_t___block_11_clz_r_rhs = _t___block_10_clz_r_half[0+:4];

_t___block_11_clz_r_half = _q___block_11_clz_r_left_empty ? _t___block_11_clz_r_rhs:_t___block_11_clz_r_lhs;

_d___block_11_clz_r_left_empty = ~|_t___block_11_clz_r_lhs;

// __block_12_clz_r
_t___block_12_clz_r_lhs = _t___block_11_clz_r_half[2+:2];

_t___block_12_clz_r_rhs = _t___block_11_clz_r_half[0+:2];

_t___block_12_clz_r_half = _q___block_12_clz_r_left_empty ? _t___block_12_clz_r_rhs:_t___block_12_clz_r_lhs;

_d___block_12_clz_r_left_empty = ~|_t___block_12_clz_r_lhs;

// __block_13_clz_r
_t___block_12_clz_r_half_count = !_t___block_12_clz_r_half[1+:1];

// __block_14
_t___block_11_clz_r_half_count = {_d___block_12_clz_r_left_empty,_t___block_12_clz_r_half_count};

// __block_15
_t___block_10_clz_r_half_count = {_d___block_11_clz_r_left_empty,_t___block_11_clz_r_half_count};

// __block_16
_t___block_9_clz_r_half_count = {_d___block_10_clz_r_left_empty,_t___block_10_clz_r_half_count};

// __block_17
_t___block_8_clog_count = {_d___block_9_clz_r_left_empty,_t___block_9_clz_r_half_count};

// __block_18
_t___block_7_c_rsqrt_lx = 32-_t___block_8_clog_count;

// __block_19
_t___block_7_c_rsqrt_v = _t___stage___block_6_lsq;

// end of pipeline stage
_d__full_fsm___pip_11_1_1 = 1;
_d__idx_fsm___pip_11_1_1 = _t__stall_fsm___pip_11_1_1 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_11_1_1 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
if (_q__idx_fsm___pip_11_1_1 == 1  ) begin
_d___pip_11_1_1___stage___block_6_lsq = _t___stage___block_6_lsq;
end else begin
_d___pip_11_1_1___stage___block_6_lsq = _q___pip_11_1_1___stage___block_6_lsq;
end
if (_q__idx_fsm___pip_11_1_1 == 1  ) begin
_d___pip_11_1_1___block_7_c_rsqrt_v = _t___block_7_c_rsqrt_v;
end else begin
_d___pip_11_1_1___block_7_c_rsqrt_v = _q___pip_11_1_1___block_7_c_rsqrt_v;
end
if (_q__idx_fsm___pip_11_1_1 == 1  ) begin
_d___pip_11_1_1___block_7_c_rsqrt_lx = _t___block_7_c_rsqrt_lx;
end else begin
_d___pip_11_1_1___block_7_c_rsqrt_lx = _q___pip_11_1_1___block_7_c_rsqrt_lx;
end
// -------- stage 2
(* full_case *)
case (_q__idx_fsm___pip_11_1_2)
1: begin
// __stage___block_20
_t___block_7_c_rsqrt_t = 1<<((36-_q___pip_11_1_2___block_7_c_rsqrt_lx+2)>>1);

_t___block_7_c_rsqrt_b = 1<<((36-_q___pip_11_1_2___block_7_c_rsqrt_lx)>>1);

_t___block_7_c_rsqrt_l = (((_q___pip_11_1_2___block_7_c_rsqrt_lx-3)>>1)<<1)+1;

_t___block_7_c_rsqrt_ff = (5792*((_q___pip_11_1_2___block_7_c_rsqrt_v>>1)-(1<<_t___block_7_c_rsqrt_l)))>>(2+_t___block_7_c_rsqrt_l);

// end of pipeline stage
_d__full_fsm___pip_11_1_2 = 1;
_d__idx_fsm___pip_11_1_2 = _t__stall_fsm___pip_11_1_2 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_11_1_2 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
if (_q__idx_fsm___pip_11_1_2 == 1  ) begin
_d___pip_11_1_2___block_7_c_rsqrt_t = _t___block_7_c_rsqrt_t;
end else begin
_d___pip_11_1_2___block_7_c_rsqrt_t = _q___pip_11_1_2___block_7_c_rsqrt_t;
end
if (_q__idx_fsm___pip_11_1_2 == 1  ) begin
_d___pip_11_1_2___block_7_c_rsqrt_ff = _t___block_7_c_rsqrt_ff;
end else begin
_d___pip_11_1_2___block_7_c_rsqrt_ff = _q___pip_11_1_2___block_7_c_rsqrt_ff;
end
if (_q__idx_fsm___pip_11_1_2 == 1  ) begin
_d___pip_11_1_2___block_7_c_rsqrt_b = _t___block_7_c_rsqrt_b;
end else begin
_d___pip_11_1_2___block_7_c_rsqrt_b = _q___pip_11_1_2___block_7_c_rsqrt_b;
end
// -------- stage 3
(* full_case *)
case (_q__idx_fsm___pip_11_1_3)
1: begin
// __stage___block_21
_t___stage___block_21_y = (_q___pip_11_1_3___block_7_c_rsqrt_t*(4096-_q___pip_11_1_3___block_7_c_rsqrt_ff)+_q___pip_11_1_3___block_7_c_rsqrt_b*_q___pip_11_1_3___block_7_c_rsqrt_ff)>>12;

// end of pipeline stage
_d__full_fsm___pip_11_1_3 = 1;
_d__idx_fsm___pip_11_1_3 = _t__stall_fsm___pip_11_1_3 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_11_1_3 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
if (_q__idx_fsm___pip_11_1_3 == 1  ) begin
_d___pip_11_1_3___stage___block_21_y = _t___stage___block_21_y;
end else begin
_d___pip_11_1_3___stage___block_21_y = _q___pip_11_1_3___stage___block_21_y;
end
// -------- stage 4
(* full_case *)
case (_q__idx_fsm___pip_11_1_4)
1: begin
// __stage___block_22
_d___pip_11_1_4___stage___block_21_y = (3*_q___pip_11_1_4___stage___block_21_y-((((_q___pip_11_1_4___stage___block_6_lsq*_q___pip_11_1_4___stage___block_21_y)>>12)*((_q___pip_11_1_4___stage___block_21_y*_q___pip_11_1_4___stage___block_21_y)>>12))>>12))>>1;

// end of pipeline stage
_d__full_fsm___pip_11_1_4 = 1;
_d__idx_fsm___pip_11_1_4 = _t__stall_fsm___pip_11_1_4 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_11_1_4 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 5
(* full_case *)
case (_q__idx_fsm___pip_11_1_5)
1: begin
// __stage___block_23
_d___pip_11_1_5___stage___block_21_y = (3*_q___pip_11_1_5___stage___block_21_y-((((_q___pip_11_1_5___stage___block_6_lsq*_q___pip_11_1_5___stage___block_21_y)>>12)*((_q___pip_11_1_5___stage___block_21_y*_q___pip_11_1_5___stage___block_21_y)>>12))>>12))>>1;

// end of pipeline stage
_d__full_fsm___pip_11_1_5 = 1;
_d__idx_fsm___pip_11_1_5 = _t__stall_fsm___pip_11_1_5 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_11_1_5 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 6
(* full_case *)
case (_q__idx_fsm___pip_11_1_6)
1: begin
// __stage___block_24
_d___pip_11_1_6___stage___block_21_y = (3*_q___pip_11_1_6___stage___block_21_y-((((_q___pip_11_1_6___stage___block_6_lsq*_q___pip_11_1_6___stage___block_21_y)>>12)*((_q___pip_11_1_6___stage___block_21_y*_q___pip_11_1_6___stage___block_21_y)>>12))>>12))>>1;

// end of pipeline stage
_d__full_fsm___pip_11_1_6 = 1;
_d__idx_fsm___pip_11_1_6 = _t__stall_fsm___pip_11_1_6 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_11_1_6 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 7
(* full_case *)
case (_q__idx_fsm___pip_11_1_7)
1: begin
// __stage___block_25
_d___pip_11_1_7___stage___block_21_y = (3*_q___pip_11_1_7___stage___block_21_y-((((_q___pip_11_1_7___stage___block_6_lsq*_q___pip_11_1_7___stage___block_21_y)>>12)*((_q___pip_11_1_7___stage___block_21_y*_q___pip_11_1_7___stage___block_21_y)>>12))>>12))>>1;

// end of pipeline stage
_d__full_fsm___pip_11_1_7 = 1;
_d__idx_fsm___pip_11_1_7 = _t__stall_fsm___pip_11_1_7 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_11_1_7 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// -------- stage 8
(* full_case *)
case (_q__idx_fsm___pip_11_1_8)
1: begin
// __stage___block_26
_d___pip_11_1_8___stage___block_21_y = (3*_q___pip_11_1_8___stage___block_21_y-((((_q___pip_11_1_8___stage___block_6_lsq*_q___pip_11_1_8___stage___block_21_y)>>12)*((_q___pip_11_1_8___stage___block_21_y*_q___pip_11_1_8___stage___block_21_y)>>12))>>12))>>1;

_t___stage___block_6_inv_l = _d___pip_11_1_8___stage___block_21_y;

// __block_27
_t___block_27_invd = (_t___stage___block_6_inv_l>>4)+_q_frame;

// end of pipeline stage
_d__full_fsm___pip_11_1_8 = 1;
_d__idx_fsm___pip_11_1_8 = _t__stall_fsm___pip_11_1_8 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_11_1_8 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
if (_q__idx_fsm___pip_11_1_8 == 1  ) begin
_d___pip_11_1_8___stage___block_6_inv_l = _t___stage___block_6_inv_l;
end else begin
_d___pip_11_1_8___stage___block_6_inv_l = _q___pip_11_1_8___stage___block_6_inv_l;
end
if (_q__idx_fsm___pip_11_1_8 == 1  ) begin
_d___pip_11_1_8___block_27_invd = _t___block_27_invd;
end else begin
_d___pip_11_1_8___block_27_invd = _q___pip_11_1_8___block_27_invd;
end
// -------- stage 9
(* full_case *)
case (_q__idx_fsm___pip_11_1_9)
1: begin
// __stage___block_28
_t___stage___block_28_in_circ = (_q___pip_11_1_9___block_27_invd>>6);

_t___stage___block_28_comp = _t___stage___block_28_in_circ ? 255:0;

_t___stage___block_28_shaded = _q___pip_11_1_9___stage___block_6_inv_l>16383||_t___stage___block_28_in_circ ? 0:(255-_q___pip_11_1_9___stage___block_6_inv_l[8+:8]);

_d_pix_r = _t___stage___block_28_shaded;

_d_pix_g = _t___stage___block_28_shaded;

_d_pix_b = _t___stage___block_28_shaded;

if (in_pix_x==0&&in_pix_y==0) begin
// __block_29
// __block_31
_d_frame = _q_frame+3;

// __block_32
end else begin
// __block_30
end
// 'after'
// __block_33
// end of last pipeline stage
_d__full_fsm___pip_11_1_9 = 1;
_d__idx_fsm___pip_11_1_9 = _t__stall_fsm___pip_11_1_9 ? 1 : 0;
end
0: begin 
end
default: begin 
_d__idx_fsm___pip_11_1_9 = {1{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// --- trickling
// ===================
// _always_post
// pipeline stage triggers
if ( (_ready_fsm___pip_11_1_9)   && (_d__full_fsm___pip_11_1_8)   && (!_t__stall_fsm___pip_11_1_8)   && (!_t__stall_fsm___pip_11_1_9)   ) begin
   _d__idx_fsm___pip_11_1_9 = 1;
   _d__full_fsm___pip_11_1_8 = 0;
end
if ( (_ready_fsm___pip_11_1_8)   && (_d__full_fsm___pip_11_1_7)   && (!_t__stall_fsm___pip_11_1_7)   && (!_d__full_fsm___pip_11_1_8)   && (!_t__stall_fsm___pip_11_1_8)   ) begin
   _d__idx_fsm___pip_11_1_8 = 1;
   _d__full_fsm___pip_11_1_7 = 0;
end
if ( (_ready_fsm___pip_11_1_7)   && (_d__full_fsm___pip_11_1_6)   && (!_t__stall_fsm___pip_11_1_6)   && (!_d__full_fsm___pip_11_1_7)   && (!_t__stall_fsm___pip_11_1_7)   ) begin
   _d__idx_fsm___pip_11_1_7 = 1;
   _d__full_fsm___pip_11_1_6 = 0;
end
if ( (_ready_fsm___pip_11_1_6)   && (_d__full_fsm___pip_11_1_5)   && (!_t__stall_fsm___pip_11_1_5)   && (!_d__full_fsm___pip_11_1_6)   && (!_t__stall_fsm___pip_11_1_6)   ) begin
   _d__idx_fsm___pip_11_1_6 = 1;
   _d__full_fsm___pip_11_1_5 = 0;
end
if ( (_ready_fsm___pip_11_1_5)   && (_d__full_fsm___pip_11_1_4)   && (!_t__stall_fsm___pip_11_1_4)   && (!_d__full_fsm___pip_11_1_5)   && (!_t__stall_fsm___pip_11_1_5)   ) begin
   _d__idx_fsm___pip_11_1_5 = 1;
   _d__full_fsm___pip_11_1_4 = 0;
end
if ( (_ready_fsm___pip_11_1_4)   && (_d__full_fsm___pip_11_1_3)   && (!_t__stall_fsm___pip_11_1_3)   && (!_d__full_fsm___pip_11_1_4)   && (!_t__stall_fsm___pip_11_1_4)   ) begin
   _d__idx_fsm___pip_11_1_4 = 1;
   _d__full_fsm___pip_11_1_3 = 0;
end
if ( (_ready_fsm___pip_11_1_3)   && (_d__full_fsm___pip_11_1_2)   && (!_t__stall_fsm___pip_11_1_2)   && (!_d__full_fsm___pip_11_1_3)   && (!_t__stall_fsm___pip_11_1_3)   ) begin
   _d__idx_fsm___pip_11_1_3 = 1;
   _d__full_fsm___pip_11_1_2 = 0;
end
if ( (_ready_fsm___pip_11_1_2)   && (_d__full_fsm___pip_11_1_1)   && (!_t__stall_fsm___pip_11_1_1)   && (!_d__full_fsm___pip_11_1_2)   && (!_t__stall_fsm___pip_11_1_2)   ) begin
   _d__idx_fsm___pip_11_1_2 = 1;
   _d__full_fsm___pip_11_1_1 = 0;
end
if ( (_ready_fsm___pip_11_1_1)   && (_d__full_fsm___pip_11_1_0)   && (!_t__stall_fsm___pip_11_1_0)   && (!_d__full_fsm___pip_11_1_1)   && (!_t__stall_fsm___pip_11_1_1)   ) begin
   _d__idx_fsm___pip_11_1_1 = 1;
   _d__full_fsm___pip_11_1_0 = 0;
end
if ( (_ready_fsm___pip_11_1_0)   && ((( ~_autorun ? 1 : _d__idx_fsm0)) == 2)
  && (!_d__full_fsm___pip_11_1_0)   && (!_t__stall_fsm___pip_11_1_0)   ) begin
   _d__idx_fsm___pip_11_1_0 = 1;
end
end

always @(posedge clock) begin
_q_frame <= _d_frame;
_q___block_9_clz_r_left_empty <= _d___block_9_clz_r_left_empty;
_q___block_10_clz_r_left_empty <= _d___block_10_clz_r_left_empty;
_q___block_11_clz_r_left_empty <= _d___block_11_clz_r_left_empty;
_q___block_12_clz_r_left_empty <= _d___block_12_clz_r_left_empty;
_q___pip_11_1_8___block_27_invd <= _d___pip_11_1_8___block_27_invd;
_q___pip_11_1_9___block_27_invd <= (_d__idx_fsm___pip_11_1_9 == 1 && !_t__stall_fsm___pip_11_1_9) ? _d___pip_11_1_8___block_27_invd : _d___pip_11_1_9___block_27_invd;
_q___pip_11_1_2___block_7_c_rsqrt_b <= _d___pip_11_1_2___block_7_c_rsqrt_b;
_q___pip_11_1_3___block_7_c_rsqrt_b <= (_d__idx_fsm___pip_11_1_3 == 1 && !_t__stall_fsm___pip_11_1_3) ? _d___pip_11_1_2___block_7_c_rsqrt_b : _d___pip_11_1_3___block_7_c_rsqrt_b;
_q___pip_11_1_2___block_7_c_rsqrt_ff <= _d___pip_11_1_2___block_7_c_rsqrt_ff;
_q___pip_11_1_3___block_7_c_rsqrt_ff <= (_d__idx_fsm___pip_11_1_3 == 1 && !_t__stall_fsm___pip_11_1_3) ? _d___pip_11_1_2___block_7_c_rsqrt_ff : _d___pip_11_1_3___block_7_c_rsqrt_ff;
_q___pip_11_1_1___block_7_c_rsqrt_lx <= _d___pip_11_1_1___block_7_c_rsqrt_lx;
_q___pip_11_1_2___block_7_c_rsqrt_lx <= (_d__idx_fsm___pip_11_1_2 == 1 && !_t__stall_fsm___pip_11_1_2) ? _d___pip_11_1_1___block_7_c_rsqrt_lx : _d___pip_11_1_2___block_7_c_rsqrt_lx;
_q___pip_11_1_2___block_7_c_rsqrt_t <= _d___pip_11_1_2___block_7_c_rsqrt_t;
_q___pip_11_1_3___block_7_c_rsqrt_t <= (_d__idx_fsm___pip_11_1_3 == 1 && !_t__stall_fsm___pip_11_1_3) ? _d___pip_11_1_2___block_7_c_rsqrt_t : _d___pip_11_1_3___block_7_c_rsqrt_t;
_q___pip_11_1_1___block_7_c_rsqrt_v <= _d___pip_11_1_1___block_7_c_rsqrt_v;
_q___pip_11_1_2___block_7_c_rsqrt_v <= (_d__idx_fsm___pip_11_1_2 == 1 && !_t__stall_fsm___pip_11_1_2) ? _d___pip_11_1_1___block_7_c_rsqrt_v : _d___pip_11_1_2___block_7_c_rsqrt_v;
_q___pip_11_1_3___stage___block_21_y <= _d___pip_11_1_3___stage___block_21_y;
_q___pip_11_1_4___stage___block_21_y <= (_d__idx_fsm___pip_11_1_4 == 1 && !_t__stall_fsm___pip_11_1_4) ? _d___pip_11_1_3___stage___block_21_y : _d___pip_11_1_4___stage___block_21_y;
_q___pip_11_1_5___stage___block_21_y <= (_d__idx_fsm___pip_11_1_5 == 1 && !_t__stall_fsm___pip_11_1_5) ? _d___pip_11_1_4___stage___block_21_y : _d___pip_11_1_5___stage___block_21_y;
_q___pip_11_1_6___stage___block_21_y <= (_d__idx_fsm___pip_11_1_6 == 1 && !_t__stall_fsm___pip_11_1_6) ? _d___pip_11_1_5___stage___block_21_y : _d___pip_11_1_6___stage___block_21_y;
_q___pip_11_1_7___stage___block_21_y <= (_d__idx_fsm___pip_11_1_7 == 1 && !_t__stall_fsm___pip_11_1_7) ? _d___pip_11_1_6___stage___block_21_y : _d___pip_11_1_7___stage___block_21_y;
_q___pip_11_1_8___stage___block_21_y <= (_d__idx_fsm___pip_11_1_8 == 1 && !_t__stall_fsm___pip_11_1_8) ? _d___pip_11_1_7___stage___block_21_y : _d___pip_11_1_8___stage___block_21_y;
_q___pip_11_1_0___stage___block_5_view_x <= _d___pip_11_1_0___stage___block_5_view_x;
_q___pip_11_1_1___stage___block_5_view_x <= (_d__idx_fsm___pip_11_1_1 == 1 && !_t__stall_fsm___pip_11_1_1) ? _d___pip_11_1_0___stage___block_5_view_x : _d___pip_11_1_1___stage___block_5_view_x;
_q___pip_11_1_0___stage___block_5_view_y <= _d___pip_11_1_0___stage___block_5_view_y;
_q___pip_11_1_1___stage___block_5_view_y <= (_d__idx_fsm___pip_11_1_1 == 1 && !_t__stall_fsm___pip_11_1_1) ? _d___pip_11_1_0___stage___block_5_view_y : _d___pip_11_1_1___stage___block_5_view_y;
_q___pip_11_1_8___stage___block_6_inv_l <= _d___pip_11_1_8___stage___block_6_inv_l;
_q___pip_11_1_9___stage___block_6_inv_l <= (_d__idx_fsm___pip_11_1_9 == 1 && !_t__stall_fsm___pip_11_1_9) ? _d___pip_11_1_8___stage___block_6_inv_l : _d___pip_11_1_9___stage___block_6_inv_l;
_q___pip_11_1_1___stage___block_6_lsq <= _d___pip_11_1_1___stage___block_6_lsq;
_q___pip_11_1_2___stage___block_6_lsq <= (_d__idx_fsm___pip_11_1_2 == 1 && !_t__stall_fsm___pip_11_1_2) ? _d___pip_11_1_1___stage___block_6_lsq : _d___pip_11_1_2___stage___block_6_lsq;
_q___pip_11_1_3___stage___block_6_lsq <= (_d__idx_fsm___pip_11_1_3 == 1 && !_t__stall_fsm___pip_11_1_3) ? _d___pip_11_1_2___stage___block_6_lsq : _d___pip_11_1_3___stage___block_6_lsq;
_q___pip_11_1_4___stage___block_6_lsq <= (_d__idx_fsm___pip_11_1_4 == 1 && !_t__stall_fsm___pip_11_1_4) ? _d___pip_11_1_3___stage___block_6_lsq : _d___pip_11_1_4___stage___block_6_lsq;
_q___pip_11_1_5___stage___block_6_lsq <= (_d__idx_fsm___pip_11_1_5 == 1 && !_t__stall_fsm___pip_11_1_5) ? _d___pip_11_1_4___stage___block_6_lsq : _d___pip_11_1_5___stage___block_6_lsq;
_q___pip_11_1_6___stage___block_6_lsq <= (_d__idx_fsm___pip_11_1_6 == 1 && !_t__stall_fsm___pip_11_1_6) ? _d___pip_11_1_5___stage___block_6_lsq : _d___pip_11_1_6___stage___block_6_lsq;
_q___pip_11_1_7___stage___block_6_lsq <= (_d__idx_fsm___pip_11_1_7 == 1 && !_t__stall_fsm___pip_11_1_7) ? _d___pip_11_1_6___stage___block_6_lsq : _d___pip_11_1_7___stage___block_6_lsq;
_q___pip_11_1_8___stage___block_6_lsq <= (_d__idx_fsm___pip_11_1_8 == 1 && !_t__stall_fsm___pip_11_1_8) ? _d___pip_11_1_7___stage___block_6_lsq : _d___pip_11_1_8___stage___block_6_lsq;
_q_pix_r <= _d_pix_r;
_q_pix_g <= _d_pix_g;
_q_pix_b <= _d_pix_b;
_q__idx_fsm0 <= reset ? 0 : ( ~_autorun ? 1 : _d__idx_fsm0);
_autorun <= reset ? 0 : 1;
_q__idx_fsm___pip_11_1_0 <= reset ? 0 : _d__idx_fsm___pip_11_1_0;
_q__full_fsm___pip_11_1_0 <= reset ? 0 : _d__full_fsm___pip_11_1_0;
_q__idx_fsm___pip_11_1_1 <= reset ? 0 : _d__idx_fsm___pip_11_1_1;
_q__full_fsm___pip_11_1_1 <= reset ? 0 : _d__full_fsm___pip_11_1_1;
_q__idx_fsm___pip_11_1_2 <= reset ? 0 : _d__idx_fsm___pip_11_1_2;
_q__full_fsm___pip_11_1_2 <= reset ? 0 : _d__full_fsm___pip_11_1_2;
_q__idx_fsm___pip_11_1_3 <= reset ? 0 : _d__idx_fsm___pip_11_1_3;
_q__full_fsm___pip_11_1_3 <= reset ? 0 : _d__full_fsm___pip_11_1_3;
_q__idx_fsm___pip_11_1_4 <= reset ? 0 : _d__idx_fsm___pip_11_1_4;
_q__full_fsm___pip_11_1_4 <= reset ? 0 : _d__full_fsm___pip_11_1_4;
_q__idx_fsm___pip_11_1_5 <= reset ? 0 : _d__idx_fsm___pip_11_1_5;
_q__full_fsm___pip_11_1_5 <= reset ? 0 : _d__full_fsm___pip_11_1_5;
_q__idx_fsm___pip_11_1_6 <= reset ? 0 : _d__idx_fsm___pip_11_1_6;
_q__full_fsm___pip_11_1_6 <= reset ? 0 : _d__full_fsm___pip_11_1_6;
_q__idx_fsm___pip_11_1_7 <= reset ? 0 : _d__idx_fsm___pip_11_1_7;
_q__full_fsm___pip_11_1_7 <= reset ? 0 : _d__full_fsm___pip_11_1_7;
_q__idx_fsm___pip_11_1_8 <= reset ? 0 : _d__idx_fsm___pip_11_1_8;
_q__full_fsm___pip_11_1_8 <= reset ? 0 : _d__full_fsm___pip_11_1_8;
_q__idx_fsm___pip_11_1_9 <= reset ? 0 : _d__idx_fsm___pip_11_1_9;
_q__full_fsm___pip_11_1_9 <= reset ? 0 : _d__full_fsm___pip_11_1_9;
end

endmodule

