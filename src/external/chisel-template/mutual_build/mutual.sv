module rule_Try(
  input        io_en_r,
  input  [1:0] io_n_in_0,
  input  [1:0] io_n_in_1,
  output [1:0] io_n_out_0,
  output [1:0] io_n_out_1,
  input        io_x_in,
  output       io_x_out
);
  wire [1:0] _GEN_0 = io_n_in_0 == 2'h0 ? 2'h1 : io_n_in_0; // @[mutual.scala 24:11 33:31 34:19]
  assign io_n_out_0 = io_en_r ? _GEN_0 : io_n_in_0; // @[mutual.scala 24:11 31:16]
  assign io_n_out_1 = io_n_in_1; // @[mutual.scala 24:11]
  assign io_x_out = io_x_in; // @[mutual.scala 25:11]
endmodule
module rule_Crit(
  input        io_en_r,
  input  [1:0] io_n_in_0,
  input  [1:0] io_n_in_1,
  output [1:0] io_n_out_0,
  output [1:0] io_n_out_1,
  input        io_x_in,
  output       io_x_out
);
  wire [1:0] _GEN_0 = io_n_in_0 == 2'h1 & io_x_in ? 2'h2 : io_n_in_0; // @[mutual.scala 24:11 45:57 46:19]
  wire  _GEN_1 = io_n_in_0 == 2'h1 & io_x_in ? 1'h0 : io_x_in; // @[mutual.scala 25:11 45:57 47:16]
  assign io_n_out_0 = io_en_r ? _GEN_0 : io_n_in_0; // @[mutual.scala 24:11 43:16]
  assign io_n_out_1 = io_n_in_1; // @[mutual.scala 24:11]
  assign io_x_out = io_en_r ? _GEN_1 : io_x_in; // @[mutual.scala 25:11 43:16]
endmodule
module rule_Exit(
  input        io_en_r,
  input  [1:0] io_n_in_0,
  input  [1:0] io_n_in_1,
  output [1:0] io_n_out_0,
  output [1:0] io_n_out_1,
  input        io_x_in,
  output       io_x_out
);
  wire [1:0] _GEN_0 = io_n_in_0 == 2'h2 ? 2'h3 : io_n_in_0; // @[mutual.scala 24:11 58:31 59:19]
  assign io_n_out_0 = io_en_r ? _GEN_0 : io_n_in_0; // @[mutual.scala 24:11 56:16]
  assign io_n_out_1 = io_n_in_1; // @[mutual.scala 24:11]
  assign io_x_out = io_x_in; // @[mutual.scala 25:11]
endmodule
module rule_Idle(
  input        io_en_r,
  input  [1:0] io_n_in_0,
  input  [1:0] io_n_in_1,
  output [1:0] io_n_out_0,
  output [1:0] io_n_out_1,
  input        io_x_in,
  output       io_x_out
);
  wire [1:0] _GEN_0 = io_n_in_0 == 2'h3 ? 2'h0 : io_n_in_0; // @[mutual.scala 24:11 70:31 71:19]
  wire  _GEN_1 = io_n_in_0 == 2'h3 | io_x_in; // @[mutual.scala 25:11 70:31 72:16]
  assign io_n_out_0 = io_en_r ? _GEN_0 : io_n_in_0; // @[mutual.scala 24:11 68:16]
  assign io_n_out_1 = io_n_in_1; // @[mutual.scala 24:11]
  assign io_x_out = io_en_r ? _GEN_1 : io_x_in; // @[mutual.scala 25:11 68:16]
endmodule
module rule_Try_1(
  input        io_en_r,
  input  [1:0] io_n_in_0,
  input  [1:0] io_n_in_1,
  output [1:0] io_n_out_0,
  output [1:0] io_n_out_1,
  input        io_x_in,
  output       io_x_out
);
  wire [1:0] _GEN_0 = io_n_in_1 == 2'h0 ? 2'h1 : io_n_in_1; // @[mutual.scala 24:11 33:31 34:19]
  assign io_n_out_0 = io_n_in_0; // @[mutual.scala 24:11]
  assign io_n_out_1 = io_en_r ? _GEN_0 : io_n_in_1; // @[mutual.scala 24:11 31:16]
  assign io_x_out = io_x_in; // @[mutual.scala 25:11]
