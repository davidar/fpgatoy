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
wire  [6:0] _c_wave[63:0];
assign _c_wave[0] = 0;
assign _c_wave[1] = 0;
assign _c_wave[2] = 1;
assign _c_wave[3] = 2;
assign _c_wave[4] = 4;
assign _c_wave[5] = 7;
assign _c_wave[6] = 11;
assign _c_wave[7] = 14;
assign _c_wave[8] = 19;
assign _c_wave[9] = 23;
assign _c_wave[10] = 29;
assign _c_wave[11] = 34;
assign _c_wave[12] = 40;
assign _c_wave[13] = 46;
assign _c_wave[14] = 52;
assign _c_wave[15] = 58;
assign _c_wave[16] = 65;
assign _c_wave[17] = 71;
assign _c_wave[18] = 77;
assign _c_wave[19] = 83;
assign _c_wave[20] = 89;
assign _c_wave[21] = 95;
assign _c_wave[22] = 100;
assign _c_wave[23] = 105;
assign _c_wave[24] = 110;
assign _c_wave[25] = 114;
assign _c_wave[26] = 117;
assign _c_wave[27] = 120;
assign _c_wave[28] = 123;
assign _c_wave[29] = 125;
assign _c_wave[30] = 126;
assign _c_wave[31] = 126;
assign _c_wave[32] = 126;
assign _c_wave[33] = 126;
assign _c_wave[34] = 125;
assign _c_wave[35] = 123;
assign _c_wave[36] = 120;
assign _c_wave[37] = 117;
assign _c_wave[38] = 114;
assign _c_wave[39] = 110;
assign _c_wave[40] = 105;
assign _c_wave[41] = 100;
assign _c_wave[42] = 95;
assign _c_wave[43] = 89;
assign _c_wave[44] = 83;
assign _c_wave[45] = 77;
assign _c_wave[46] = 71;
assign _c_wave[47] = 65;
assign _c_wave[48] = 58;
assign _c_wave[49] = 52;
assign _c_wave[50] = 46;
assign _c_wave[51] = 40;
assign _c_wave[52] = 34;
assign _c_wave[53] = 29;
assign _c_wave[54] = 23;
assign _c_wave[55] = 19;
assign _c_wave[56] = 14;
assign _c_wave[57] = 11;
assign _c_wave[58] = 7;
assign _c_wave[59] = 4;
assign _c_wave[60] = 2;
assign _c_wave[61] = 1;
assign _c_wave[62] = 0;
assign _c_wave[63] = 0;
reg  [5:0] _t_v;
reg  [7:0] _t_pix_r;
reg  [7:0] _t_pix_g;
reg  [7:0] _t_pix_b;

reg  [5:0] _d_frame;
reg  [5:0] _q_frame;
reg signed [8:0] _d_pos[3:0];
reg signed [8:0] _q_pos[3:0];
reg  [2:0] _d__idx_fsm0,_q__idx_fsm0;
reg  _autorun = 0;
assign out_pix_r = _t_pix_r;
assign out_pix_g = _t_pix_g;
assign out_pix_b = _t_pix_b;
assign out_done = (_q__idx_fsm0 == 0) && _autorun
;



`ifdef FORMAL
initial begin
assume(reset);
end
assume property($initstate || (out_done));
`endif
always @* begin
_d_frame = _q_frame;
_d_pos[0] = _q_pos[0];
_d_pos[1] = _q_pos[1];
_d_pos[2] = _q_pos[2];
_d_pos[3] = _q_pos[3];
_d__idx_fsm0 = _q__idx_fsm0;
_t_v = 0;
// _always_pre
_t_pix_r = 0;

_t_pix_g = 0;

_t_pix_b = 0;

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
_d__idx_fsm0 = 3;
end else begin
// __block_3
_d__idx_fsm0 = 0;
end
end
3: begin
// __while__block_5
if (in_pix_vblank==0) begin
// __block_6
// __block_8
if (in_pix_active) begin
// __block_9
// __block_11
if (in_pix_y+20>_q_pos[0]&&in_pix_y<_q_pos[0]+20) begin
// __block_12
// __block_14
_t_v = ((_c_wave[in_pix_y-_q_pos[0]+32]>>1)*(0+5))>>3;

_t_pix_r = _t_v<<2;

_t_pix_g = _t_v<<2;

_t_pix_b = _t_v<<2;

// __block_15
end else begin
// __block_13
end
// 'after'
// __block_16
if (in_pix_y+20>_q_pos[1]&&in_pix_y<_q_pos[1]+20) begin
// __block_17
// __block_19
_t_v = ((_c_wave[in_pix_y-_q_pos[1]+32]>>1)*(1+5))>>3;

_t_pix_r = _t_v<<2;

_t_pix_g = _t_v<<2;

_t_pix_b = _t_v<<2;

// __block_20
end else begin
// __block_18
end
// 'after'
// __block_21
if (in_pix_y+20>_q_pos[2]&&in_pix_y<_q_pos[2]+20) begin
// __block_22
// __block_24
_t_v = ((_c_wave[in_pix_y-_q_pos[2]+32]>>1)*(2+5))>>3;

_t_pix_r = _t_v<<2;

_t_pix_g = _t_v<<2;

_t_pix_b = _t_v<<2;

// __block_25
end else begin
// __block_23
end
// 'after'
// __block_26
if (in_pix_y+20>_q_pos[3]&&in_pix_y<_q_pos[3]+20) begin
// __block_27
// __block_29
_t_v = ((_c_wave[in_pix_y-_q_pos[3]+32]>>1)*(3+5))>>3;

_t_pix_r = _t_v<<2;

_t_pix_g = _t_v<<2;

_t_pix_b = _t_v<<2;

// __block_30
end else begin
// __block_28
end
// 'after'
// __block_31
// __block_32
end else begin
// __block_10
end
// 'after'
// __block_33
// __block_34
_d__idx_fsm0 = 3;
end else begin
// __block_7
_d_frame = _q_frame+1;

_d_pos[0] = 113+(_c_wave[(_d_frame+(0<<3))&63]<<1);

_d_pos[1] = 113+(_c_wave[(_d_frame+(1<<3))&63]<<1);

_d_pos[2] = 113+(_c_wave[(_d_frame+(2<<3))&63]<<1);

_d_pos[3] = 113+(_c_wave[(_d_frame+(3<<3))&63]<<1);

_d__idx_fsm0 = 4;
end
end
4: begin
// __while__block_35
if (in_pix_vblank==1) begin
// __block_36
// __block_38
// __block_39
_d__idx_fsm0 = 4;
end else begin
// __block_37
// __block_40
_d__idx_fsm0 = 2;
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
// _always_post
// pipeline stage triggers
end

always @(posedge clock) begin
_q_frame <= (reset) ? 0 : _d_frame;
_q_pos[0] <= (reset) ? 0 : _d_pos[0];
_q_pos[1] <= (reset) ? 0 : _d_pos[1];
_q_pos[2] <= (reset) ? 0 : _d_pos[2];
_q_pos[3] <= (reset) ? 0 : _d_pos[3];
_q__idx_fsm0 <= reset ? 0 : ( ~_autorun ? 1 : _d__idx_fsm0);
_autorun <= reset ? 0 : 1;
end

endmodule

