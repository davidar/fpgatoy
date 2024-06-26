/* Generated by Yosys 0.39+4 (git sha1 3231c1cd9, clang++ 14.0.0-1ubuntu1.1 -fPIC -Os) */

module neoTRNG(clk_i, rstn_i, enable_i, data_o, valid_o);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire [6:0] _10_;
  wire _11_;
  wire _12_;
  wire [7:0] _13_;
  wire [6:0] _14_;
  wire [7:0] _15_;
  wire [6:0] _16_;
  reg [1:0] _17_;
  reg _18_;
  reg _19_;
  reg [7:0] _20_;
  reg [6:0] _21_;
  wire _22_;
  wire _23_;
  wire _24_;
  wire _25_;
  wire _26_;
  wire _27_;
  wire _28_;
  wire [2:0] cell_en_in;
  wire [2:0] cell_en_out;
  wire [2:0] cell_rnd;
  input clk_i;
  wire clk_i;
  output [7:0] data_o;
  wire [7:0] data_o;
  wire debias_data;
  wire [1:0] debias_sreg;
  wire debias_state;
  wire debias_valid;
  input enable_i;
  wire enable_i;
  wire \entropy_source:1.neotrng_cell_inst:3 ;
  wire \entropy_source:1.neotrng_cell_inst:4 ;
  wire \entropy_source:2.neotrng_cell_inst:10 ;
  wire \entropy_source:2.neotrng_cell_inst:11 ;
  wire \entropy_source:3.neotrng_cell_inst:17 ;
  wire \entropy_source:3.neotrng_cell_inst:18 ;
  wire rnd_raw;
  input rstn_i;
  wire rstn_i;
  wire [6:0] sample_cnt;
  wire sample_en;
  wire [7:0] sample_sreg;
  output valid_o;
  wire valid_o;
  always @(posedge clk_i, posedge _07_)
    if (_07_) _21_ <= 7'h00;
    else _21_ <= _16_;
  assign _26_ = 1'h0 ^ cell_rnd[0];
  assign _27_ = _26_ ^ cell_rnd[1];
  assign _28_ = _27_ ^ cell_rnd[2];
  assign _01_ = ~ rstn_i;
  assign _02_ = ~ debias_state;
  assign _03_ = _02_ & cell_en_out[2];
  assign _04_ = { debias_state, debias_sreg } == 3'h5;
  assign _05_ = { debias_state, debias_sreg } == 3'h6;
  function [0:0] \61 ;
    input [0:0] a;
    input [1:0] b;
    input [1:0] s;
    (* parallel_case *)
    casez (s)
      2'b?1:
        \61  = b[0:0];
      2'b1?:
        \61  = b[1:1];
      default:
        \61  = a;
    endcase
  endfunction
  assign _06_ = \61 (1'h0, 2'h3, { _05_, _04_ });
  assign _07_ = ~ rstn_i;
  assign _08_ = ~ sample_en;
  assign _09_ = _08_ | sample_cnt[6];
  assign _10_ = sample_cnt + 7'h01;
  assign _12_ = sample_sreg[7] ^ debias_data;
  assign _13_ = debias_valid ? { sample_sreg[6:0], _12_ } : sample_sreg;
  assign _14_ = debias_valid ? _10_ : sample_cnt;
  assign _15_ = _09_ ? 8'h00 : _13_;
  assign _16_ = _09_ ? 7'h00 : _14_;
  always @(posedge clk_i, posedge _01_)
    if (_01_) _17_ <= 2'h0;
    else _17_ <= { debias_sreg[0], rnd_raw };
  always @(posedge clk_i, posedge _01_)
    if (_01_) _18_ <= 1'h0;
    else _18_ <= _03_;
  always @(posedge clk_i, posedge _07_)
    if (_07_) _19_ <= 1'h0;
    else _19_ <= enable_i;
  always @(posedge clk_i, posedge _07_)
    if (_07_) _20_ <= 8'h00;
    else _20_ <= _15_;
  neotrng_cell_5_5ba93c9db0cff93f52b521d7420e43f6eda2784f \entropy_source:1.neotrng_cell_inst  (
    .clk_i(clk_i),
    .en_i(cell_en_in[0]),
    .en_o(_00_),
    .rnd_o(_11_),
    .rstn_i(rstn_i)
  );
  neotrng_cell_7_5ba93c9db0cff93f52b521d7420e43f6eda2784f \entropy_source:2.neotrng_cell_inst  (
    .clk_i(clk_i),
    .en_i(cell_en_in[1]),
    .en_o(_22_),
    .rnd_o(_23_),
    .rstn_i(rstn_i)
  );
  neotrng_cell_9_5ba93c9db0cff93f52b521d7420e43f6eda2784f \entropy_source:3.neotrng_cell_inst  (
    .clk_i(clk_i),
    .en_i(cell_en_in[2]),
    .en_o(_24_),
    .rnd_o(_25_),
    .rstn_i(rstn_i)
  );
  assign cell_en_in = { cell_en_out[1:0], sample_en };
  assign cell_en_out = { \entropy_source:3.neotrng_cell_inst:17 , \entropy_source:2.neotrng_cell_inst:10 , \entropy_source:1.neotrng_cell_inst:3  };
  assign cell_rnd = { \entropy_source:3.neotrng_cell_inst:18 , \entropy_source:2.neotrng_cell_inst:11 , \entropy_source:1.neotrng_cell_inst:4  };
  assign rnd_raw = _28_;
  assign debias_sreg = _17_;
  assign debias_state = _18_;
  assign debias_valid = _06_;
  assign debias_data = debias_sreg[0];
  assign sample_en = _19_;
  assign sample_sreg = _20_;
  assign sample_cnt = _21_;
  assign \entropy_source:1.neotrng_cell_inst:3  = _00_;
  assign \entropy_source:1.neotrng_cell_inst:4  = _11_;
  assign \entropy_source:2.neotrng_cell_inst:10  = _22_;
  assign \entropy_source:2.neotrng_cell_inst:11  = _23_;
  assign \entropy_source:3.neotrng_cell_inst:17  = _24_;
  assign \entropy_source:3.neotrng_cell_inst:18  = _25_;
  assign data_o = sample_sreg;
  assign valid_o = sample_cnt[6];