endmodule
module rule_Crit_1(
  input        io_en_r,
  input  [1:0] io_n_in_0,
  input  [1:0] io_n_in_1,
  output [1:0] io_n_out_0,
  output [1:0] io_n_out_1,
  input        io_x_in,
  output       io_x_out
);
  wire [1:0] _GEN_0 = io_n_in_1 == 2'h1 & io_x_in ? 2'h2 : io_n_in_1; // @[mutual.scala 24:11 45:57 46:19]
  wire  _GEN_1 = io_n_in_1 == 2'h1 & io_x_in ? 1'h0 : io_x_in; // @[mutual.scala 25:11 45:57 47:16]
  assign io_n_out_0 = io_n_in_0; // @[mutual.scala 24:11]
  assign io_n_out_1 = io_en_r ? _GEN_0 : io_n_in_1; // @[mutual.scala 24:11 43:16]
  assign io_x_out = io_en_r ? _GEN_1 : io_x_in; // @[mutual.scala 25:11 43:16]
endmodule
module rule_Exit_1(
  input        io_en_r,
  input  [1:0] io_n_in_0,
  input  [1:0] io_n_in_1,
  output [1:0] io_n_out_0,
  output [1:0] io_n_out_1,
  input        io_x_in,
  output       io_x_out
);
  wire [1:0] _GEN_0 = io_n_in_1 == 2'h2 ? 2'h3 : io_n_in_1; // @[mutual.scala 24:11 58:31 59:19]
  assign io_n_out_0 = io_n_in_0; // @[mutual.scala 24:11]
  assign io_n_out_1 = io_en_r ? _GEN_0 : io_n_in_1; // @[mutual.scala 24:11 56:16]
  assign io_x_out = io_x_in; // @[mutual.scala 25:11]
endmodule
module rule_Idle_1(
  input        io_en_r,
  input  [1:0] io_n_in_0,
  input  [1:0] io_n_in_1,
  output [1:0] io_n_out_0,
  output [1:0] io_n_out_1,
  input        io_x_in,
  output       io_x_out
);
  wire [1:0] _GEN_0 = io_n_in_1 == 2'h3 ? 2'h0 : io_n_in_1; // @[mutual.scala 24:11 70:31 71:19]
  wire  _GEN_1 = io_n_in_1 == 2'h3 | io_x_in; // @[mutual.scala 25:11 70:31 72:16]
  assign io_n_out_0 = io_n_in_0; // @[mutual.scala 24:11]
  assign io_n_out_1 = io_en_r ? _GEN_0 : io_n_in_1; // @[mutual.scala 24:11 68:16]
  assign io_x_out = io_en_r ? _GEN_1 : io_x_in; // @[mutual.scala 25:11 68:16]
