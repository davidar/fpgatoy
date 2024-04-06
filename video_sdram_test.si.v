/*
[Bare framework] Leave empty, this is used when exporting to verilog
*/

// SL 2019, MIT license
module M_frame_drawer__mem_palette(
input      [8-1:0]                in_addr0,
output reg  [24-1:0]     out_rdata0,
output reg  [24-1:0]     out_rdata1,
input      [1-1:0]             in_wenable1,
input      [24-1:0]                 in_wdata1,
input      [8-1:0]                in_addr1,
input      clock0,
input      clock1
);
(* no_rw_check *) reg  [24-1:0] buffer[256-1:0];
always @(posedge clock0) begin
  out_rdata0 <= buffer[in_addr0];
end
always @(posedge clock1) begin
  if (in_wenable1) begin
    buffer[in_addr1] <= in_wdata1;
  end
end
initial begin
 buffer[0] = 0;
 buffer[1] = 262657;
 buffer[2] = 525314;
 buffer[3] = 787971;
 buffer[4] = 1050628;
 buffer[5] = 1313285;
 buffer[6] = 1575942;
 buffer[7] = 1838599;
 buffer[8] = 2101256;
 buffer[9] = 2363913;
 buffer[10] = 2626570;
 buffer[11] = 2889227;
 buffer[12] = 3151884;
 buffer[13] = 3414541;
 buffer[14] = 3677198;
 buffer[15] = 3939855;
 buffer[16] = 4202512;
 buffer[17] = 4465169;
 buffer[18] = 4727826;
 buffer[19] = 4990483;
 buffer[20] = 5253140;
 buffer[21] = 5515797;
 buffer[22] = 5778454;
 buffer[23] = 6041111;
 buffer[24] = 6303768;
 buffer[25] = 6566425;
 buffer[26] = 6829082;
 buffer[27] = 7091739;
 buffer[28] = 7354396;
 buffer[29] = 7617053;
 buffer[30] = 7879710;
 buffer[31] = 8142367;
 buffer[32] = 8405024;
 buffer[33] = 8667681;
 buffer[34] = 8930338;
 buffer[35] = 9192995;
 buffer[36] = 9455652;
 buffer[37] = 9718309;
 buffer[38] = 9980966;
 buffer[39] = 10243623;
 buffer[40] = 10506280;
 buffer[41] = 10768937;
 buffer[42] = 11031594;
 buffer[43] = 11294251;
 buffer[44] = 11556908;
 buffer[45] = 11819565;
 buffer[46] = 12082222;
 buffer[47] = 12344879;
 buffer[48] = 12607536;
 buffer[49] = 12870193;
 buffer[50] = 13132850;
 buffer[51] = 13395507;
 buffer[52] = 13658164;
 buffer[53] = 13920821;
 buffer[54] = 14183478;
 buffer[55] = 14446135;
 buffer[56] = 14708792;
 buffer[57] = 14971449;
 buffer[58] = 15234106;
 buffer[59] = 15496763;
 buffer[60] = 15759420;
 buffer[61] = 16022077;
 buffer[62] = 16284734;
 buffer[63] = 16547391;
 buffer[64] = 32832;
 buffer[65] = 295489;
 buffer[66] = 558146;
 buffer[67] = 820803;
 buffer[68] = 1083460;
 buffer[69] = 1346117;
 buffer[70] = 1608774;
 buffer[71] = 1871431;
 buffer[72] = 2134088;
 buffer[73] = 2396745;
 buffer[74] = 2659402;
 buffer[75] = 2922059;
 buffer[76] = 3184716;
 buffer[77] = 3447373;
 buffer[78] = 3710030;
 buffer[79] = 3972687;
 buffer[80] = 4235344;
 buffer[81] = 4498001;
 buffer[82] = 4760658;
 buffer[83] = 5023315;
 buffer[84] = 5285972;
 buffer[85] = 5548629;
 buffer[86] = 5811286;
 buffer[87] = 6073943;
 buffer[88] = 6336600;
 buffer[89] = 6599257;
 buffer[90] = 6861914;
 buffer[91] = 7124571;
 buffer[92] = 7387228;
 buffer[93] = 7649885;
 buffer[94] = 7912542;
 buffer[95] = 8175199;
 buffer[96] = 8437856;
 buffer[97] = 8700513;
 buffer[98] = 8963170;
 buffer[99] = 9225827;
 buffer[100] = 9488484;
 buffer[101] = 9751141;
 buffer[102] = 10013798;
 buffer[103] = 10276455;
 buffer[104] = 10539112;
 buffer[105] = 10801769;
 buffer[106] = 11064426;
 buffer[107] = 11327083;
 buffer[108] = 11589740;
 buffer[109] = 11852397;
 buffer[110] = 12115054;
 buffer[111] = 12377711;
 buffer[112] = 12640368;
 buffer[113] = 12903025;
 buffer[114] = 13165682;
 buffer[115] = 13428339;
 buffer[116] = 13690996;
 buffer[117] = 13953653;
 buffer[118] = 14216310;
 buffer[119] = 14478967;
 buffer[120] = 14741624;
 buffer[121] = 15004281;
 buffer[122] = 15266938;
 buffer[123] = 15529595;
 buffer[124] = 15792252;
 buffer[125] = 16054909;
 buffer[126] = 16317566;
 buffer[127] = 16580223;
 buffer[128] = 128;
 buffer[129] = 262785;
 buffer[130] = 525442;
 buffer[131] = 788099;
 buffer[132] = 1050756;
 buffer[133] = 1313413;
 buffer[134] = 1576070;
 buffer[135] = 1838727;
 buffer[136] = 2101384;
 buffer[137] = 2364041;
 buffer[138] = 2626698;
 buffer[139] = 2889355;
 buffer[140] = 3152012;
 buffer[141] = 3414669;
 buffer[142] = 3677326;
 buffer[143] = 3939983;
 buffer[144] = 4202640;
 buffer[145] = 4465297;
 buffer[146] = 4727954;
 buffer[147] = 4990611;
 buffer[148] = 5253268;
 buffer[149] = 5515925;
 buffer[150] = 5778582;
 buffer[151] = 6041239;
 buffer[152] = 6303896;
 buffer[153] = 6566553;
 buffer[154] = 6829210;
 buffer[155] = 7091867;
 buffer[156] = 7354524;
 buffer[157] = 7617181;
 buffer[158] = 7879838;
 buffer[159] = 8142495;
 buffer[160] = 8405152;
 buffer[161] = 8667809;
 buffer[162] = 8930466;
 buffer[163] = 9193123;
 buffer[164] = 9455780;
 buffer[165] = 9718437;
 buffer[166] = 9981094;
 buffer[167] = 10243751;
 buffer[168] = 10506408;
 buffer[169] = 10769065;
 buffer[170] = 11031722;
 buffer[171] = 11294379;
 buffer[172] = 11557036;
 buffer[173] = 11819693;
 buffer[174] = 12082350;
 buffer[175] = 12345007;
 buffer[176] = 12607664;
 buffer[177] = 12870321;
 buffer[178] = 13132978;
 buffer[179] = 13395635;
 buffer[180] = 13658292;
 buffer[181] = 13920949;
 buffer[182] = 14183606;
 buffer[183] = 14446263;
 buffer[184] = 14708920;
 buffer[185] = 14971577;
 buffer[186] = 15234234;
 buffer[187] = 15496891;
 buffer[188] = 15759548;
 buffer[189] = 16022205;
 buffer[190] = 16284862;
 buffer[191] = 16547519;
 buffer[192] = 32960;
 buffer[193] = 295617;
 buffer[194] = 558274;
 buffer[195] = 820931;
 buffer[196] = 1083588;
 buffer[197] = 1346245;
 buffer[198] = 1608902;
 buffer[199] = 1871559;
 buffer[200] = 2134216;
 buffer[201] = 2396873;
 buffer[202] = 2659530;
 buffer[203] = 2922187;
 buffer[204] = 3184844;
 buffer[205] = 3447501;
 buffer[206] = 3710158;
 buffer[207] = 3972815;
 buffer[208] = 4235472;
 buffer[209] = 4498129;
 buffer[210] = 4760786;
 buffer[211] = 5023443;
 buffer[212] = 5286100;
 buffer[213] = 5548757;
 buffer[214] = 5811414;
 buffer[215] = 6074071;
 buffer[216] = 6336728;
 buffer[217] = 6599385;
 buffer[218] = 6862042;
 buffer[219] = 7124699;
 buffer[220] = 7387356;
 buffer[221] = 7650013;
 buffer[222] = 7912670;
 buffer[223] = 8175327;
 buffer[224] = 8437984;
 buffer[225] = 8700641;
 buffer[226] = 8963298;
 buffer[227] = 9225955;
 buffer[228] = 9488612;
 buffer[229] = 9751269;
 buffer[230] = 10013926;
 buffer[231] = 10276583;
 buffer[232] = 10539240;
 buffer[233] = 10801897;
 buffer[234] = 11064554;
 buffer[235] = 11327211;
 buffer[236] = 11589868;
 buffer[237] = 11852525;
 buffer[238] = 12115182;
 buffer[239] = 12377839;
 buffer[240] = 12640496;
 buffer[241] = 12903153;
 buffer[242] = 13165810;
 buffer[243] = 13428467;
 buffer[244] = 13691124;
 buffer[245] = 13953781;
 buffer[246] = 14216438;
 buffer[247] = 14479095;
 buffer[248] = 14741752;
 buffer[249] = 15004409;
 buffer[250] = 15267066;
 buffer[251] = 15529723;
 buffer[252] = 15792380;
 buffer[253] = 16055037;
 buffer[254] = 16317694;
 buffer[255] = 16580351;