endmodule

module neotrng_cell_5_5ba93c9db0cff93f52b521d7420e43f6eda2784f(clk_i, rstn_i, en_i, en_o, rnd_o);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  wire _21_;
  reg [4:0] _22_;
  reg [1:0] _23_;
  input clk_i;
  wire clk_i;
  input en_i;
  wire en_i;
  output en_o;
  wire en_o;
  output rnd_o;
  wire rnd_o;
  wire [4:0] rosc;
  input rstn_i;
  wire rstn_i;
  wire [4:0] sreg;
  wire [1:0] sync;
  assign _00_ = ~ en_i;
  assign _01_ = _00_ ? 1'h0 : _03_;
  assign _02_ = ~ rosc[4];
  assign _03_ = sreg[0] ? _02_ : rosc[0];
  assign _04_ = ~ en_i;
  assign _05_ = _04_ ? 1'h0 : _07_;
  assign _06_ = ~ rosc[0];
  assign _07_ = sreg[1] ? _06_ : rosc[1];
  assign _08_ = ~ en_i;
  assign _09_ = _08_ ? 1'h0 : _11_;
  assign _10_ = ~ rosc[1];
  assign _11_ = sreg[2] ? _10_ : rosc[2];
  assign _12_ = ~ en_i;
  assign _13_ = _12_ ? 1'h0 : _15_;
  assign _14_ = ~ rosc[2];
  assign _15_ = sreg[3] ? _14_ : rosc[3];
  assign _16_ = ~ en_i;
  assign _17_ = _16_ ? 1'h0 : _19_;
  assign _18_ = ~ rosc[3];
  assign _19_ = sreg[4] ? _18_ : rosc[4];
  assign _20_ = ~ rstn_i;
  assign _21_ = ~ rstn_i;
  always @(posedge clk_i, posedge _21_)
    if (_21_) _22_ <= 5'h00;
    else _22_ <= { sreg[3:0], en_i };
  always @(posedge clk_i, posedge _20_)
    if (_20_) _23_ <= 2'h0;
    else _23_ <= { sync[0], rosc[4] };
  assign rosc = { _17_, _13_, _09_, _05_, _01_ };
  assign sreg = _22_;
  assign sync = _23_;
  assign en_o = sreg[4];
  assign rnd_o = sync[1];
endmodule