endmodule
module mutual(
  input        clock,
  input        reset,
  input  [2:0] io_en_a,
  output [1:0] io_n_out_0,
  output [1:0] io_n_out_1,
  output       io_x_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire  rules_0_io_en_r; // @[mutual.scala 101:20]
  wire [1:0] rules_0_io_n_in_0; // @[mutual.scala 101:20]
  wire [1:0] rules_0_io_n_in_1; // @[mutual.scala 101:20]
  wire [1:0] rules_0_io_n_out_0; // @[mutual.scala 101:20]
  wire [1:0] rules_0_io_n_out_1; // @[mutual.scala 101:20]
  wire  rules_0_io_x_in; // @[mutual.scala 101:20]
  wire  rules_0_io_x_out; // @[mutual.scala 101:20]
  wire  rules_1_io_en_r; // @[mutual.scala 102:20]
  wire [1:0] rules_1_io_n_in_0; // @[mutual.scala 102:20]
  wire [1:0] rules_1_io_n_in_1; // @[mutual.scala 102:20]
  wire [1:0] rules_1_io_n_out_0; // @[mutual.scala 102:20]
  wire [1:0] rules_1_io_n_out_1; // @[mutual.scala 102:20]
  wire  rules_1_io_x_in; // @[mutual.scala 102:20]
  wire  rules_1_io_x_out; // @[mutual.scala 102:20]
  wire  rules_2_io_en_r; // @[mutual.scala 103:20]
  wire [1:0] rules_2_io_n_in_0; // @[mutual.scala 103:20]
  wire [1:0] rules_2_io_n_in_1; // @[mutual.scala 103:20]
  wire [1:0] rules_2_io_n_out_0; // @[mutual.scala 103:20]
  wire [1:0] rules_2_io_n_out_1; // @[mutual.scala 103:20]
  wire  rules_2_io_x_in; // @[mutual.scala 103:20]
  wire  rules_2_io_x_out; // @[mutual.scala 103:20]
  wire  rules_3_io_en_r; // @[mutual.scala 104:20]
  wire [1:0] rules_3_io_n_in_0; // @[mutual.scala 104:20]
  wire [1:0] rules_3_io_n_in_1; // @[mutual.scala 104:20]
  wire [1:0] rules_3_io_n_out_0; // @[mutual.scala 104:20]
  wire [1:0] rules_3_io_n_out_1; // @[mutual.scala 104:20]
  wire  rules_3_io_x_in; // @[mutual.scala 104:20]
  wire  rules_3_io_x_out; // @[mutual.scala 104:20]
  wire  rules_4_io_en_r; // @[mutual.scala 101:20]
  wire [1:0] rules_4_io_n_in_0; // @[mutual.scala 101:20]
  wire [1:0] rules_4_io_n_in_1; // @[mutual.scala 101:20]
  wire [1:0] rules_4_io_n_out_0; // @[mutual.scala 101:20]
  wire [1:0] rules_4_io_n_out_1; // @[mutual.scala 101:20]
  wire  rules_4_io_x_in; // @[mutual.scala 101:20]
  wire  rules_4_io_x_out; // @[mutual.scala 101:20]
  wire  rules_5_io_en_r; // @[mutual.scala 102:20]
  wire [1:0] rules_5_io_n_in_0; // @[mutual.scala 102:20]
  wire [1:0] rules_5_io_n_in_1; // @[mutual.scala 102:20]
  wire [1:0] rules_5_io_n_out_0; // @[mutual.scala 102:20]
  wire [1:0] rules_5_io_n_out_1; // @[mutual.scala 102:20]
  wire  rules_5_io_x_in; // @[mutual.scala 102:20]
  wire  rules_5_io_x_out; // @[mutual.scala 102:20]
  wire  rules_6_io_en_r; // @[mutual.scala 103:20]
  wire [1:0] rules_6_io_n_in_0; // @[mutual.scala 103:20]
  wire [1:0] rules_6_io_n_in_1; // @[mutual.scala 103:20]
  wire [1:0] rules_6_io_n_out_0; // @[mutual.scala 103:20]
  wire [1:0] rules_6_io_n_out_1; // @[mutual.scala 103:20]
  wire  rules_6_io_x_in; // @[mutual.scala 103:20]
  wire  rules_6_io_x_out; // @[mutual.scala 103:20]
  wire  rules_7_io_en_r; // @[mutual.scala 104:20]
  wire [1:0] rules_7_io_n_in_0; // @[mutual.scala 104:20]
  wire [1:0] rules_7_io_n_in_1; // @[mutual.scala 104:20]
  wire [1:0] rules_7_io_n_out_0; // @[mutual.scala 104:20]
  wire [1:0] rules_7_io_n_out_1; // @[mutual.scala 104:20]
  wire  rules_7_io_x_in; // @[mutual.scala 104:20]
  wire  rules_7_io_x_out; // @[mutual.scala 104:20]
  reg [1:0] n_reg_0; // @[mutual.scala 89:22]
  reg [1:0] n_reg_1; // @[mutual.scala 89:22]
  reg  x_reg; // @[mutual.scala 92:22]
  wire  _T = io_en_a == 3'h0; // @[mutual.scala 110:31]
  wire [1:0] _GEN_0 = _T ? rules_0_io_n_out_0 : n_reg_0; // @[mutual.scala 111:25 112:13 89:22]
  wire [1:0] _GEN_1 = _T ? rules_0_io_n_out_1 : n_reg_1; // @[mutual.scala 111:25 112:13 89:22]
  wire  _GEN_2 = _T ? rules_0_io_x_out : x_reg; // @[mutual.scala 111:25 113:13 92:22]
  wire  _T_2 = io_en_a == 3'h1; // @[mutual.scala 110:31]
  wire [1:0] _GEN_3 = _T_2 ? rules_1_io_n_out_0 : _GEN_0; // @[mutual.scala 111:25 112:13]
  wire [1:0] _GEN_4 = _T_2 ? rules_1_io_n_out_1 : _GEN_1; // @[mutual.scala 111:25 112:13]
  wire  _GEN_5 = _T_2 ? rules_1_io_x_out : _GEN_2; // @[mutual.scala 111:25 113:13]
  wire  _T_4 = io_en_a == 3'h2; // @[mutual.scala 110:31]
  wire [1:0] _GEN_6 = _T_4 ? rules_2_io_n_out_0 : _GEN_3; // @[mutual.scala 111:25 112:13]
  wire [1:0] _GEN_7 = _T_4 ? rules_2_io_n_out_1 : _GEN_4; // @[mutual.scala 111:25 112:13]
  wire  _GEN_8 = _T_4 ? rules_2_io_x_out : _GEN_5; // @[mutual.scala 111:25 113:13]
  wire  _T_6 = io_en_a == 3'h3; // @[mutual.scala 110:31]
  wire [1:0] _GEN_9 = _T_6 ? rules_3_io_n_out_0 : _GEN_6; // @[mutual.scala 111:25 112:13]
  wire [1:0] _GEN_10 = _T_6 ? rules_3_io_n_out_1 : _GEN_7; // @[mutual.scala 111:25 112:13]
  wire  _GEN_11 = _T_6 ? rules_3_io_x_out : _GEN_8; // @[mutual.scala 111:25 113:13]
  wire  _T_8 = io_en_a == 3'h4; // @[mutual.scala 110:31]
  wire [1:0] _GEN_12 = _T_8 ? rules_4_io_n_out_0 : _GEN_9; // @[mutual.scala 111:25 112:13]
  wire [1:0] _GEN_13 = _T_8 ? rules_4_io_n_out_1 : _GEN_10; // @[mutual.scala 111:25 112:13]
  wire  _GEN_14 = _T_8 ? rules_4_io_x_out : _GEN_11; // @[mutual.scala 111:25 113:13]
  wire  _T_10 = io_en_a == 3'h5; // @[mutual.scala 110:31]
  wire  _GEN_17 = _T_10 ? rules_5_io_x_out : _GEN_14; // @[mutual.scala 111:25 113:13]
  wire  _T_12 = io_en_a == 3'h6; // @[mutual.scala 110:31]
  wire  _GEN_20 = _T_12 ? rules_6_io_x_out : _GEN_17; // @[mutual.scala 111:25 113:13]
  wire  _T_14 = io_en_a == 3'h7; // @[mutual.scala 110:31]
  wire  _GEN_23 = _T_14 ? rules_7_io_x_out : _GEN_20; // @[mutual.scala 111:25 113:13]
  rule_Try rules_0 ( // @[mutual.scala 101:20]
    .io_en_r(rules_0_io_en_r),
    .io_n_in_0(rules_0_io_n_in_0),
    .io_n_in_1(rules_0_io_n_in_1),
    .io_n_out_0(rules_0_io_n_out_0),
    .io_n_out_1(rules_0_io_n_out_1),
    .io_x_in(rules_0_io_x_in),
    .io_x_out(rules_0_io_x_out)
  );
  rule_Crit rules_1 ( // @[mutual.scala 102:20]
    .io_en_r(rules_1_io_en_r),
    .io_n_in_0(rules_1_io_n_in_0),
    .io_n_in_1(rules_1_io_n_in_1),
    .io_n_out_0(rules_1_io_n_out_0),
    .io_n_out_1(rules_1_io_n_out_1),
    .io_x_in(rules_1_io_x_in),
    .io_x_out(rules_1_io_x_out)
  );
  rule_Exit rules_2 ( // @[mutual.scala 103:20]
    .io_en_r(rules_2_io_en_r),
    .io_n_in_0(rules_2_io_n_in_0),
    .io_n_in_1(rules_2_io_n_in_1),
    .io_n_out_0(rules_2_io_n_out_0),
    .io_n_out_1(rules_2_io_n_out_1),
    .io_x_in(rules_2_io_x_in),
    .io_x_out(rules_2_io_x_out)
  );
  rule_Idle rules_3 ( // @[mutual.scala 104:20]
    .io_en_r(rules_3_io_en_r),
    .io_n_in_0(rules_3_io_n_in_0),
    .io_n_in_1(rules_3_io_n_in_1),
    .io_n_out_0(rules_3_io_n_out_0),
    .io_n_out_1(rules_3_io_n_out_1),
    .io_x_in(rules_3_io_x_in),
    .io_x_out(rules_3_io_x_out)
  );
  rule_Try_1 rules_4 ( // @[mutual.scala 101:20]
    .io_en_r(rules_4_io_en_r),
    .io_n_in_0(rules_4_io_n_in_0),
    .io_n_in_1(rules_4_io_n_in_1),
    .io_n_out_0(rules_4_io_n_out_0),
    .io_n_out_1(rules_4_io_n_out_1),
    .io_x_in(rules_4_io_x_in),
    .io_x_out(rules_4_io_x_out)
  );
  rule_Crit_1 rules_5 ( // @[mutual.scala 102:20]
    .io_en_r(rules_5_io_en_r),
    .io_n_in_0(rules_5_io_n_in_0),
    .io_n_in_1(rules_5_io_n_in_1),
    .io_n_out_0(rules_5_io_n_out_0),
    .io_n_out_1(rules_5_io_n_out_1),
    .io_x_in(rules_5_io_x_in),
    .io_x_out(rules_5_io_x_out)
  );
  rule_Exit_1 rules_6 ( // @[mutual.scala 103:20]
    .io_en_r(rules_6_io_en_r),
    .io_n_in_0(rules_6_io_n_in_0),
    .io_n_in_1(rules_6_io_n_in_1),
    .io_n_out_0(rules_6_io_n_out_0),
    .io_n_out_1(rules_6_io_n_out_1),
    .io_x_in(rules_6_io_x_in),
    .io_x_out(rules_6_io_x_out)
  );
  rule_Idle_1 rules_7 ( // @[mutual.scala 104:20]
    .io_en_r(rules_7_io_en_r),
    .io_n_in_0(rules_7_io_n_in_0),
    .io_n_in_1(rules_7_io_n_in_1),
    .io_n_out_0(rules_7_io_n_out_0),
    .io_n_out_1(rules_7_io_n_out_1),
    .io_x_in(rules_7_io_x_in),
    .io_x_out(rules_7_io_x_out)
  );
  assign io_n_out_0 = n_reg_0; // @[mutual.scala 90:11]
  assign io_n_out_1 = n_reg_1; // @[mutual.scala 90:11]
  assign io_x_out = x_reg; // @[mutual.scala 93:11]
  assign rules_0_io_en_r = io_en_a == 3'h0; // @[mutual.scala 110:31]
  assign rules_0_io_n_in_0 = n_reg_0; // @[mutual.scala 108:22]
  assign rules_0_io_n_in_1 = n_reg_1; // @[mutual.scala 108:22]
  assign rules_0_io_x_in = x_reg; // @[mutual.scala 109:22]
  assign rules_1_io_en_r = io_en_a == 3'h1; // @[mutual.scala 110:31]
  assign rules_1_io_n_in_0 = n_reg_0; // @[mutual.scala 108:22]
  assign rules_1_io_n_in_1 = n_reg_1; // @[mutual.scala 108:22]
  assign rules_1_io_x_in = x_reg; // @[mutual.scala 109:22]
  assign rules_2_io_en_r = io_en_a == 3'h2; // @[mutual.scala 110:31]
  assign rules_2_io_n_in_0 = n_reg_0; // @[mutual.scala 108:22]
  assign rules_2_io_n_in_1 = n_reg_1; // @[mutual.scala 108:22]
  assign rules_2_io_x_in = x_reg; // @[mutual.scala 109:22]
  assign rules_3_io_en_r = io_en_a == 3'h3; // @[mutual.scala 110:31]
  assign rules_3_io_n_in_0 = n_reg_0; // @[mutual.scala 108:22]
  assign rules_3_io_n_in_1 = n_reg_1; // @[mutual.scala 108:22]
  assign rules_3_io_x_in = x_reg; // @[mutual.scala 109:22]
  assign rules_4_io_en_r = io_en_a == 3'h4; // @[mutual.scala 110:31]
  assign rules_4_io_n_in_0 = n_reg_0; // @[mutual.scala 108:22]
  assign rules_4_io_n_in_1 = n_reg_1; // @[mutual.scala 108:22]
  assign rules_4_io_x_in = x_reg; // @[mutual.scala 109:22]
  assign rules_5_io_en_r = io_en_a == 3'h5; // @[mutual.scala 110:31]
  assign rules_5_io_n_in_0 = n_reg_0; // @[mutual.scala 108:22]
  assign rules_5_io_n_in_1 = n_reg_1; // @[mutual.scala 108:22]
  assign rules_5_io_x_in = x_reg; // @[mutual.scala 109:22]
  assign rules_6_io_en_r = io_en_a == 3'h6; // @[mutual.scala 110:31]
  assign rules_6_io_n_in_0 = n_reg_0; // @[mutual.scala 108:22]
  assign rules_6_io_n_in_1 = n_reg_1; // @[mutual.scala 108:22]
  assign rules_6_io_x_in = x_reg; // @[mutual.scala 109:22]
  assign rules_7_io_en_r = io_en_a == 3'h7; // @[mutual.scala 110:31]
  assign rules_7_io_n_in_0 = n_reg_0; // @[mutual.scala 108:22]
  assign rules_7_io_n_in_1 = n_reg_1; // @[mutual.scala 108:22]
  assign rules_7_io_x_in = x_reg; // @[mutual.scala 109:22]
  always @(posedge clock) begin
    if (reset) begin // @[mutual.scala 89:22]
      n_reg_0 <= 2'h0; // @[mutual.scala 89:22]
    end else if (_T_14) begin // @[mutual.scala 111:25]
      n_reg_0 <= rules_7_io_n_out_0; // @[mutual.scala 112:13]
    end else if (_T_12) begin // @[mutual.scala 111:25]
      n_reg_0 <= rules_6_io_n_out_0; // @[mutual.scala 112:13]
    end else if (_T_10) begin // @[mutual.scala 111:25]
      n_reg_0 <= rules_5_io_n_out_0; // @[mutual.scala 112:13]
    end else begin
      n_reg_0 <= _GEN_12;
    end
    if (reset) begin // @[mutual.scala 89:22]
      n_reg_1 <= 2'h0; // @[mutual.scala 89:22]
    end else if (_T_14) begin // @[mutual.scala 111:25]
      n_reg_1 <= rules_7_io_n_out_1; // @[mutual.scala 112:13]
    end else if (_T_12) begin // @[mutual.scala 111:25]
      n_reg_1 <= rules_6_io_n_out_1; // @[mutual.scala 112:13]
    end else if (_T_10) begin // @[mutual.scala 111:25]
      n_reg_1 <= rules_5_io_n_out_1; // @[mutual.scala 112:13]
    end else begin
      n_reg_1 <= _GEN_13;
    end
    x_reg <= reset | _GEN_23; // @[mutual.scala 92:{22,22}]
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset & ~(~(n_reg_0 == 2'h2) | n_reg_1 != 2'h2)) begin
          $fwrite(32'h80000002,
            "Assertion failed\n    at mutual.scala:120 assert((!((i.U =/= j.U))||((!((n_reg(i) === e_C))||((n_reg(j) =/= e_C))))))\n"
            ); // @[mutual.scala 120:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (~reset & ~(~(n_reg_1 == 2'h2) | n_reg_0 != 2'h2)) begin
          $fwrite(32'h80000002,
            "Assertion failed\n    at mutual.scala:120 assert((!((i.U =/= j.U))||((!((n_reg(i) === e_C))||((n_reg(j) =/= e_C))))))\n"
            ); // @[mutual.scala 120:13]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  n_reg_0 = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  n_reg_1 = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  x_reg = _RAND_2[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    //
    if (~reset) begin
      assert(1'h1); // @[mutual.scala 120:13]
    end
    //
    if (~reset) begin
      assert(~(n_reg_0 == 2'h2) | n_reg_1 != 2'h2); // @[mutual.scala 120:13]
    end
    //
    if (~reset) begin
      assert(~(n_reg_1 == 2'h2) | n_reg_0 != 2'h2); // @[mutual.scala 120:13]
    end
    //
    if (~reset) begin
      assert(1'h1); // @[mutual.scala 120:13]
    end
  end
endmodule
