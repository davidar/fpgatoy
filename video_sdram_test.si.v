/*
[Bare framework] Leave empty, this is used when exporting to verilog
*/

module M_frame_drawer (
in_sd_data_out,
in_sd_done,
in_sdram_clock,
in_sdram_reset,
in_vsync,
out_sd_addr,
out_sd_rw,
out_sd_data_in,
out_sd_in_valid,
out_sd_wmask,
out_fbuffer,
in_run,
out_done,
reset,
out_clock,
clock
);
input  [32-1:0] in_sd_data_out;
input  [1-1:0] in_sd_done;
input  [0:0] in_sdram_clock;
input  [0:0] in_sdram_reset;
input  [0:0] in_vsync;
output  [32-1:0] out_sd_addr;
output  [1-1:0] out_sd_rw;
output  [32-1:0] out_sd_data_in;
output  [1-1:0] out_sd_in_valid;
output  [1-1:0] out_sd_wmask;
output  [0:0] out_fbuffer;
input in_run;
output out_done;
input reset;
output out_clock;
input clock;
assign out_clock = clock;
reg  [0:0] _t_vsync_filtered;
reg  [0:0] _t_i_bands_buffer;
reg  [7:0] _t___sub_bands_pix_palidx;

reg  [15:0] _d_shift;
reg  [15:0] _q_shift;
reg  [9:0] _d___sub_bands_pix_x;
reg  [9:0] _q___sub_bands_pix_x;
reg  [8:0] _d___sub_bands_pix_y;
reg  [8:0] _q___sub_bands_pix_y;
reg  [0:0] _d_delayed_51_0;
reg  [0:0] _q_delayed_51_0;
reg  [32-1:0] _d_sd_addr;
reg  [32-1:0] _q_sd_addr;
reg  [1-1:0] _d_sd_rw;
reg  [1-1:0] _q_sd_rw;
reg  [32-1:0] _d_sd_data_in;
reg  [32-1:0] _q_sd_data_in;
reg  [1-1:0] _d_sd_in_valid;
reg  [1-1:0] _q_sd_in_valid;
reg  [1-1:0] _d_sd_wmask;
reg  [1-1:0] _q_sd_wmask;
reg  [0:0] _d_fbuffer;
reg  [0:0] _q_fbuffer;
reg  [3:0] _d__idx_fsm0,_q__idx_fsm0;
reg  _autorun = 0;
reg  [0:0] _d_caller,_q_caller;
assign out_sd_addr = _q_sd_addr;
assign out_sd_rw = _q_sd_rw;
assign out_sd_data_in = _q_sd_data_in;
assign out_sd_in_valid = _q_sd_in_valid;
assign out_sd_wmask = _q_sd_wmask;
assign out_fbuffer = _q_fbuffer;
assign out_done = (_q__idx_fsm0 == 0) && _autorun
;



`ifdef FORMAL
initial begin
assume(reset);
end
assume property($initstate || (out_done));
`endif
always @* begin
_d_shift = _q_shift;
_d___sub_bands_pix_x = _q___sub_bands_pix_x;
_d___sub_bands_pix_y = _q___sub_bands_pix_y;
_d_delayed_51_0 = _q_delayed_51_0;
_d_sd_addr = _q_sd_addr;
_d_sd_rw = _q_sd_rw;
_d_sd_data_in = _q_sd_data_in;
_d_sd_in_valid = _q_sd_in_valid;
_d_sd_wmask = _q_sd_wmask;
_d_fbuffer = _q_fbuffer;
_d__idx_fsm0 = _q__idx_fsm0;
_d_caller = _q_caller;
_t_i_bands_buffer = 0;
_t___sub_bands_pix_palidx = 0;
// _always_pre
_t_vsync_filtered = _d_delayed_51_0;
_d_delayed_51_0 =  in_vsync;

_d_sd_in_valid = 0;

_d_sd_rw = 1;

(* full_case *)
case (_q__idx_fsm0)
1: begin
// _top
_d_sd_addr = 32'h82000000+32'h3000;

_d_sd_data_in = 0;

_d_sd_in_valid = 1;

_d__idx_fsm0 = 2;
end
2: begin
// __while__block_31
if (!in_sd_done) begin
// __block_32
// __block_34
// __block_35
_d__idx_fsm0 = 2;
end else begin
// __block_33
_d_sd_addr = 32'h82000000+32'h2808;

_d_sd_data_in = 0;

_d_sd_in_valid = 1;

_d__idx_fsm0 = 3;
end
end
3: begin
// __while__block_36
if (!in_sd_done) begin
// __block_37
// __block_39
// __block_40
_d__idx_fsm0 = 3;
end else begin
// __block_38
_d_sd_addr = 32'h82000000+32'h3000;