module neotrng_cell_7_5ba93c9db0cff93f52b521d7420e43f6eda2784f(clk_i, rstn_i, en_i, en_o, rnd_o);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  wire _21_;
  wire _22_;
  wire _23_;
  wire _24_;
  wire _25_;
  wire _26_;
  wire _27_;
  wire _28_;
  wire _29_;
  reg [6:0] _30_;
  reg [1:0] _31_;
  input clk_i;
  wire clk_i;
  input en_i;
  wire en_i;
  output en_o;
  wire en_o;
  output rnd_o;
  wire rnd_o;
  wire [6:0] rosc;
  input rstn_i;
  wire rstn_i;
  wire [6:0] sreg;
  wire [1:0] sync;
  assign _00_ = ~ en_i;
  assign _01_ = _00_ ? 1'h0 : _03_;
  assign _02_ = ~ rosc[6];
  assign _03_ = sreg[0] ? _02_ : rosc[0];
  assign _04_ = ~ en_i;
  assign _05_ = _04_ ? 1'h0 : _07_;
  assign _06_ = ~ rosc[0];
  assign _07_ = sreg[1] ? _06_ : rosc[1];
  assign _08_ = ~ en_i;
  assign _09_ = _08_ ? 1'h0 : _11_;
  assign _10_ = ~ rosc[1];
  assign _11_ = sreg[2] ? _10_ : rosc[2];
  assign _12_ = ~ en_i;
  assign _13_ = _12_ ? 1'h0 : _15_;
  assign _14_ = ~ rosc[2];
  assign _15_ = sreg[3] ? _14_ : rosc[3];
  assign _16_ = ~ en_i;
  assign _17_ = _16_ ? 1'h0 : _19_;
  assign _18_ = ~ rosc[3];
  assign _19_ = sreg[4] ? _18_ : rosc[4];
  assign _20_ = ~ en_i;
  assign _21_ = _20_ ? 1'h0 : _23_;
  assign _22_ = ~ rosc[4];
  assign _23_ = sreg[5] ? _22_ : rosc[5];
  assign _24_ = ~ en_i;
  assign _25_ = _24_ ? 1'h0 : _27_;
  assign _26_ = ~ rosc[5];
  assign _27_ = sreg[6] ? _26_ : rosc[6];
  assign _28_ = ~ rstn_i;
  assign _29_ = ~ rstn_i;
  always @(posedge clk_i, posedge _29_)
    if (_29_) _30_ <= 7'h00;
    else _30_ <= { sreg[5:0], en_i };
  always @(posedge clk_i, posedge _28_)
    if (_28_) _31_ <= 2'h0;
    else _31_ <= { sync[0], rosc[6] };
  assign rosc = { _25_, _21_, _17_, _13_, _09_, _05_, _01_ };
  assign sreg = _30_;
  assign sync = _31_;
  assign en_o = sreg[6];
  assign rnd_o = sync[1];
endmodule

module neotrng_cell_9_5ba93c9db0cff93f52b521d7420e43f6eda2784f(clk_i, rstn_i, en_i, en_o, rnd_o);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  wire _21_;
  wire _22_;
  wire _23_;
  reg [8:0] _24_;
  reg [1:0] _25_;
  wire _26_;
  wire _27_;
  wire _28_;
  wire _29_;
  wire _30_;
  wire _31_;
  wire _32_;
  wire _33_;
  wire _34_;
  wire _35_;
  wire _36_;
  wire _37_;
  wire _38_;
  wire _39_;
  input clk_i;
  wire clk_i;
  input en_i;
  wire en_i;
  output en_o;
  wire en_o;
  output rnd_o;
  wire rnd_o;
  wire [8:0] rosc;
  input rstn_i;
  wire rstn_i;
  wire [8:0] sreg;
  wire [1:0] sync;
  assign _26_ = ~ en_i;
  assign _27_ = _26_ ? 1'h0 : _29_;
  assign _28_ = ~ rosc[8];
  assign _29_ = sreg[0] ? _28_ : rosc[0];
  assign _30_ = ~ en_i;
  assign _31_ = _30_ ? 1'h0 : _33_;
  assign _32_ = ~ rosc[0];
  assign _33_ = sreg[1] ? _32_ : rosc[1];
  assign _34_ = ~ en_i;
  assign _35_ = _34_ ? 1'h0 : _37_;
  assign _36_ = ~ rosc[1];
  assign _37_ = sreg[2] ? _36_ : rosc[2];
  assign _38_ = ~ en_i;
  assign _39_ = _38_ ? 1'h0 : _01_;
  assign _00_ = ~ rosc[2];
  assign _01_ = sreg[3] ? _00_ : rosc[3];
  assign _02_ = ~ en_i;
  assign _03_ = _02_ ? 1'h0 : _05_;
  assign _04_ = ~ rosc[3];
  assign _05_ = sreg[4] ? _04_ : rosc[4];
  assign _06_ = ~ en_i;
  assign _07_ = _06_ ? 1'h0 : _09_;
  assign _08_ = ~ rosc[4];
  assign _09_ = sreg[5] ? _08_ : rosc[5];
  assign _10_ = ~ en_i;
  assign _11_ = _10_ ? 1'h0 : _13_;
  assign _12_ = ~ rosc[5];
  assign _13_ = sreg[6] ? _12_ : rosc[6];
  assign _14_ = ~ en_i;
  assign _15_ = _14_ ? 1'h0 : _17_;
  assign _16_ = ~ rosc[6];
  assign _17_ = sreg[7] ? _16_ : rosc[7];
  assign _18_ = ~ en_i;
  assign _19_ = _18_ ? 1'h0 : _21_;
  assign _20_ = ~ rosc[7];
  assign _21_ = sreg[8] ? _20_ : rosc[8];
  assign _22_ = ~ rstn_i;
  assign _23_ = ~ rstn_i;
  always @(posedge clk_i, posedge _23_)
    if (_23_) _24_ <= 9'h000;
    else _24_ <= { sreg[7:0], en_i };
  always @(posedge clk_i, posedge _22_)
    if (_22_) _25_ <= 2'h0;
    else _25_ <= { sync[0], rosc[8] };
  assign rosc = { _19_, _15_, _11_, _07_, _03_, _39_, _35_, _31_, _27_ };
  assign sreg = _24_;
  assign sync = _25_;
  assign en_o = sreg[8];
  assign rnd_o = sync[1];
endmodule