end

endmodule

module M_frame_drawer (
in_sd_data_out,
in_sd_done,
in_sdram_clock,
in_sdram_reset,
in_vsync,
in_framebuffer_base,
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
input  [31:0] in_framebuffer_base;
output  [32-1:0] out_sd_addr;
output  [1-1:0] out_sd_rw;
output  [32-1:0] out_sd_data_in;
output  [1-1:0] out_sd_in_valid;
output  [4-1:0] out_sd_wmask;
output  [0:0] out_fbuffer;
input in_run;
output out_done;
input reset;
output out_clock;
input clock;
assign out_clock = clock;
wire  [23:0] _w_mem_palette_rdata0;
reg  [0:0] _t_vsync_filtered;
reg  [0:0] _t_palette_wenable1;
reg  [23:0] _t_palette_wdata1;
reg  [7:0] _t_palette_addr1;
reg  [7:0] _t___sub_bands_pix_palidx;

reg  [15:0] _d_shift;
reg  [15:0] _q_shift;
reg  [7:0] _d_palette_addr0 = 0;
reg  [7:0] _q_palette_addr0 = 0;
reg  [0:0] _d_i_bands_buffer;
reg  [0:0] _q_i_bands_buffer;
reg  [9:0] _d___sub_bands_pix_x;
reg  [9:0] _q___sub_bands_pix_x;
reg  [8:0] _d___sub_bands_pix_y;
reg  [8:0] _q___sub_bands_pix_y;
reg signed [7:0] _d___block_11_wait;
reg signed [7:0] _q___block_11_wait;
reg  [0:0] _d_delayed_297_0;
reg  [0:0] _q_delayed_297_0;
reg  [32-1:0] _d_sd_addr;
reg  [32-1:0] _q_sd_addr;
reg  [1-1:0] _d_sd_rw;
reg  [1-1:0] _q_sd_rw;
reg  [32-1:0] _d_sd_data_in;
reg  [32-1:0] _q_sd_data_in;
reg  [1-1:0] _d_sd_in_valid;
reg  [1-1:0] _q_sd_in_valid;
reg  [4-1:0] _d_sd_wmask;
reg  [4-1:0] _q_sd_wmask;
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

M_frame_drawer__mem_palette __mem__palette(
.clock0(clock),
.clock1(clock),
.in_addr0(_d_palette_addr0),
.in_wenable1(_t_palette_wenable1),
.in_wdata1(_t_palette_wdata1),
.in_addr1(_t_palette_addr1),
.out_rdata0(_w_mem_palette_rdata0)
);


`ifdef FORMAL
initial begin
assume(reset);
end
assume property($initstate || (out_done));
`endif
always @* begin
_d_shift = _q_shift;
_d_palette_addr0 = _q_palette_addr0;
_d_i_bands_buffer = _q_i_bands_buffer;
_d___sub_bands_pix_x = _q___sub_bands_pix_x;
_d___sub_bands_pix_y = _q___sub_bands_pix_y;
_d___block_11_wait = _q___block_11_wait;
_d_delayed_297_0 = _q_delayed_297_0;
_d_sd_addr = _q_sd_addr;
_d_sd_rw = _q_sd_rw;
_d_sd_data_in = _q_sd_data_in;
_d_sd_in_valid = _q_sd_in_valid;
_d_sd_wmask = _q_sd_wmask;
_d_fbuffer = _q_fbuffer;
_d__idx_fsm0 = _q__idx_fsm0;
_d_caller = _q_caller;
_t_palette_wenable1 = 0;
_t_palette_wdata1 = 0;
_t_palette_addr1 = 0;
_t___sub_bands_pix_palidx = 0;
// _always_pre
_t_vsync_filtered = _d_delayed_297_0;
_d_delayed_297_0 =  in_vsync;

_d_sd_in_valid = 0;

_d_sd_rw = 1;

_d_sd_wmask = 4'b1111;

(* full_case *)
case (_q__idx_fsm0)
1: begin
// _top
_d__idx_fsm0 = 2;
end
2: begin
// __while__block_21
if (in_framebuffer_base==0) begin
// __block_22
// __block_24
// __block_25
_d__idx_fsm0 = 2;
end else begin
// __block_23
_d__idx_fsm0 = 3;
end
end
3: begin
// __while__block_26
if (1) begin
// __block_27
// __block_29

_d_i_bands_buffer = ~_q_fbuffer;
_d__idx_fsm0 = 4;
_d_caller = 0;
end else begin
// __block_28
_d__idx_fsm0 = 0;
end
end
4: begin
// __sub_bands (bands)
// var inits
_d___sub_bands_pix_x = 0;
_d___sub_bands_pix_y = 0;
_t___sub_bands_pix_palidx = 0;
// --
_d___sub_bands_pix_y = 0;

_d__idx_fsm0 = 5;
end
6: begin
// __block_30

_d_shift = (_q_shift==639) ? 0:_q_shift+9;

_d__idx_fsm0 = 8;
end
5: begin
// __while__block_1 (bands)
if (_q___sub_bands_pix_y<480) begin
// __block_2 (bands)
// __block_4 (bands)
_d___sub_bands_pix_x = 0;

_d__idx_fsm0 = 7;
end else begin
// __block_3 (bands)
_d__idx_fsm0 = 4'd6;
end
end
8: begin
// __while__block_31
if (_t_vsync_filtered==0) begin
// __block_32
// __block_34
// __block_35
_d__idx_fsm0 = 8;
end else begin
// __block_33
_d_fbuffer = ~_q_fbuffer;

// __block_36
_d__idx_fsm0 = 3;
end
end
7: begin
// __while__block_5 (bands)
if (_q___sub_bands_pix_x<640) begin
// __block_6 (bands)
// __block_8 (bands)
_t___sub_bands_pix_palidx = (_q___sub_bands_pix_x+_q___sub_bands_pix_y+_q_shift);

_d_sd_addr = in_framebuffer_base+4*(_q___sub_bands_pix_x+640*(_q___sub_bands_pix_y+480*_q_i_bands_buffer));

_d_palette_addr0 = _t___sub_bands_pix_palidx;

_d_sd_data_in = _w_mem_palette_rdata0;

_d_sd_in_valid = 1;

_d__idx_fsm0 = 9;
end else begin
// __block_7 (bands)
_d___sub_bands_pix_y = _q___sub_bands_pix_y+1;

// __block_20 (bands)
_d__idx_fsm0 = 5;
end
end
9: begin
// __while__block_9 (bands)
if (!in_sd_done) begin
// __block_10 (bands)
// __block_12 (bands)
// __block_13 (bands)
_d__idx_fsm0 = 9;
end else begin
// __block_11 (bands)
// var inits
_d___block_11_wait = 5;
// --
_d__idx_fsm0 = 10;
end
end
10: begin
// __while__block_14 (bands)
if (_q___block_11_wait>0) begin
// __block_15 (bands)
// __block_17 (bands)
_d___block_11_wait = _q___block_11_wait-1;

// __block_18 (bands)
_d__idx_fsm0 = 10;
end else begin
// __block_16 (bands)
_d___sub_bands_pix_x = _q___sub_bands_pix_x+1;

// __block_19 (bands)
_d__idx_fsm0 = 7;
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
_q_palette_addr0 <= _d_palette_addr0;
_q_i_bands_buffer <= _d_i_bands_buffer;
_q___sub_bands_pix_x <= (reset) ? 0 : _d___sub_bands_pix_x;
_q___sub_bands_pix_y <= (reset) ? 0 : _d___sub_bands_pix_y;
_q___block_11_wait <= (reset) ? 5 : _d___block_11_wait;
_q_delayed_297_0 <= _d_delayed_297_0;
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