_d_sd_data_in = 1;

_d_sd_in_valid = 1;

_d__idx_fsm0 = 4;
end
end
4: begin
// __while__block_41
if (!in_sd_done) begin
// __block_42
// __block_44
// __block_45
_d__idx_fsm0 = 4;
end else begin
// __block_43
_d_sd_addr = 32'h82000000+32'h2808;

_d_sd_data_in = 1;

_d_sd_in_valid = 1;

_d__idx_fsm0 = 5;
end
end
5: begin
// __while__block_46
if (!in_sd_done) begin
// __block_47
// __block_49
// __block_50
_d__idx_fsm0 = 5;
end else begin
// __block_48
_d__idx_fsm0 = 6;
end
end
6: begin
// __while__block_51
if (1) begin
// __block_52
// __block_54

_t_i_bands_buffer = ~_q_fbuffer;
_d__idx_fsm0 = 7;
_d_caller = 0;
end else begin
// __block_53
_d__idx_fsm0 = 0;
end
end
7: begin
// __sub_bands (bands)
// var inits
_d___sub_bands_pix_x = 0;
_d___sub_bands_pix_y = 0;
_t___sub_bands_pix_palidx = 0;
// --
_d___sub_bands_pix_y = 0;

_d__idx_fsm0 = 8;
end
9: begin
// __block_55

_d_shift = (_q_shift==639) ? 0:_q_shift+1;

_d__idx_fsm0 = 11;
end
8: begin
// __while__block_16 (bands)
if (_q___sub_bands_pix_y!=480) begin
// __block_17 (bands)
// __block_19 (bands)
_d___sub_bands_pix_x = 0;

_d__idx_fsm0 = 10;
end else begin
// __block_18 (bands)
_d__idx_fsm0 = 4'd9;
end
end
11: begin
// __while__block_56
if (_t_vsync_filtered==0) begin
// __block_57
// __block_59
// __block_60
_d__idx_fsm0 = 11;
end else begin
// __block_58
_d_fbuffer = ~_q_fbuffer;

// __block_61
_d__idx_fsm0 = 6;
end
end
10: begin
// __while__block_20 (bands)
if (_q___sub_bands_pix_x!=640) begin
// __block_21 (bands)
// __block_23 (bands)
_t___sub_bands_pix_palidx = (_q___sub_bands_pix_y==0||_q___sub_bands_pix_y==478) ? 255:(_q___sub_bands_pix_x+_q___sub_bands_pix_y+_q_shift);

_d_sd_addr = 32'h40c00000|(_q___sub_bands_pix_x)|(_q___sub_bands_pix_y<<10);

_d_sd_data_in = _t___sub_bands_pix_palidx;

_d_sd_in_valid = 1;

_d__idx_fsm0 = 12;
end else begin
// __block_22 (bands)
_d___sub_bands_pix_y = _q___sub_bands_pix_y+1;

// __block_30 (bands)
_d__idx_fsm0 = 8;
end
end
12: begin
// __while__block_24 (bands)
if (!in_sd_done) begin
// __block_25 (bands)
// __block_27 (bands)
// __block_28 (bands)
_d__idx_fsm0 = 12;
end else begin
// __block_26 (bands)
_d___sub_bands_pix_x = _q___sub_bands_pix_x+1;

// __block_29 (bands)
_d__idx_fsm0 = 10;
end
end
0: begin 
end
default: begin 
_d__idx_fsm0 = {4{1'bx}};
`ifdef FORMAL
assume(0);
`endif
 end
endcase
// _always_post
// pipeline stage triggers
end

always @(posedge clock) begin
_q_shift <= (reset) ? 0 : _d_shift;
_q___sub_bands_pix_x <= (reset) ? 0 : _d___sub_bands_pix_x;
_q___sub_bands_pix_y <= (reset) ? 0 : _d___sub_bands_pix_y;
_q_delayed_51_0 <= _d_delayed_51_0;
_q_sd_addr <= (reset) ? 0 : _d_sd_addr;
_q_sd_rw <= (reset) ? 1 : _d_sd_rw;
_q_sd_data_in <= (reset) ? 0 : _d_sd_data_in;
_q_sd_in_valid <= (reset) ? 0 : _d_sd_in_valid;
_q_sd_wmask <= (reset) ? 0 : _d_sd_wmask;
_q_fbuffer <= _d_fbuffer;
_q__idx_fsm0 <= reset ? 0 : ( ~_autorun ? 1 : _d__idx_fsm0);
_autorun <= reset ? 0 : 1;
_q_caller <= _d_caller;
end

endmodule

