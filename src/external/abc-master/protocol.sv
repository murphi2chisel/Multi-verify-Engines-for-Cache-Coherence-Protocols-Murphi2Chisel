module Store(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input  [1:0] io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input  [1:0] io_Cache_in_1_Data,
  input  [1:0] io_Cache_in_2_State,
  input  [1:0] io_Cache_in_2_Data,
  output [1:0] io_Cache_out_0_State,
  output [1:0] io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output [1:0] io_Cache_out_1_Data,
  output [1:0] io_Cache_out_2_State,
  output [1:0] io_Cache_out_2_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input  [1:0] io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input  [1:0] io_Chan1_in_1_Data,
  input  [2:0] io_Chan1_in_2_Cmd,
  input  [1:0] io_Chan1_in_2_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output [1:0] io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output [1:0] io_Chan1_out_1_Data,
  output [2:0] io_Chan1_out_2_Cmd,
  output [1:0] io_Chan1_out_2_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input  [1:0] io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input  [1:0] io_Chan2_in_1_Data,
  input  [2:0] io_Chan2_in_2_Cmd,
  input  [1:0] io_Chan2_in_2_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output [1:0] io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output [1:0] io_Chan2_out_1_Data,
  output [2:0] io_Chan2_out_2_Cmd,
  output [1:0] io_Chan2_out_2_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input  [1:0] io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input  [1:0] io_Chan3_in_1_Data,
  input  [2:0] io_Chan3_in_2_Cmd,
  input  [1:0] io_Chan3_in_2_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output [1:0] io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output [1:0] io_Chan3_out_1_Data,
  output [2:0] io_Chan3_out_2_Cmd,
  output [1:0] io_Chan3_out_2_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  input        io_InvSet_in_2,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  output       io_InvSet_out_2,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  input        io_ShrSet_in_2,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  output       io_ShrSet_out_2,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input  [1:0] io_CurPtr_in,
  output [1:0] io_CurPtr_out,
  input  [1:0] io_MemData_in,
  output [1:0] io_MemData_out,
  input  [1:0] io_AuxData_in,
  output [1:0] io_AuxData_out
);
  wire [1:0] _GEN_0 = io_Cache_in_1_State == 2'h2 ? 2'h1 : io_Cache_in_1_Data; // @[node.scala 39:13 router.scala 7:33 8:22]
  wire [1:0] _GEN_1 = io_Cache_in_1_State == 2'h2 ? 2'h1 : io_AuxData_in; // @[node.scala 49:15 router.scala 7:33 9:16]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[node.scala 39:13]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[node.scala 39:13]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[node.scala 39:13]
  assign io_Cache_out_1_Data = io_en_r ? _GEN_0 : io_Cache_in_1_Data; // @[node.scala 39:13 router.scala 6:14]
  assign io_Cache_out_2_State = io_Cache_in_2_State; // @[node.scala 39:13]
  assign io_Cache_out_2_Data = io_Cache_in_2_Data; // @[node.scala 39:13]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[node.scala 40:13]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[node.scala 40:13]
  assign io_Chan1_out_2_Cmd = io_Chan1_in_2_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_2_Data = io_Chan1_in_2_Data; // @[node.scala 40:13]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[node.scala 41:13]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[node.scala 41:13]
  assign io_Chan2_out_2_Cmd = io_Chan2_in_2_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_2_Data = io_Chan2_in_2_Data; // @[node.scala 41:13]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[node.scala 42:13]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[node.scala 42:13]
  assign io_Chan3_out_2_Cmd = io_Chan3_in_2_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_2_Data = io_Chan3_in_2_Data; // @[node.scala 42:13]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[node.scala 43:14]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[node.scala 43:14]
  assign io_InvSet_out_2 = io_InvSet_in_2; // @[node.scala 43:14]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[node.scala 44:14]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[node.scala 44:14]
  assign io_ShrSet_out_2 = io_ShrSet_in_2; // @[node.scala 44:14]
  assign io_ExGntd_out = io_ExGntd_in; // @[node.scala 45:14]
  assign io_CurCmd_out = io_CurCmd_in; // @[node.scala 46:14]
  assign io_CurPtr_out = io_CurPtr_in; // @[node.scala 47:14]
  assign io_MemData_out = io_MemData_in; // @[node.scala 48:15]
  assign io_AuxData_out = io_en_r ? _GEN_1 : io_AuxData_in; // @[router.scala 6:14 node.scala 49:15]
endmodule
module Store_1(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input  [1:0] io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input  [1:0] io_Cache_in_1_Data,
  input  [1:0] io_Cache_in_2_State,
  input  [1:0] io_Cache_in_2_Data,
  output [1:0] io_Cache_out_0_State,
  output [1:0] io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output [1:0] io_Cache_out_1_Data,
  output [1:0] io_Cache_out_2_State,
  output [1:0] io_Cache_out_2_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input  [1:0] io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input  [1:0] io_Chan1_in_1_Data,
  input  [2:0] io_Chan1_in_2_Cmd,
  input  [1:0] io_Chan1_in_2_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output [1:0] io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output [1:0] io_Chan1_out_1_Data,
  output [2:0] io_Chan1_out_2_Cmd,
  output [1:0] io_Chan1_out_2_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input  [1:0] io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input  [1:0] io_Chan2_in_1_Data,
  input  [2:0] io_Chan2_in_2_Cmd,
  input  [1:0] io_Chan2_in_2_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output [1:0] io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output [1:0] io_Chan2_out_1_Data,
  output [2:0] io_Chan2_out_2_Cmd,
  output [1:0] io_Chan2_out_2_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input  [1:0] io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input  [1:0] io_Chan3_in_1_Data,
  input  [2:0] io_Chan3_in_2_Cmd,
  input  [1:0] io_Chan3_in_2_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output [1:0] io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output [1:0] io_Chan3_out_1_Data,
  output [2:0] io_Chan3_out_2_Cmd,
  output [1:0] io_Chan3_out_2_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  input        io_InvSet_in_2,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  output       io_InvSet_out_2,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  input        io_ShrSet_in_2,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  output       io_ShrSet_out_2,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input  [1:0] io_CurPtr_in,
  output [1:0] io_CurPtr_out,
  input  [1:0] io_MemData_in,
  output [1:0] io_MemData_out,
  input  [1:0] io_AuxData_in,
  output [1:0] io_AuxData_out
);
  wire [1:0] _GEN_0 = io_Cache_in_1_State == 2'h2 ? 2'h2 : io_Cache_in_1_Data; // @[node.scala 39:13 router.scala 7:33 8:22]
  wire [1:0] _GEN_1 = io_Cache_in_1_State == 2'h2 ? 2'h2 : io_AuxData_in; // @[node.scala 49:15 router.scala 7:33 9:16]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[node.scala 39:13]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[node.scala 39:13]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[node.scala 39:13]
  assign io_Cache_out_1_Data = io_en_r ? _GEN_0 : io_Cache_in_1_Data; // @[node.scala 39:13 router.scala 6:14]
  assign io_Cache_out_2_State = io_Cache_in_2_State; // @[node.scala 39:13]
  assign io_Cache_out_2_Data = io_Cache_in_2_Data; // @[node.scala 39:13]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[node.scala 40:13]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[node.scala 40:13]
  assign io_Chan1_out_2_Cmd = io_Chan1_in_2_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_2_Data = io_Chan1_in_2_Data; // @[node.scala 40:13]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[node.scala 41:13]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[node.scala 41:13]
  assign io_Chan2_out_2_Cmd = io_Chan2_in_2_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_2_Data = io_Chan2_in_2_Data; // @[node.scala 41:13]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[node.scala 42:13]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[node.scala 42:13]
  assign io_Chan3_out_2_Cmd = io_Chan3_in_2_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_2_Data = io_Chan3_in_2_Data; // @[node.scala 42:13]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[node.scala 43:14]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[node.scala 43:14]
  assign io_InvSet_out_2 = io_InvSet_in_2; // @[node.scala 43:14]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[node.scala 44:14]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[node.scala 44:14]
  assign io_ShrSet_out_2 = io_ShrSet_in_2; // @[node.scala 44:14]
  assign io_ExGntd_out = io_ExGntd_in; // @[node.scala 45:14]
  assign io_CurCmd_out = io_CurCmd_in; // @[node.scala 46:14]
  assign io_CurPtr_out = io_CurPtr_in; // @[node.scala 47:14]
  assign io_MemData_out = io_MemData_in; // @[node.scala 48:15]
  assign io_AuxData_out = io_en_r ? _GEN_1 : io_AuxData_in; // @[router.scala 6:14 node.scala 49:15]
endmodule
module Store_2(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input  [1:0] io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input  [1:0] io_Cache_in_1_Data,
  input  [1:0] io_Cache_in_2_State,
  input  [1:0] io_Cache_in_2_Data,
  output [1:0] io_Cache_out_0_State,
  output [1:0] io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output [1:0] io_Cache_out_1_Data,
  output [1:0] io_Cache_out_2_State,
  output [1:0] io_Cache_out_2_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input  [1:0] io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input  [1:0] io_Chan1_in_1_Data,
  input  [2:0] io_Chan1_in_2_Cmd,
  input  [1:0] io_Chan1_in_2_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output [1:0] io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output [1:0] io_Chan1_out_1_Data,
  output [2:0] io_Chan1_out_2_Cmd,
  output [1:0] io_Chan1_out_2_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input  [1:0] io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input  [1:0] io_Chan2_in_1_Data,
  input  [2:0] io_Chan2_in_2_Cmd,
  input  [1:0] io_Chan2_in_2_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output [1:0] io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output [1:0] io_Chan2_out_1_Data,
  output [2:0] io_Chan2_out_2_Cmd,
  output [1:0] io_Chan2_out_2_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input  [1:0] io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input  [1:0] io_Chan3_in_1_Data,
  input  [2:0] io_Chan3_in_2_Cmd,
  input  [1:0] io_Chan3_in_2_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output [1:0] io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output [1:0] io_Chan3_out_1_Data,
  output [2:0] io_Chan3_out_2_Cmd,
  output [1:0] io_Chan3_out_2_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  input        io_InvSet_in_2,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  output       io_InvSet_out_2,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  input        io_ShrSet_in_2,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  output       io_ShrSet_out_2,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input  [1:0] io_CurPtr_in,
  output [1:0] io_CurPtr_out,
  input  [1:0] io_MemData_in,
  output [1:0] io_MemData_out,
  input  [1:0] io_AuxData_in,
  output [1:0] io_AuxData_out
);
  wire [1:0] _GEN_0 = io_Cache_in_2_State == 2'h2 ? 2'h1 : io_Cache_in_2_Data; // @[node.scala 39:13 router.scala 7:33 8:22]
  wire [1:0] _GEN_1 = io_Cache_in_2_State == 2'h2 ? 2'h1 : io_AuxData_in; // @[node.scala 49:15 router.scala 7:33 9:16]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[node.scala 39:13]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[node.scala 39:13]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[node.scala 39:13]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[node.scala 39:13]
  assign io_Cache_out_2_State = io_Cache_in_2_State; // @[node.scala 39:13]
  assign io_Cache_out_2_Data = io_en_r ? _GEN_0 : io_Cache_in_2_Data; // @[node.scala 39:13 router.scala 6:14]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[node.scala 40:13]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[node.scala 40:13]
  assign io_Chan1_out_2_Cmd = io_Chan1_in_2_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_2_Data = io_Chan1_in_2_Data; // @[node.scala 40:13]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[node.scala 41:13]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[node.scala 41:13]
  assign io_Chan2_out_2_Cmd = io_Chan2_in_2_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_2_Data = io_Chan2_in_2_Data; // @[node.scala 41:13]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[node.scala 42:13]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[node.scala 42:13]
  assign io_Chan3_out_2_Cmd = io_Chan3_in_2_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_2_Data = io_Chan3_in_2_Data; // @[node.scala 42:13]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[node.scala 43:14]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[node.scala 43:14]
  assign io_InvSet_out_2 = io_InvSet_in_2; // @[node.scala 43:14]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[node.scala 44:14]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[node.scala 44:14]
  assign io_ShrSet_out_2 = io_ShrSet_in_2; // @[node.scala 44:14]
  assign io_ExGntd_out = io_ExGntd_in; // @[node.scala 45:14]
  assign io_CurCmd_out = io_CurCmd_in; // @[node.scala 46:14]
  assign io_CurPtr_out = io_CurPtr_in; // @[node.scala 47:14]
  assign io_MemData_out = io_MemData_in; // @[node.scala 48:15]
  assign io_AuxData_out = io_en_r ? _GEN_1 : io_AuxData_in; // @[router.scala 6:14 node.scala 49:15]
endmodule
module Store_3(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input  [1:0] io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input  [1:0] io_Cache_in_1_Data,
  input  [1:0] io_Cache_in_2_State,
  input  [1:0] io_Cache_in_2_Data,
  output [1:0] io_Cache_out_0_State,
  output [1:0] io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output [1:0] io_Cache_out_1_Data,
  output [1:0] io_Cache_out_2_State,
  output [1:0] io_Cache_out_2_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input  [1:0] io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input  [1:0] io_Chan1_in_1_Data,
  input  [2:0] io_Chan1_in_2_Cmd,
  input  [1:0] io_Chan1_in_2_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output [1:0] io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output [1:0] io_Chan1_out_1_Data,
  output [2:0] io_Chan1_out_2_Cmd,
  output [1:0] io_Chan1_out_2_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input  [1:0] io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input  [1:0] io_Chan2_in_1_Data,
  input  [2:0] io_Chan2_in_2_Cmd,
  input  [1:0] io_Chan2_in_2_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output [1:0] io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output [1:0] io_Chan2_out_1_Data,
  output [2:0] io_Chan2_out_2_Cmd,
  output [1:0] io_Chan2_out_2_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input  [1:0] io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input  [1:0] io_Chan3_in_1_Data,
  input  [2:0] io_Chan3_in_2_Cmd,
  input  [1:0] io_Chan3_in_2_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output [1:0] io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output [1:0] io_Chan3_out_1_Data,
  output [2:0] io_Chan3_out_2_Cmd,
  output [1:0] io_Chan3_out_2_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  input        io_InvSet_in_2,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  output       io_InvSet_out_2,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  input        io_ShrSet_in_2,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  output       io_ShrSet_out_2,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input  [1:0] io_CurPtr_in,
  output [1:0] io_CurPtr_out,
  input  [1:0] io_MemData_in,
  output [1:0] io_MemData_out,
  input  [1:0] io_AuxData_in,
  output [1:0] io_AuxData_out
);
  wire [1:0] _GEN_0 = io_Cache_in_2_State == 2'h2 ? 2'h2 : io_Cache_in_2_Data; // @[node.scala 39:13 router.scala 7:33 8:22]
  wire [1:0] _GEN_1 = io_Cache_in_2_State == 2'h2 ? 2'h2 : io_AuxData_in; // @[node.scala 49:15 router.scala 7:33 9:16]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[node.scala 39:13]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[node.scala 39:13]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[node.scala 39:13]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[node.scala 39:13]
  assign io_Cache_out_2_State = io_Cache_in_2_State; // @[node.scala 39:13]
  assign io_Cache_out_2_Data = io_en_r ? _GEN_0 : io_Cache_in_2_Data; // @[node.scala 39:13 router.scala 6:14]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[node.scala 40:13]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[node.scala 40:13]
  assign io_Chan1_out_2_Cmd = io_Chan1_in_2_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_2_Data = io_Chan1_in_2_Data; // @[node.scala 40:13]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[node.scala 41:13]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[node.scala 41:13]
  assign io_Chan2_out_2_Cmd = io_Chan2_in_2_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_2_Data = io_Chan2_in_2_Data; // @[node.scala 41:13]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[node.scala 42:13]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[node.scala 42:13]
  assign io_Chan3_out_2_Cmd = io_Chan3_in_2_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_2_Data = io_Chan3_in_2_Data; // @[node.scala 42:13]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[node.scala 43:14]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[node.scala 43:14]
  assign io_InvSet_out_2 = io_InvSet_in_2; // @[node.scala 43:14]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[node.scala 44:14]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[node.scala 44:14]
  assign io_ShrSet_out_2 = io_ShrSet_in_2; // @[node.scala 44:14]
  assign io_ExGntd_out = io_ExGntd_in; // @[node.scala 45:14]
  assign io_CurCmd_out = io_CurCmd_in; // @[node.scala 46:14]
  assign io_CurPtr_out = io_CurPtr_in; // @[node.scala 47:14]
  assign io_MemData_out = io_MemData_in; // @[node.scala 48:15]
  assign io_AuxData_out = io_en_r ? _GEN_1 : io_AuxData_in; // @[router.scala 6:14 node.scala 49:15]
endmodule
module SendReqS(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input  [1:0] io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input  [1:0] io_Cache_in_1_Data,
  input  [1:0] io_Cache_in_2_State,
  input  [1:0] io_Cache_in_2_Data,
  output [1:0] io_Cache_out_0_State,
  output [1:0] io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output [1:0] io_Cache_out_1_Data,
  output [1:0] io_Cache_out_2_State,
  output [1:0] io_Cache_out_2_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input  [1:0] io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input  [1:0] io_Chan1_in_1_Data,
  input  [2:0] io_Chan1_in_2_Cmd,
  input  [1:0] io_Chan1_in_2_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output [1:0] io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output [1:0] io_Chan1_out_1_Data,
  output [2:0] io_Chan1_out_2_Cmd,
  output [1:0] io_Chan1_out_2_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input  [1:0] io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input  [1:0] io_Chan2_in_1_Data,
  input  [2:0] io_Chan2_in_2_Cmd,
  input  [1:0] io_Chan2_in_2_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output [1:0] io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output [1:0] io_Chan2_out_1_Data,
  output [2:0] io_Chan2_out_2_Cmd,
  output [1:0] io_Chan2_out_2_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input  [1:0] io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input  [1:0] io_Chan3_in_1_Data,
  input  [2:0] io_Chan3_in_2_Cmd,
  input  [1:0] io_Chan3_in_2_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output [1:0] io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output [1:0] io_Chan3_out_1_Data,
  output [2:0] io_Chan3_out_2_Cmd,
  output [1:0] io_Chan3_out_2_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  input        io_InvSet_in_2,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  output       io_InvSet_out_2,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  input        io_ShrSet_in_2,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  output       io_ShrSet_out_2,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input  [1:0] io_CurPtr_in,
  output [1:0] io_CurPtr_out,
  input  [1:0] io_MemData_in,
  output [1:0] io_MemData_out,
  input  [1:0] io_AuxData_in,
  output [1:0] io_AuxData_out
);
  wire [2:0] _GEN_0 = io_Chan1_in_1_Cmd == 3'h0 & io_Cache_in_1_State == 2'h0 ? 3'h1 : io_Chan1_in_1_Cmd; // @[router.scala 15:65 16:21 node.scala 40:13]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[node.scala 39:13]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[node.scala 39:13]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[node.scala 39:13]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[node.scala 39:13]
  assign io_Cache_out_2_State = io_Cache_in_2_State; // @[node.scala 39:13]
  assign io_Cache_out_2_Data = io_Cache_in_2_Data; // @[node.scala 39:13]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[node.scala 40:13]
  assign io_Chan1_out_1_Cmd = io_en_r ? _GEN_0 : io_Chan1_in_1_Cmd; // @[router.scala 14:14 node.scala 40:13]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[node.scala 40:13]
  assign io_Chan1_out_2_Cmd = io_Chan1_in_2_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_2_Data = io_Chan1_in_2_Data; // @[node.scala 40:13]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[node.scala 41:13]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[node.scala 41:13]
  assign io_Chan2_out_2_Cmd = io_Chan2_in_2_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_2_Data = io_Chan2_in_2_Data; // @[node.scala 41:13]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[node.scala 42:13]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[node.scala 42:13]
  assign io_Chan3_out_2_Cmd = io_Chan3_in_2_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_2_Data = io_Chan3_in_2_Data; // @[node.scala 42:13]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[node.scala 43:14]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[node.scala 43:14]
  assign io_InvSet_out_2 = io_InvSet_in_2; // @[node.scala 43:14]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[node.scala 44:14]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[node.scala 44:14]
  assign io_ShrSet_out_2 = io_ShrSet_in_2; // @[node.scala 44:14]
  assign io_ExGntd_out = io_ExGntd_in; // @[node.scala 45:14]
  assign io_CurCmd_out = io_CurCmd_in; // @[node.scala 46:14]
  assign io_CurPtr_out = io_CurPtr_in; // @[node.scala 47:14]
  assign io_MemData_out = io_MemData_in; // @[node.scala 48:15]
  assign io_AuxData_out = io_AuxData_in; // @[node.scala 49:15]
endmodule
module SendReqS_1(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input  [1:0] io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input  [1:0] io_Cache_in_1_Data,
  input  [1:0] io_Cache_in_2_State,
  input  [1:0] io_Cache_in_2_Data,
  output [1:0] io_Cache_out_0_State,
  output [1:0] io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output [1:0] io_Cache_out_1_Data,
  output [1:0] io_Cache_out_2_State,
  output [1:0] io_Cache_out_2_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input  [1:0] io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input  [1:0] io_Chan1_in_1_Data,
  input  [2:0] io_Chan1_in_2_Cmd,
  input  [1:0] io_Chan1_in_2_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output [1:0] io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output [1:0] io_Chan1_out_1_Data,
  output [2:0] io_Chan1_out_2_Cmd,
  output [1:0] io_Chan1_out_2_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input  [1:0] io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input  [1:0] io_Chan2_in_1_Data,
  input  [2:0] io_Chan2_in_2_Cmd,
  input  [1:0] io_Chan2_in_2_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output [1:0] io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output [1:0] io_Chan2_out_1_Data,
  output [2:0] io_Chan2_out_2_Cmd,
  output [1:0] io_Chan2_out_2_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input  [1:0] io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input  [1:0] io_Chan3_in_1_Data,
  input  [2:0] io_Chan3_in_2_Cmd,
  input  [1:0] io_Chan3_in_2_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output [1:0] io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output [1:0] io_Chan3_out_1_Data,
  output [2:0] io_Chan3_out_2_Cmd,
  output [1:0] io_Chan3_out_2_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  input        io_InvSet_in_2,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  output       io_InvSet_out_2,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  input        io_ShrSet_in_2,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  output       io_ShrSet_out_2,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input  [1:0] io_CurPtr_in,
  output [1:0] io_CurPtr_out,
  input  [1:0] io_MemData_in,
  output [1:0] io_MemData_out,
  input  [1:0] io_AuxData_in,
  output [1:0] io_AuxData_out
);
  wire [2:0] _GEN_0 = io_Chan1_in_2_Cmd == 3'h0 & io_Cache_in_2_State == 2'h0 ? 3'h1 : io_Chan1_in_2_Cmd; // @[router.scala 15:65 16:21 node.scala 40:13]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[node.scala 39:13]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[node.scala 39:13]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[node.scala 39:13]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[node.scala 39:13]
  assign io_Cache_out_2_State = io_Cache_in_2_State; // @[node.scala 39:13]
  assign io_Cache_out_2_Data = io_Cache_in_2_Data; // @[node.scala 39:13]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[node.scala 40:13]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[node.scala 40:13]
  assign io_Chan1_out_2_Cmd = io_en_r ? _GEN_0 : io_Chan1_in_2_Cmd; // @[router.scala 14:14 node.scala 40:13]
  assign io_Chan1_out_2_Data = io_Chan1_in_2_Data; // @[node.scala 40:13]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[node.scala 41:13]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[node.scala 41:13]
  assign io_Chan2_out_2_Cmd = io_Chan2_in_2_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_2_Data = io_Chan2_in_2_Data; // @[node.scala 41:13]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[node.scala 42:13]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[node.scala 42:13]
  assign io_Chan3_out_2_Cmd = io_Chan3_in_2_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_2_Data = io_Chan3_in_2_Data; // @[node.scala 42:13]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[node.scala 43:14]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[node.scala 43:14]
  assign io_InvSet_out_2 = io_InvSet_in_2; // @[node.scala 43:14]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[node.scala 44:14]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[node.scala 44:14]
  assign io_ShrSet_out_2 = io_ShrSet_in_2; // @[node.scala 44:14]
  assign io_ExGntd_out = io_ExGntd_in; // @[node.scala 45:14]
  assign io_CurCmd_out = io_CurCmd_in; // @[node.scala 46:14]
  assign io_CurPtr_out = io_CurPtr_in; // @[node.scala 47:14]
  assign io_MemData_out = io_MemData_in; // @[node.scala 48:15]
  assign io_AuxData_out = io_AuxData_in; // @[node.scala 49:15]
endmodule
module SendReqE(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input  [1:0] io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input  [1:0] io_Cache_in_1_Data,
  input  [1:0] io_Cache_in_2_State,
  input  [1:0] io_Cache_in_2_Data,
  output [1:0] io_Cache_out_0_State,
  output [1:0] io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output [1:0] io_Cache_out_1_Data,
  output [1:0] io_Cache_out_2_State,
  output [1:0] io_Cache_out_2_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input  [1:0] io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input  [1:0] io_Chan1_in_1_Data,
  input  [2:0] io_Chan1_in_2_Cmd,
  input  [1:0] io_Chan1_in_2_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output [1:0] io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output [1:0] io_Chan1_out_1_Data,
  output [2:0] io_Chan1_out_2_Cmd,
  output [1:0] io_Chan1_out_2_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input  [1:0] io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input  [1:0] io_Chan2_in_1_Data,
  input  [2:0] io_Chan2_in_2_Cmd,
  input  [1:0] io_Chan2_in_2_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output [1:0] io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output [1:0] io_Chan2_out_1_Data,
  output [2:0] io_Chan2_out_2_Cmd,
  output [1:0] io_Chan2_out_2_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input  [1:0] io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input  [1:0] io_Chan3_in_1_Data,
  input  [2:0] io_Chan3_in_2_Cmd,
  input  [1:0] io_Chan3_in_2_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output [1:0] io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output [1:0] io_Chan3_out_1_Data,
  output [2:0] io_Chan3_out_2_Cmd,
  output [1:0] io_Chan3_out_2_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  input        io_InvSet_in_2,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  output       io_InvSet_out_2,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  input        io_ShrSet_in_2,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  output       io_ShrSet_out_2,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input  [1:0] io_CurPtr_in,
  output [1:0] io_CurPtr_out,
  input  [1:0] io_MemData_in,
  output [1:0] io_MemData_out,
  input  [1:0] io_AuxData_in,
  output [1:0] io_AuxData_out
);
  wire [2:0] _GEN_0 = io_Chan1_in_1_Cmd == 3'h0 & (io_Cache_in_1_State == 2'h0 | io_Cache_in_1_State == 2'h1) ? 3'h2 :
    io_Chan1_in_1_Cmd; // @[router.scala 22:95 23:21 node.scala 40:13]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[node.scala 39:13]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[node.scala 39:13]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[node.scala 39:13]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[node.scala 39:13]
  assign io_Cache_out_2_State = io_Cache_in_2_State; // @[node.scala 39:13]
  assign io_Cache_out_2_Data = io_Cache_in_2_Data; // @[node.scala 39:13]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[node.scala 40:13]
  assign io_Chan1_out_1_Cmd = io_en_r ? _GEN_0 : io_Chan1_in_1_Cmd; // @[router.scala 21:14 node.scala 40:13]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[node.scala 40:13]
  assign io_Chan1_out_2_Cmd = io_Chan1_in_2_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_2_Data = io_Chan1_in_2_Data; // @[node.scala 40:13]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[node.scala 41:13]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[node.scala 41:13]
  assign io_Chan2_out_2_Cmd = io_Chan2_in_2_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_2_Data = io_Chan2_in_2_Data; // @[node.scala 41:13]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[node.scala 42:13]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[node.scala 42:13]
  assign io_Chan3_out_2_Cmd = io_Chan3_in_2_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_2_Data = io_Chan3_in_2_Data; // @[node.scala 42:13]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[node.scala 43:14]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[node.scala 43:14]
  assign io_InvSet_out_2 = io_InvSet_in_2; // @[node.scala 43:14]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[node.scala 44:14]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[node.scala 44:14]
  assign io_ShrSet_out_2 = io_ShrSet_in_2; // @[node.scala 44:14]
  assign io_ExGntd_out = io_ExGntd_in; // @[node.scala 45:14]
  assign io_CurCmd_out = io_CurCmd_in; // @[node.scala 46:14]
  assign io_CurPtr_out = io_CurPtr_in; // @[node.scala 47:14]
  assign io_MemData_out = io_MemData_in; // @[node.scala 48:15]
  assign io_AuxData_out = io_AuxData_in; // @[node.scala 49:15]
endmodule
module SendReqE_1(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input  [1:0] io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input  [1:0] io_Cache_in_1_Data,
  input  [1:0] io_Cache_in_2_State,
  input  [1:0] io_Cache_in_2_Data,
  output [1:0] io_Cache_out_0_State,
  output [1:0] io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output [1:0] io_Cache_out_1_Data,
  output [1:0] io_Cache_out_2_State,
  output [1:0] io_Cache_out_2_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input  [1:0] io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input  [1:0] io_Chan1_in_1_Data,
  input  [2:0] io_Chan1_in_2_Cmd,
  input  [1:0] io_Chan1_in_2_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output [1:0] io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output [1:0] io_Chan1_out_1_Data,
  output [2:0] io_Chan1_out_2_Cmd,
  output [1:0] io_Chan1_out_2_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input  [1:0] io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input  [1:0] io_Chan2_in_1_Data,
  input  [2:0] io_Chan2_in_2_Cmd,
  input  [1:0] io_Chan2_in_2_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output [1:0] io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output [1:0] io_Chan2_out_1_Data,
  output [2:0] io_Chan2_out_2_Cmd,
  output [1:0] io_Chan2_out_2_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input  [1:0] io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input  [1:0] io_Chan3_in_1_Data,
  input  [2:0] io_Chan3_in_2_Cmd,
  input  [1:0] io_Chan3_in_2_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output [1:0] io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output [1:0] io_Chan3_out_1_Data,
  output [2:0] io_Chan3_out_2_Cmd,
  output [1:0] io_Chan3_out_2_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  input        io_InvSet_in_2,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  output       io_InvSet_out_2,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  input        io_ShrSet_in_2,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  output       io_ShrSet_out_2,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input  [1:0] io_CurPtr_in,
  output [1:0] io_CurPtr_out,
  input  [1:0] io_MemData_in,
  output [1:0] io_MemData_out,
  input  [1:0] io_AuxData_in,
  output [1:0] io_AuxData_out
);
  wire [2:0] _GEN_0 = io_Chan1_in_2_Cmd == 3'h0 & (io_Cache_in_2_State == 2'h0 | io_Cache_in_2_State == 2'h1) ? 3'h2 :
    io_Chan1_in_2_Cmd; // @[router.scala 22:95 23:21 node.scala 40:13]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[node.scala 39:13]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[node.scala 39:13]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[node.scala 39:13]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[node.scala 39:13]
  assign io_Cache_out_2_State = io_Cache_in_2_State; // @[node.scala 39:13]
  assign io_Cache_out_2_Data = io_Cache_in_2_Data; // @[node.scala 39:13]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[node.scala 40:13]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[node.scala 40:13]
  assign io_Chan1_out_2_Cmd = io_en_r ? _GEN_0 : io_Chan1_in_2_Cmd; // @[router.scala 21:14 node.scala 40:13]
  assign io_Chan1_out_2_Data = io_Chan1_in_2_Data; // @[node.scala 40:13]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[node.scala 41:13]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[node.scala 41:13]
  assign io_Chan2_out_2_Cmd = io_Chan2_in_2_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_2_Data = io_Chan2_in_2_Data; // @[node.scala 41:13]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[node.scala 42:13]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[node.scala 42:13]
  assign io_Chan3_out_2_Cmd = io_Chan3_in_2_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_2_Data = io_Chan3_in_2_Data; // @[node.scala 42:13]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[node.scala 43:14]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[node.scala 43:14]
  assign io_InvSet_out_2 = io_InvSet_in_2; // @[node.scala 43:14]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[node.scala 44:14]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[node.scala 44:14]
  assign io_ShrSet_out_2 = io_ShrSet_in_2; // @[node.scala 44:14]
  assign io_ExGntd_out = io_ExGntd_in; // @[node.scala 45:14]
  assign io_CurCmd_out = io_CurCmd_in; // @[node.scala 46:14]
  assign io_CurPtr_out = io_CurPtr_in; // @[node.scala 47:14]
  assign io_MemData_out = io_MemData_in; // @[node.scala 48:15]
  assign io_AuxData_out = io_AuxData_in; // @[node.scala 49:15]
endmodule
module RecvReqS(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input  [1:0] io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input  [1:0] io_Cache_in_1_Data,
  input  [1:0] io_Cache_in_2_State,
  input  [1:0] io_Cache_in_2_Data,
  output [1:0] io_Cache_out_0_State,
  output [1:0] io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output [1:0] io_Cache_out_1_Data,
  output [1:0] io_Cache_out_2_State,
  output [1:0] io_Cache_out_2_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input  [1:0] io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input  [1:0] io_Chan1_in_1_Data,
  input  [2:0] io_Chan1_in_2_Cmd,
  input  [1:0] io_Chan1_in_2_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output [1:0] io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output [1:0] io_Chan1_out_1_Data,
  output [2:0] io_Chan1_out_2_Cmd,
  output [1:0] io_Chan1_out_2_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input  [1:0] io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input  [1:0] io_Chan2_in_1_Data,
  input  [2:0] io_Chan2_in_2_Cmd,
  input  [1:0] io_Chan2_in_2_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output [1:0] io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output [1:0] io_Chan2_out_1_Data,
  output [2:0] io_Chan2_out_2_Cmd,
  output [1:0] io_Chan2_out_2_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input  [1:0] io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input  [1:0] io_Chan3_in_1_Data,
  input  [2:0] io_Chan3_in_2_Cmd,
  input  [1:0] io_Chan3_in_2_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output [1:0] io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output [1:0] io_Chan3_out_1_Data,
  output [2:0] io_Chan3_out_2_Cmd,
  output [1:0] io_Chan3_out_2_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  input        io_InvSet_in_2,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  output       io_InvSet_out_2,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  input        io_ShrSet_in_2,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  output       io_ShrSet_out_2,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input  [1:0] io_CurPtr_in,
  output [1:0] io_CurPtr_out,
  input  [1:0] io_MemData_in,
  output [1:0] io_MemData_out,
  input  [1:0] io_AuxData_in,
  output [1:0] io_AuxData_out
);
  wire [2:0] _GEN_0 = io_CurCmd_in == 3'h0 & io_Chan1_in_1_Cmd == 3'h1 ? 3'h1 : io_CurCmd_in; // @[router.scala 29:60 30:15 node.scala 46:14]
  wire [1:0] _GEN_1 = io_CurCmd_in == 3'h0 & io_Chan1_in_1_Cmd == 3'h1 ? 2'h1 : io_CurPtr_in; // @[router.scala 29:60 31:15 node.scala 47:14]
  wire [2:0] _GEN_2 = io_CurCmd_in == 3'h0 & io_Chan1_in_1_Cmd == 3'h1 ? 3'h0 : io_Chan1_in_1_Cmd; // @[router.scala 29:60 32:21 node.scala 40:13]
  wire  _GEN_3 = io_CurCmd_in == 3'h0 & io_Chan1_in_1_Cmd == 3'h1 ? io_ShrSet_in_1 : io_InvSet_in_1; // @[router.scala 29:60 34:18 node.scala 43:14]
  wire  _GEN_4 = io_CurCmd_in == 3'h0 & io_Chan1_in_1_Cmd == 3'h1 ? io_ShrSet_in_2 : io_InvSet_in_2; // @[router.scala 29:60 34:18 node.scala 43:14]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[node.scala 39:13]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[node.scala 39:13]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[node.scala 39:13]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[node.scala 39:13]
  assign io_Cache_out_2_State = io_Cache_in_2_State; // @[node.scala 39:13]
  assign io_Cache_out_2_Data = io_Cache_in_2_Data; // @[node.scala 39:13]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[node.scala 40:13]
  assign io_Chan1_out_1_Cmd = io_en_r ? _GEN_2 : io_Chan1_in_1_Cmd; // @[router.scala 28:14 node.scala 40:13]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[node.scala 40:13]
  assign io_Chan1_out_2_Cmd = io_Chan1_in_2_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_2_Data = io_Chan1_in_2_Data; // @[node.scala 40:13]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[node.scala 41:13]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[node.scala 41:13]
  assign io_Chan2_out_2_Cmd = io_Chan2_in_2_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_2_Data = io_Chan2_in_2_Data; // @[node.scala 41:13]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[node.scala 42:13]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[node.scala 42:13]
  assign io_Chan3_out_2_Cmd = io_Chan3_in_2_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_2_Data = io_Chan3_in_2_Data; // @[node.scala 42:13]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[node.scala 43:14]
  assign io_InvSet_out_1 = io_en_r ? _GEN_3 : io_InvSet_in_1; // @[router.scala 28:14 node.scala 43:14]
  assign io_InvSet_out_2 = io_en_r ? _GEN_4 : io_InvSet_in_2; // @[router.scala 28:14 node.scala 43:14]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[node.scala 44:14]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[node.scala 44:14]
  assign io_ShrSet_out_2 = io_ShrSet_in_2; // @[node.scala 44:14]
  assign io_ExGntd_out = io_ExGntd_in; // @[node.scala 45:14]
  assign io_CurCmd_out = io_en_r ? _GEN_0 : io_CurCmd_in; // @[router.scala 28:14 node.scala 46:14]
  assign io_CurPtr_out = io_en_r ? _GEN_1 : io_CurPtr_in; // @[router.scala 28:14 node.scala 47:14]
  assign io_MemData_out = io_MemData_in; // @[node.scala 48:15]
  assign io_AuxData_out = io_AuxData_in; // @[node.scala 49:15]
endmodule
module RecvReqS_1(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input  [1:0] io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input  [1:0] io_Cache_in_1_Data,
  input  [1:0] io_Cache_in_2_State,
  input  [1:0] io_Cache_in_2_Data,
  output [1:0] io_Cache_out_0_State,
  output [1:0] io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output [1:0] io_Cache_out_1_Data,
  output [1:0] io_Cache_out_2_State,
  output [1:0] io_Cache_out_2_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input  [1:0] io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input  [1:0] io_Chan1_in_1_Data,
  input  [2:0] io_Chan1_in_2_Cmd,
  input  [1:0] io_Chan1_in_2_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output [1:0] io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output [1:0] io_Chan1_out_1_Data,
  output [2:0] io_Chan1_out_2_Cmd,
  output [1:0] io_Chan1_out_2_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input  [1:0] io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input  [1:0] io_Chan2_in_1_Data,
  input  [2:0] io_Chan2_in_2_Cmd,
  input  [1:0] io_Chan2_in_2_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output [1:0] io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output [1:0] io_Chan2_out_1_Data,
  output [2:0] io_Chan2_out_2_Cmd,
  output [1:0] io_Chan2_out_2_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input  [1:0] io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input  [1:0] io_Chan3_in_1_Data,
  input  [2:0] io_Chan3_in_2_Cmd,
  input  [1:0] io_Chan3_in_2_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output [1:0] io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output [1:0] io_Chan3_out_1_Data,
  output [2:0] io_Chan3_out_2_Cmd,
  output [1:0] io_Chan3_out_2_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  input        io_InvSet_in_2,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  output       io_InvSet_out_2,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  input        io_ShrSet_in_2,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  output       io_ShrSet_out_2,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input  [1:0] io_CurPtr_in,
  output [1:0] io_CurPtr_out,
  input  [1:0] io_MemData_in,
  output [1:0] io_MemData_out,
  input  [1:0] io_AuxData_in,
  output [1:0] io_AuxData_out
);
  wire [2:0] _GEN_0 = io_CurCmd_in == 3'h0 & io_Chan1_in_2_Cmd == 3'h1 ? 3'h1 : io_CurCmd_in; // @[router.scala 29:60 30:15 node.scala 46:14]
  wire [1:0] _GEN_1 = io_CurCmd_in == 3'h0 & io_Chan1_in_2_Cmd == 3'h1 ? 2'h2 : io_CurPtr_in; // @[router.scala 29:60 31:15 node.scala 47:14]
  wire [2:0] _GEN_2 = io_CurCmd_in == 3'h0 & io_Chan1_in_2_Cmd == 3'h1 ? 3'h0 : io_Chan1_in_2_Cmd; // @[router.scala 29:60 32:21 node.scala 40:13]
  wire  _GEN_3 = io_CurCmd_in == 3'h0 & io_Chan1_in_2_Cmd == 3'h1 ? io_ShrSet_in_1 : io_InvSet_in_1; // @[router.scala 29:60 34:18 node.scala 43:14]
  wire  _GEN_4 = io_CurCmd_in == 3'h0 & io_Chan1_in_2_Cmd == 3'h1 ? io_ShrSet_in_2 : io_InvSet_in_2; // @[router.scala 29:60 34:18 node.scala 43:14]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[node.scala 39:13]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[node.scala 39:13]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[node.scala 39:13]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[node.scala 39:13]
  assign io_Cache_out_2_State = io_Cache_in_2_State; // @[node.scala 39:13]
  assign io_Cache_out_2_Data = io_Cache_in_2_Data; // @[node.scala 39:13]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[node.scala 40:13]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[node.scala 40:13]
  assign io_Chan1_out_2_Cmd = io_en_r ? _GEN_2 : io_Chan1_in_2_Cmd; // @[router.scala 28:14 node.scala 40:13]
  assign io_Chan1_out_2_Data = io_Chan1_in_2_Data; // @[node.scala 40:13]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[node.scala 41:13]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[node.scala 41:13]
  assign io_Chan2_out_2_Cmd = io_Chan2_in_2_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_2_Data = io_Chan2_in_2_Data; // @[node.scala 41:13]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[node.scala 42:13]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[node.scala 42:13]
  assign io_Chan3_out_2_Cmd = io_Chan3_in_2_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_2_Data = io_Chan3_in_2_Data; // @[node.scala 42:13]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[node.scala 43:14]
  assign io_InvSet_out_1 = io_en_r ? _GEN_3 : io_InvSet_in_1; // @[router.scala 28:14 node.scala 43:14]
  assign io_InvSet_out_2 = io_en_r ? _GEN_4 : io_InvSet_in_2; // @[router.scala 28:14 node.scala 43:14]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[node.scala 44:14]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[node.scala 44:14]
  assign io_ShrSet_out_2 = io_ShrSet_in_2; // @[node.scala 44:14]
  assign io_ExGntd_out = io_ExGntd_in; // @[node.scala 45:14]
  assign io_CurCmd_out = io_en_r ? _GEN_0 : io_CurCmd_in; // @[router.scala 28:14 node.scala 46:14]
  assign io_CurPtr_out = io_en_r ? _GEN_1 : io_CurPtr_in; // @[router.scala 28:14 node.scala 47:14]
  assign io_MemData_out = io_MemData_in; // @[node.scala 48:15]
  assign io_AuxData_out = io_AuxData_in; // @[node.scala 49:15]
endmodule
module RecvReqE(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input  [1:0] io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input  [1:0] io_Cache_in_1_Data,
  input  [1:0] io_Cache_in_2_State,
  input  [1:0] io_Cache_in_2_Data,
  output [1:0] io_Cache_out_0_State,
  output [1:0] io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output [1:0] io_Cache_out_1_Data,
  output [1:0] io_Cache_out_2_State,
  output [1:0] io_Cache_out_2_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input  [1:0] io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input  [1:0] io_Chan1_in_1_Data,
  input  [2:0] io_Chan1_in_2_Cmd,
  input  [1:0] io_Chan1_in_2_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output [1:0] io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output [1:0] io_Chan1_out_1_Data,
  output [2:0] io_Chan1_out_2_Cmd,
  output [1:0] io_Chan1_out_2_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input  [1:0] io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input  [1:0] io_Chan2_in_1_Data,
  input  [2:0] io_Chan2_in_2_Cmd,
  input  [1:0] io_Chan2_in_2_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output [1:0] io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output [1:0] io_Chan2_out_1_Data,
  output [2:0] io_Chan2_out_2_Cmd,
  output [1:0] io_Chan2_out_2_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input  [1:0] io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input  [1:0] io_Chan3_in_1_Data,
  input  [2:0] io_Chan3_in_2_Cmd,
  input  [1:0] io_Chan3_in_2_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output [1:0] io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output [1:0] io_Chan3_out_1_Data,
  output [2:0] io_Chan3_out_2_Cmd,
  output [1:0] io_Chan3_out_2_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  input        io_InvSet_in_2,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  output       io_InvSet_out_2,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  input        io_ShrSet_in_2,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  output       io_ShrSet_out_2,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input  [1:0] io_CurPtr_in,
  output [1:0] io_CurPtr_out,
  input  [1:0] io_MemData_in,
  output [1:0] io_MemData_out,
  input  [1:0] io_AuxData_in,
  output [1:0] io_AuxData_out
);
  wire [2:0] _GEN_0 = io_CurCmd_in == 3'h0 & io_Chan1_in_1_Cmd == 3'h2 ? 3'h2 : io_CurCmd_in; // @[router.scala 42:60 43:15 node.scala 46:14]
  wire [1:0] _GEN_1 = io_CurCmd_in == 3'h0 & io_Chan1_in_1_Cmd == 3'h2 ? 2'h1 : io_CurPtr_in; // @[router.scala 42:60 44:15 node.scala 47:14]
  wire [2:0] _GEN_2 = io_CurCmd_in == 3'h0 & io_Chan1_in_1_Cmd == 3'h2 ? 3'h0 : io_Chan1_in_1_Cmd; // @[node.scala 40:13 router.scala 42:60 45:21]
  wire  _GEN_3 = io_CurCmd_in == 3'h0 & io_Chan1_in_1_Cmd == 3'h2 ? io_ShrSet_in_1 : io_InvSet_in_1; // @[router.scala 42:60 node.scala 43:14 router.scala 47:18]
  wire  _GEN_4 = io_CurCmd_in == 3'h0 & io_Chan1_in_1_Cmd == 3'h2 ? io_ShrSet_in_2 : io_InvSet_in_2; // @[router.scala 42:60 node.scala 43:14 router.scala 47:18]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[node.scala 39:13]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[node.scala 39:13]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[node.scala 39:13]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[node.scala 39:13]
  assign io_Cache_out_2_State = io_Cache_in_2_State; // @[node.scala 39:13]
  assign io_Cache_out_2_Data = io_Cache_in_2_Data; // @[node.scala 39:13]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[node.scala 40:13]
  assign io_Chan1_out_1_Cmd = io_en_r ? _GEN_2 : io_Chan1_in_1_Cmd; // @[node.scala 40:13 router.scala 41:14]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[node.scala 40:13]
  assign io_Chan1_out_2_Cmd = io_Chan1_in_2_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_2_Data = io_Chan1_in_2_Data; // @[node.scala 40:13]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[node.scala 41:13]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[node.scala 41:13]
  assign io_Chan2_out_2_Cmd = io_Chan2_in_2_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_2_Data = io_Chan2_in_2_Data; // @[node.scala 41:13]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[node.scala 42:13]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[node.scala 42:13]
  assign io_Chan3_out_2_Cmd = io_Chan3_in_2_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_2_Data = io_Chan3_in_2_Data; // @[node.scala 42:13]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[node.scala 43:14]
  assign io_InvSet_out_1 = io_en_r ? _GEN_3 : io_InvSet_in_1; // @[router.scala 41:14 node.scala 43:14]
  assign io_InvSet_out_2 = io_en_r ? _GEN_4 : io_InvSet_in_2; // @[router.scala 41:14 node.scala 43:14]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[node.scala 44:14]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[node.scala 44:14]
  assign io_ShrSet_out_2 = io_ShrSet_in_2; // @[node.scala 44:14]
  assign io_ExGntd_out = io_ExGntd_in; // @[node.scala 45:14]
  assign io_CurCmd_out = io_en_r ? _GEN_0 : io_CurCmd_in; // @[router.scala 41:14 node.scala 46:14]
  assign io_CurPtr_out = io_en_r ? _GEN_1 : io_CurPtr_in; // @[router.scala 41:14 node.scala 47:14]
  assign io_MemData_out = io_MemData_in; // @[node.scala 48:15]
  assign io_AuxData_out = io_AuxData_in; // @[node.scala 49:15]
endmodule
module RecvReqE_1(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input  [1:0] io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input  [1:0] io_Cache_in_1_Data,
  input  [1:0] io_Cache_in_2_State,
  input  [1:0] io_Cache_in_2_Data,
  output [1:0] io_Cache_out_0_State,
  output [1:0] io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output [1:0] io_Cache_out_1_Data,
  output [1:0] io_Cache_out_2_State,
  output [1:0] io_Cache_out_2_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input  [1:0] io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input  [1:0] io_Chan1_in_1_Data,
  input  [2:0] io_Chan1_in_2_Cmd,
  input  [1:0] io_Chan1_in_2_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output [1:0] io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output [1:0] io_Chan1_out_1_Data,
  output [2:0] io_Chan1_out_2_Cmd,
  output [1:0] io_Chan1_out_2_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input  [1:0] io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input  [1:0] io_Chan2_in_1_Data,
  input  [2:0] io_Chan2_in_2_Cmd,
  input  [1:0] io_Chan2_in_2_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output [1:0] io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output [1:0] io_Chan2_out_1_Data,
  output [2:0] io_Chan2_out_2_Cmd,
  output [1:0] io_Chan2_out_2_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input  [1:0] io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input  [1:0] io_Chan3_in_1_Data,
  input  [2:0] io_Chan3_in_2_Cmd,
  input  [1:0] io_Chan3_in_2_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output [1:0] io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output [1:0] io_Chan3_out_1_Data,
  output [2:0] io_Chan3_out_2_Cmd,
  output [1:0] io_Chan3_out_2_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  input        io_InvSet_in_2,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  output       io_InvSet_out_2,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  input        io_ShrSet_in_2,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  output       io_ShrSet_out_2,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input  [1:0] io_CurPtr_in,
  output [1:0] io_CurPtr_out,
  input  [1:0] io_MemData_in,
  output [1:0] io_MemData_out,
  input  [1:0] io_AuxData_in,
  output [1:0] io_AuxData_out
);
  wire [2:0] _GEN_0 = io_CurCmd_in == 3'h0 & io_Chan1_in_2_Cmd == 3'h2 ? 3'h2 : io_CurCmd_in; // @[router.scala 42:60 43:15 node.scala 46:14]
  wire [1:0] _GEN_1 = io_CurCmd_in == 3'h0 & io_Chan1_in_2_Cmd == 3'h2 ? 2'h2 : io_CurPtr_in; // @[router.scala 42:60 44:15 node.scala 47:14]
  wire [2:0] _GEN_2 = io_CurCmd_in == 3'h0 & io_Chan1_in_2_Cmd == 3'h2 ? 3'h0 : io_Chan1_in_2_Cmd; // @[node.scala 40:13 router.scala 42:60 45:21]
  wire  _GEN_3 = io_CurCmd_in == 3'h0 & io_Chan1_in_2_Cmd == 3'h2 ? io_ShrSet_in_1 : io_InvSet_in_1; // @[router.scala 42:60 node.scala 43:14 router.scala 47:18]
  wire  _GEN_4 = io_CurCmd_in == 3'h0 & io_Chan1_in_2_Cmd == 3'h2 ? io_ShrSet_in_2 : io_InvSet_in_2; // @[router.scala 42:60 node.scala 43:14 router.scala 47:18]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[node.scala 39:13]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[node.scala 39:13]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[node.scala 39:13]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[node.scala 39:13]
  assign io_Cache_out_2_State = io_Cache_in_2_State; // @[node.scala 39:13]
  assign io_Cache_out_2_Data = io_Cache_in_2_Data; // @[node.scala 39:13]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[node.scala 40:13]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[node.scala 40:13]
  assign io_Chan1_out_2_Cmd = io_en_r ? _GEN_2 : io_Chan1_in_2_Cmd; // @[node.scala 40:13 router.scala 41:14]
  assign io_Chan1_out_2_Data = io_Chan1_in_2_Data; // @[node.scala 40:13]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[node.scala 41:13]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[node.scala 41:13]
  assign io_Chan2_out_2_Cmd = io_Chan2_in_2_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_2_Data = io_Chan2_in_2_Data; // @[node.scala 41:13]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[node.scala 42:13]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[node.scala 42:13]
  assign io_Chan3_out_2_Cmd = io_Chan3_in_2_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_2_Data = io_Chan3_in_2_Data; // @[node.scala 42:13]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[node.scala 43:14]
  assign io_InvSet_out_1 = io_en_r ? _GEN_3 : io_InvSet_in_1; // @[router.scala 41:14 node.scala 43:14]
  assign io_InvSet_out_2 = io_en_r ? _GEN_4 : io_InvSet_in_2; // @[router.scala 41:14 node.scala 43:14]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[node.scala 44:14]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[node.scala 44:14]
  assign io_ShrSet_out_2 = io_ShrSet_in_2; // @[node.scala 44:14]
  assign io_ExGntd_out = io_ExGntd_in; // @[node.scala 45:14]
  assign io_CurCmd_out = io_en_r ? _GEN_0 : io_CurCmd_in; // @[router.scala 41:14 node.scala 46:14]
  assign io_CurPtr_out = io_en_r ? _GEN_1 : io_CurPtr_in; // @[router.scala 41:14 node.scala 47:14]
  assign io_MemData_out = io_MemData_in; // @[node.scala 48:15]
  assign io_AuxData_out = io_AuxData_in; // @[node.scala 49:15]
endmodule
module SendInv(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input  [1:0] io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input  [1:0] io_Cache_in_1_Data,
  input  [1:0] io_Cache_in_2_State,
  input  [1:0] io_Cache_in_2_Data,
  output [1:0] io_Cache_out_0_State,
  output [1:0] io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output [1:0] io_Cache_out_1_Data,
  output [1:0] io_Cache_out_2_State,
  output [1:0] io_Cache_out_2_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input  [1:0] io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input  [1:0] io_Chan1_in_1_Data,
  input  [2:0] io_Chan1_in_2_Cmd,
  input  [1:0] io_Chan1_in_2_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output [1:0] io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output [1:0] io_Chan1_out_1_Data,
  output [2:0] io_Chan1_out_2_Cmd,
  output [1:0] io_Chan1_out_2_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input  [1:0] io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input  [1:0] io_Chan2_in_1_Data,
  input  [2:0] io_Chan2_in_2_Cmd,
  input  [1:0] io_Chan2_in_2_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output [1:0] io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output [1:0] io_Chan2_out_1_Data,
  output [2:0] io_Chan2_out_2_Cmd,
  output [1:0] io_Chan2_out_2_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input  [1:0] io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input  [1:0] io_Chan3_in_1_Data,
  input  [2:0] io_Chan3_in_2_Cmd,
  input  [1:0] io_Chan3_in_2_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output [1:0] io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output [1:0] io_Chan3_out_1_Data,
  output [2:0] io_Chan3_out_2_Cmd,
  output [1:0] io_Chan3_out_2_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  input        io_InvSet_in_2,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  output       io_InvSet_out_2,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  input        io_ShrSet_in_2,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  output       io_ShrSet_out_2,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input  [1:0] io_CurPtr_in,
  output [1:0] io_CurPtr_out,
  input  [1:0] io_MemData_in,
  output [1:0] io_MemData_out,
  input  [1:0] io_AuxData_in,
  output [1:0] io_AuxData_out
);
  wire [2:0] _GEN_0 = io_Chan2_in_1_Cmd == 3'h0 & (io_InvSet_in_1 & (io_CurCmd_in == 3'h2 | io_CurCmd_in == 3'h1 &
    io_ExGntd_in)) ? 3'h3 : io_Chan2_in_1_Cmd; // @[node.scala 41:13 router.scala 55:142 56:21]
  wire  _GEN_1 = io_Chan2_in_1_Cmd == 3'h0 & (io_InvSet_in_1 & (io_CurCmd_in == 3'h2 | io_CurCmd_in == 3'h1 &
    io_ExGntd_in)) ? 1'h0 : io_InvSet_in_1; // @[node.scala 43:14 router.scala 55:142 57:18]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[node.scala 39:13]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[node.scala 39:13]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[node.scala 39:13]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[node.scala 39:13]
  assign io_Cache_out_2_State = io_Cache_in_2_State; // @[node.scala 39:13]
  assign io_Cache_out_2_Data = io_Cache_in_2_Data; // @[node.scala 39:13]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[node.scala 40:13]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[node.scala 40:13]
  assign io_Chan1_out_2_Cmd = io_Chan1_in_2_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_2_Data = io_Chan1_in_2_Data; // @[node.scala 40:13]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[node.scala 41:13]
  assign io_Chan2_out_1_Cmd = io_en_r ? _GEN_0 : io_Chan2_in_1_Cmd; // @[node.scala 41:13 router.scala 54:14]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[node.scala 41:13]
  assign io_Chan2_out_2_Cmd = io_Chan2_in_2_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_2_Data = io_Chan2_in_2_Data; // @[node.scala 41:13]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[node.scala 42:13]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[node.scala 42:13]
  assign io_Chan3_out_2_Cmd = io_Chan3_in_2_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_2_Data = io_Chan3_in_2_Data; // @[node.scala 42:13]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[node.scala 43:14]
  assign io_InvSet_out_1 = io_en_r ? _GEN_1 : io_InvSet_in_1; // @[node.scala 43:14 router.scala 54:14]
  assign io_InvSet_out_2 = io_InvSet_in_2; // @[node.scala 43:14]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[node.scala 44:14]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[node.scala 44:14]
  assign io_ShrSet_out_2 = io_ShrSet_in_2; // @[node.scala 44:14]
  assign io_ExGntd_out = io_ExGntd_in; // @[node.scala 45:14]
  assign io_CurCmd_out = io_CurCmd_in; // @[node.scala 46:14]
  assign io_CurPtr_out = io_CurPtr_in; // @[node.scala 47:14]
  assign io_MemData_out = io_MemData_in; // @[node.scala 48:15]
  assign io_AuxData_out = io_AuxData_in; // @[node.scala 49:15]
endmodule
module SendInv_1(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input  [1:0] io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input  [1:0] io_Cache_in_1_Data,
  input  [1:0] io_Cache_in_2_State,
  input  [1:0] io_Cache_in_2_Data,
  output [1:0] io_Cache_out_0_State,
  output [1:0] io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output [1:0] io_Cache_out_1_Data,
  output [1:0] io_Cache_out_2_State,
  output [1:0] io_Cache_out_2_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input  [1:0] io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input  [1:0] io_Chan1_in_1_Data,
  input  [2:0] io_Chan1_in_2_Cmd,
  input  [1:0] io_Chan1_in_2_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output [1:0] io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output [1:0] io_Chan1_out_1_Data,
  output [2:0] io_Chan1_out_2_Cmd,
  output [1:0] io_Chan1_out_2_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input  [1:0] io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input  [1:0] io_Chan2_in_1_Data,
  input  [2:0] io_Chan2_in_2_Cmd,
  input  [1:0] io_Chan2_in_2_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output [1:0] io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output [1:0] io_Chan2_out_1_Data,
  output [2:0] io_Chan2_out_2_Cmd,
  output [1:0] io_Chan2_out_2_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input  [1:0] io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input  [1:0] io_Chan3_in_1_Data,
  input  [2:0] io_Chan3_in_2_Cmd,
  input  [1:0] io_Chan3_in_2_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output [1:0] io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output [1:0] io_Chan3_out_1_Data,
  output [2:0] io_Chan3_out_2_Cmd,
  output [1:0] io_Chan3_out_2_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  input        io_InvSet_in_2,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  output       io_InvSet_out_2,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  input        io_ShrSet_in_2,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  output       io_ShrSet_out_2,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input  [1:0] io_CurPtr_in,
  output [1:0] io_CurPtr_out,
  input  [1:0] io_MemData_in,
  output [1:0] io_MemData_out,
  input  [1:0] io_AuxData_in,
  output [1:0] io_AuxData_out
);
  wire [2:0] _GEN_0 = io_Chan2_in_2_Cmd == 3'h0 & (io_InvSet_in_2 & (io_CurCmd_in == 3'h2 | io_CurCmd_in == 3'h1 &
    io_ExGntd_in)) ? 3'h3 : io_Chan2_in_2_Cmd; // @[node.scala 41:13 router.scala 55:142 56:21]
  wire  _GEN_1 = io_Chan2_in_2_Cmd == 3'h0 & (io_InvSet_in_2 & (io_CurCmd_in == 3'h2 | io_CurCmd_in == 3'h1 &
    io_ExGntd_in)) ? 1'h0 : io_InvSet_in_2; // @[node.scala 43:14 router.scala 55:142 57:18]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[node.scala 39:13]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[node.scala 39:13]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[node.scala 39:13]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[node.scala 39:13]
  assign io_Cache_out_2_State = io_Cache_in_2_State; // @[node.scala 39:13]
  assign io_Cache_out_2_Data = io_Cache_in_2_Data; // @[node.scala 39:13]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[node.scala 40:13]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[node.scala 40:13]
  assign io_Chan1_out_2_Cmd = io_Chan1_in_2_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_2_Data = io_Chan1_in_2_Data; // @[node.scala 40:13]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[node.scala 41:13]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[node.scala 41:13]
  assign io_Chan2_out_2_Cmd = io_en_r ? _GEN_0 : io_Chan2_in_2_Cmd; // @[node.scala 41:13 router.scala 54:14]
  assign io_Chan2_out_2_Data = io_Chan2_in_2_Data; // @[node.scala 41:13]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[node.scala 42:13]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[node.scala 42:13]
  assign io_Chan3_out_2_Cmd = io_Chan3_in_2_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_2_Data = io_Chan3_in_2_Data; // @[node.scala 42:13]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[node.scala 43:14]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[node.scala 43:14]
  assign io_InvSet_out_2 = io_en_r ? _GEN_1 : io_InvSet_in_2; // @[node.scala 43:14 router.scala 54:14]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[node.scala 44:14]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[node.scala 44:14]
  assign io_ShrSet_out_2 = io_ShrSet_in_2; // @[node.scala 44:14]
  assign io_ExGntd_out = io_ExGntd_in; // @[node.scala 45:14]
  assign io_CurCmd_out = io_CurCmd_in; // @[node.scala 46:14]
  assign io_CurPtr_out = io_CurPtr_in; // @[node.scala 47:14]
  assign io_MemData_out = io_MemData_in; // @[node.scala 48:15]
  assign io_AuxData_out = io_AuxData_in; // @[node.scala 49:15]
endmodule
module SendGntS(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input  [1:0] io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input  [1:0] io_Cache_in_1_Data,
  input  [1:0] io_Cache_in_2_State,
  input  [1:0] io_Cache_in_2_Data,
  output [1:0] io_Cache_out_0_State,
  output [1:0] io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output [1:0] io_Cache_out_1_Data,
  output [1:0] io_Cache_out_2_State,
  output [1:0] io_Cache_out_2_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input  [1:0] io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input  [1:0] io_Chan1_in_1_Data,
  input  [2:0] io_Chan1_in_2_Cmd,
  input  [1:0] io_Chan1_in_2_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output [1:0] io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output [1:0] io_Chan1_out_1_Data,
  output [2:0] io_Chan1_out_2_Cmd,
  output [1:0] io_Chan1_out_2_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input  [1:0] io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input  [1:0] io_Chan2_in_1_Data,
  input  [2:0] io_Chan2_in_2_Cmd,
  input  [1:0] io_Chan2_in_2_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output [1:0] io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output [1:0] io_Chan2_out_1_Data,
  output [2:0] io_Chan2_out_2_Cmd,
  output [1:0] io_Chan2_out_2_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input  [1:0] io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input  [1:0] io_Chan3_in_1_Data,
  input  [2:0] io_Chan3_in_2_Cmd,
  input  [1:0] io_Chan3_in_2_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output [1:0] io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output [1:0] io_Chan3_out_1_Data,
  output [2:0] io_Chan3_out_2_Cmd,
  output [1:0] io_Chan3_out_2_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  input        io_InvSet_in_2,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  output       io_InvSet_out_2,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  input        io_ShrSet_in_2,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  output       io_ShrSet_out_2,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input  [1:0] io_CurPtr_in,
  output [1:0] io_CurPtr_out,
  input  [1:0] io_MemData_in,
  output [1:0] io_MemData_out,
  input  [1:0] io_AuxData_in,
  output [1:0] io_AuxData_out
);
  wire [2:0] _GEN_0 = io_CurCmd_in == 3'h1 & (io_CurPtr_in == 2'h1 & (io_Chan2_in_1_Cmd == 3'h0 & ~io_ExGntd_in)) ? 3'h5
     : io_Chan2_in_1_Cmd; // @[router.scala 63:112 node.scala 41:13 router.scala 64:21]
  wire [1:0] _GEN_1 = io_CurCmd_in == 3'h1 & (io_CurPtr_in == 2'h1 & (io_Chan2_in_1_Cmd == 3'h0 & ~io_ExGntd_in)) ?
    io_MemData_in : io_Chan2_in_1_Data; // @[router.scala 63:112 node.scala 41:13 router.scala 65:22]
  wire  _GEN_2 = io_CurCmd_in == 3'h1 & (io_CurPtr_in == 2'h1 & (io_Chan2_in_1_Cmd == 3'h0 & ~io_ExGntd_in)) |
    io_ShrSet_in_1; // @[router.scala 63:112 node.scala 44:14 router.scala 66:18]
  wire [2:0] _GEN_3 = io_CurCmd_in == 3'h1 & (io_CurPtr_in == 2'h1 & (io_Chan2_in_1_Cmd == 3'h0 & ~io_ExGntd_in)) ? 3'h0
     : io_CurCmd_in; // @[router.scala 63:112 node.scala 46:14 router.scala 67:15]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[node.scala 39:13]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[node.scala 39:13]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[node.scala 39:13]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[node.scala 39:13]
  assign io_Cache_out_2_State = io_Cache_in_2_State; // @[node.scala 39:13]
  assign io_Cache_out_2_Data = io_Cache_in_2_Data; // @[node.scala 39:13]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[node.scala 40:13]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[node.scala 40:13]
  assign io_Chan1_out_2_Cmd = io_Chan1_in_2_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_2_Data = io_Chan1_in_2_Data; // @[node.scala 40:13]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[node.scala 41:13]
  assign io_Chan2_out_1_Cmd = io_en_r ? _GEN_0 : io_Chan2_in_1_Cmd; // @[node.scala 41:13 router.scala 62:14]
  assign io_Chan2_out_1_Data = io_en_r ? _GEN_1 : io_Chan2_in_1_Data; // @[node.scala 41:13 router.scala 62:14]
  assign io_Chan2_out_2_Cmd = io_Chan2_in_2_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_2_Data = io_Chan2_in_2_Data; // @[node.scala 41:13]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[node.scala 42:13]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[node.scala 42:13]
  assign io_Chan3_out_2_Cmd = io_Chan3_in_2_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_2_Data = io_Chan3_in_2_Data; // @[node.scala 42:13]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[node.scala 43:14]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[node.scala 43:14]
  assign io_InvSet_out_2 = io_InvSet_in_2; // @[node.scala 43:14]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[node.scala 44:14]
  assign io_ShrSet_out_1 = io_en_r ? _GEN_2 : io_ShrSet_in_1; // @[node.scala 44:14 router.scala 62:14]
  assign io_ShrSet_out_2 = io_ShrSet_in_2; // @[node.scala 44:14]
  assign io_ExGntd_out = io_ExGntd_in; // @[node.scala 45:14]
  assign io_CurCmd_out = io_en_r ? _GEN_3 : io_CurCmd_in; // @[node.scala 46:14 router.scala 62:14]
  assign io_CurPtr_out = io_CurPtr_in; // @[node.scala 47:14]
  assign io_MemData_out = io_MemData_in; // @[node.scala 48:15]
  assign io_AuxData_out = io_AuxData_in; // @[node.scala 49:15]
endmodule
module SendGntS_1(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input  [1:0] io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input  [1:0] io_Cache_in_1_Data,
  input  [1:0] io_Cache_in_2_State,
  input  [1:0] io_Cache_in_2_Data,
  output [1:0] io_Cache_out_0_State,
  output [1:0] io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output [1:0] io_Cache_out_1_Data,
  output [1:0] io_Cache_out_2_State,
  output [1:0] io_Cache_out_2_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input  [1:0] io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input  [1:0] io_Chan1_in_1_Data,
  input  [2:0] io_Chan1_in_2_Cmd,
  input  [1:0] io_Chan1_in_2_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output [1:0] io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output [1:0] io_Chan1_out_1_Data,
  output [2:0] io_Chan1_out_2_Cmd,
  output [1:0] io_Chan1_out_2_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input  [1:0] io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input  [1:0] io_Chan2_in_1_Data,
  input  [2:0] io_Chan2_in_2_Cmd,
  input  [1:0] io_Chan2_in_2_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output [1:0] io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output [1:0] io_Chan2_out_1_Data,
  output [2:0] io_Chan2_out_2_Cmd,
  output [1:0] io_Chan2_out_2_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input  [1:0] io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input  [1:0] io_Chan3_in_1_Data,
  input  [2:0] io_Chan3_in_2_Cmd,
  input  [1:0] io_Chan3_in_2_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output [1:0] io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output [1:0] io_Chan3_out_1_Data,
  output [2:0] io_Chan3_out_2_Cmd,
  output [1:0] io_Chan3_out_2_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  input        io_InvSet_in_2,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  output       io_InvSet_out_2,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  input        io_ShrSet_in_2,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  output       io_ShrSet_out_2,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input  [1:0] io_CurPtr_in,
  output [1:0] io_CurPtr_out,
  input  [1:0] io_MemData_in,
  output [1:0] io_MemData_out,
  input  [1:0] io_AuxData_in,
  output [1:0] io_AuxData_out
);
  wire [2:0] _GEN_0 = io_CurCmd_in == 3'h1 & (io_CurPtr_in == 2'h2 & (io_Chan2_in_2_Cmd == 3'h0 & ~io_ExGntd_in)) ? 3'h5
     : io_Chan2_in_2_Cmd; // @[router.scala 63:112 node.scala 41:13 router.scala 64:21]
  wire [1:0] _GEN_1 = io_CurCmd_in == 3'h1 & (io_CurPtr_in == 2'h2 & (io_Chan2_in_2_Cmd == 3'h0 & ~io_ExGntd_in)) ?
    io_MemData_in : io_Chan2_in_2_Data; // @[router.scala 63:112 node.scala 41:13 router.scala 65:22]
  wire  _GEN_2 = io_CurCmd_in == 3'h1 & (io_CurPtr_in == 2'h2 & (io_Chan2_in_2_Cmd == 3'h0 & ~io_ExGntd_in)) |
    io_ShrSet_in_2; // @[router.scala 63:112 node.scala 44:14 router.scala 66:18]
  wire [2:0] _GEN_3 = io_CurCmd_in == 3'h1 & (io_CurPtr_in == 2'h2 & (io_Chan2_in_2_Cmd == 3'h0 & ~io_ExGntd_in)) ? 3'h0
     : io_CurCmd_in; // @[router.scala 63:112 node.scala 46:14 router.scala 67:15]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[node.scala 39:13]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[node.scala 39:13]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[node.scala 39:13]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[node.scala 39:13]
  assign io_Cache_out_2_State = io_Cache_in_2_State; // @[node.scala 39:13]
  assign io_Cache_out_2_Data = io_Cache_in_2_Data; // @[node.scala 39:13]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[node.scala 40:13]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[node.scala 40:13]
  assign io_Chan1_out_2_Cmd = io_Chan1_in_2_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_2_Data = io_Chan1_in_2_Data; // @[node.scala 40:13]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[node.scala 41:13]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[node.scala 41:13]
  assign io_Chan2_out_2_Cmd = io_en_r ? _GEN_0 : io_Chan2_in_2_Cmd; // @[node.scala 41:13 router.scala 62:14]
  assign io_Chan2_out_2_Data = io_en_r ? _GEN_1 : io_Chan2_in_2_Data; // @[node.scala 41:13 router.scala 62:14]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[node.scala 42:13]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[node.scala 42:13]
  assign io_Chan3_out_2_Cmd = io_Chan3_in_2_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_2_Data = io_Chan3_in_2_Data; // @[node.scala 42:13]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[node.scala 43:14]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[node.scala 43:14]
  assign io_InvSet_out_2 = io_InvSet_in_2; // @[node.scala 43:14]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[node.scala 44:14]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[node.scala 44:14]
  assign io_ShrSet_out_2 = io_en_r ? _GEN_2 : io_ShrSet_in_2; // @[node.scala 44:14 router.scala 62:14]
  assign io_ExGntd_out = io_ExGntd_in; // @[node.scala 45:14]
  assign io_CurCmd_out = io_en_r ? _GEN_3 : io_CurCmd_in; // @[node.scala 46:14 router.scala 62:14]
  assign io_CurPtr_out = io_CurPtr_in; // @[node.scala 47:14]
  assign io_MemData_out = io_MemData_in; // @[node.scala 48:15]
  assign io_AuxData_out = io_AuxData_in; // @[node.scala 49:15]
endmodule
module SendGntE(
  input  [1:0] io_Cache_in_0_State,
  input  [1:0] io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input  [1:0] io_Cache_in_1_Data,
  input  [1:0] io_Cache_in_2_State,
  input  [1:0] io_Cache_in_2_Data,
  output [1:0] io_Cache_out_0_State,
  output [1:0] io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output [1:0] io_Cache_out_1_Data,
  output [1:0] io_Cache_out_2_State,
  output [1:0] io_Cache_out_2_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input  [1:0] io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input  [1:0] io_Chan1_in_1_Data,
  input  [2:0] io_Chan1_in_2_Cmd,
  input  [1:0] io_Chan1_in_2_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output [1:0] io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output [1:0] io_Chan1_out_1_Data,
  output [2:0] io_Chan1_out_2_Cmd,
  output [1:0] io_Chan1_out_2_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input  [1:0] io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input  [1:0] io_Chan2_in_1_Data,
  input  [2:0] io_Chan2_in_2_Cmd,
  input  [1:0] io_Chan2_in_2_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output [1:0] io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output [1:0] io_Chan2_out_1_Data,
  output [2:0] io_Chan2_out_2_Cmd,
  output [1:0] io_Chan2_out_2_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input  [1:0] io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input  [1:0] io_Chan3_in_1_Data,
  input  [2:0] io_Chan3_in_2_Cmd,
  input  [1:0] io_Chan3_in_2_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output [1:0] io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output [1:0] io_Chan3_out_1_Data,
  output [2:0] io_Chan3_out_2_Cmd,
  output [1:0] io_Chan3_out_2_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  input        io_InvSet_in_2,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  output       io_InvSet_out_2,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  input        io_ShrSet_in_2,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  output       io_ShrSet_out_2,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input  [1:0] io_CurPtr_in,
  output [1:0] io_CurPtr_out,
  input  [1:0] io_MemData_in,
  output [1:0] io_MemData_out,
  input  [1:0] io_AuxData_in,
  output [1:0] io_AuxData_out
);
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[node.scala 39:13]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[node.scala 39:13]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[node.scala 39:13]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[node.scala 39:13]
  assign io_Cache_out_2_State = io_Cache_in_2_State; // @[node.scala 39:13]
  assign io_Cache_out_2_Data = io_Cache_in_2_Data; // @[node.scala 39:13]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[node.scala 40:13]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[node.scala 40:13]
  assign io_Chan1_out_2_Cmd = io_Chan1_in_2_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_2_Data = io_Chan1_in_2_Data; // @[node.scala 40:13]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[node.scala 41:13]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[node.scala 41:13 router.scala 72:14]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[node.scala 41:13 router.scala 72:14]
  assign io_Chan2_out_2_Cmd = io_Chan2_in_2_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_2_Data = io_Chan2_in_2_Data; // @[node.scala 41:13]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[node.scala 42:13]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[node.scala 42:13]
  assign io_Chan3_out_2_Cmd = io_Chan3_in_2_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_2_Data = io_Chan3_in_2_Data; // @[node.scala 42:13]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[node.scala 43:14]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[node.scala 43:14]
  assign io_InvSet_out_2 = io_InvSet_in_2; // @[node.scala 43:14]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[node.scala 44:14]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[node.scala 44:14 router.scala 72:14]
  assign io_ShrSet_out_2 = io_ShrSet_in_2; // @[node.scala 44:14]
  assign io_ExGntd_out = io_ExGntd_in; // @[node.scala 45:14 router.scala 72:14]
  assign io_CurCmd_out = io_CurCmd_in; // @[node.scala 46:14 router.scala 72:14]
  assign io_CurPtr_out = io_CurPtr_in; // @[node.scala 47:14]
  assign io_MemData_out = io_MemData_in; // @[node.scala 48:15]
  assign io_AuxData_out = io_AuxData_in; // @[node.scala 49:15]
endmodule
module SendGntE_1(
  input  [1:0] io_Cache_in_0_State,
  input  [1:0] io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input  [1:0] io_Cache_in_1_Data,
  input  [1:0] io_Cache_in_2_State,
  input  [1:0] io_Cache_in_2_Data,
  output [1:0] io_Cache_out_0_State,
  output [1:0] io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output [1:0] io_Cache_out_1_Data,
  output [1:0] io_Cache_out_2_State,
  output [1:0] io_Cache_out_2_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input  [1:0] io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input  [1:0] io_Chan1_in_1_Data,
  input  [2:0] io_Chan1_in_2_Cmd,
  input  [1:0] io_Chan1_in_2_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output [1:0] io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output [1:0] io_Chan1_out_1_Data,
  output [2:0] io_Chan1_out_2_Cmd,
  output [1:0] io_Chan1_out_2_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input  [1:0] io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input  [1:0] io_Chan2_in_1_Data,
  input  [2:0] io_Chan2_in_2_Cmd,
  input  [1:0] io_Chan2_in_2_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output [1:0] io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output [1:0] io_Chan2_out_1_Data,
  output [2:0] io_Chan2_out_2_Cmd,
  output [1:0] io_Chan2_out_2_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input  [1:0] io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input  [1:0] io_Chan3_in_1_Data,
  input  [2:0] io_Chan3_in_2_Cmd,
  input  [1:0] io_Chan3_in_2_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output [1:0] io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output [1:0] io_Chan3_out_1_Data,
  output [2:0] io_Chan3_out_2_Cmd,
  output [1:0] io_Chan3_out_2_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  input        io_InvSet_in_2,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  output       io_InvSet_out_2,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  input        io_ShrSet_in_2,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  output       io_ShrSet_out_2,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input  [1:0] io_CurPtr_in,
  output [1:0] io_CurPtr_out,
  input  [1:0] io_MemData_in,
  output [1:0] io_MemData_out,
  input  [1:0] io_AuxData_in,
  output [1:0] io_AuxData_out
);
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[node.scala 39:13]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[node.scala 39:13]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[node.scala 39:13]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[node.scala 39:13]
  assign io_Cache_out_2_State = io_Cache_in_2_State; // @[node.scala 39:13]
  assign io_Cache_out_2_Data = io_Cache_in_2_Data; // @[node.scala 39:13]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[node.scala 40:13]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[node.scala 40:13]
  assign io_Chan1_out_2_Cmd = io_Chan1_in_2_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_2_Data = io_Chan1_in_2_Data; // @[node.scala 40:13]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[node.scala 41:13]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[node.scala 41:13]
  assign io_Chan2_out_2_Cmd = io_Chan2_in_2_Cmd; // @[node.scala 41:13 router.scala 72:14]
  assign io_Chan2_out_2_Data = io_Chan2_in_2_Data; // @[node.scala 41:13 router.scala 72:14]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[node.scala 42:13]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[node.scala 42:13]
  assign io_Chan3_out_2_Cmd = io_Chan3_in_2_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_2_Data = io_Chan3_in_2_Data; // @[node.scala 42:13]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[node.scala 43:14]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[node.scala 43:14]
  assign io_InvSet_out_2 = io_InvSet_in_2; // @[node.scala 43:14]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[node.scala 44:14]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[node.scala 44:14]
  assign io_ShrSet_out_2 = io_ShrSet_in_2; // @[node.scala 44:14 router.scala 72:14]
  assign io_ExGntd_out = io_ExGntd_in; // @[node.scala 45:14 router.scala 72:14]
  assign io_CurCmd_out = io_CurCmd_in; // @[node.scala 46:14 router.scala 72:14]
  assign io_CurPtr_out = io_CurPtr_in; // @[node.scala 47:14]
  assign io_MemData_out = io_MemData_in; // @[node.scala 48:15]
  assign io_AuxData_out = io_AuxData_in; // @[node.scala 49:15]
endmodule
module RecvGntS(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input  [1:0] io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input  [1:0] io_Cache_in_1_Data,
  input  [1:0] io_Cache_in_2_State,
  input  [1:0] io_Cache_in_2_Data,
  output [1:0] io_Cache_out_0_State,
  output [1:0] io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output [1:0] io_Cache_out_1_Data,
  output [1:0] io_Cache_out_2_State,
  output [1:0] io_Cache_out_2_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input  [1:0] io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input  [1:0] io_Chan1_in_1_Data,
  input  [2:0] io_Chan1_in_2_Cmd,
  input  [1:0] io_Chan1_in_2_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output [1:0] io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output [1:0] io_Chan1_out_1_Data,
  output [2:0] io_Chan1_out_2_Cmd,
  output [1:0] io_Chan1_out_2_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input  [1:0] io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input  [1:0] io_Chan2_in_1_Data,
  input  [2:0] io_Chan2_in_2_Cmd,
  input  [1:0] io_Chan2_in_2_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output [1:0] io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output [1:0] io_Chan2_out_1_Data,
  output [2:0] io_Chan2_out_2_Cmd,
  output [1:0] io_Chan2_out_2_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input  [1:0] io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input  [1:0] io_Chan3_in_1_Data,
  input  [2:0] io_Chan3_in_2_Cmd,
  input  [1:0] io_Chan3_in_2_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output [1:0] io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output [1:0] io_Chan3_out_1_Data,
  output [2:0] io_Chan3_out_2_Cmd,
  output [1:0] io_Chan3_out_2_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  input        io_InvSet_in_2,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  output       io_InvSet_out_2,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  input        io_ShrSet_in_2,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  output       io_ShrSet_out_2,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input  [1:0] io_CurPtr_in,
  output [1:0] io_CurPtr_out,
  input  [1:0] io_MemData_in,
  output [1:0] io_MemData_out,
  input  [1:0] io_AuxData_in,
  output [1:0] io_AuxData_out
);
  wire [1:0] _GEN_0 = io_Chan2_in_1_Cmd == 3'h5 ? 2'h1 : io_Cache_in_1_State; // @[node.scala 39:13 router.scala 84:34 85:23]
  wire [1:0] _GEN_1 = io_Chan2_in_1_Cmd == 3'h5 ? io_Chan2_in_1_Data : io_Cache_in_1_Data; // @[node.scala 39:13 router.scala 84:34 86:22]
  wire [2:0] _GEN_2 = io_Chan2_in_1_Cmd == 3'h5 ? 3'h0 : io_Chan2_in_1_Cmd; // @[node.scala 41:13 router.scala 84:34 87:21]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[node.scala 39:13]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[node.scala 39:13]
  assign io_Cache_out_1_State = io_en_r ? _GEN_0 : io_Cache_in_1_State; // @[node.scala 39:13 router.scala 83:14]
  assign io_Cache_out_1_Data = io_en_r ? _GEN_1 : io_Cache_in_1_Data; // @[node.scala 39:13 router.scala 83:14]
  assign io_Cache_out_2_State = io_Cache_in_2_State; // @[node.scala 39:13]
  assign io_Cache_out_2_Data = io_Cache_in_2_Data; // @[node.scala 39:13]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[node.scala 40:13]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[node.scala 40:13]
  assign io_Chan1_out_2_Cmd = io_Chan1_in_2_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_2_Data = io_Chan1_in_2_Data; // @[node.scala 40:13]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[node.scala 41:13]
  assign io_Chan2_out_1_Cmd = io_en_r ? _GEN_2 : io_Chan2_in_1_Cmd; // @[node.scala 41:13 router.scala 83:14]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[node.scala 41:13]
  assign io_Chan2_out_2_Cmd = io_Chan2_in_2_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_2_Data = io_Chan2_in_2_Data; // @[node.scala 41:13]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[node.scala 42:13]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[node.scala 42:13]
  assign io_Chan3_out_2_Cmd = io_Chan3_in_2_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_2_Data = io_Chan3_in_2_Data; // @[node.scala 42:13]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[node.scala 43:14]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[node.scala 43:14]
  assign io_InvSet_out_2 = io_InvSet_in_2; // @[node.scala 43:14]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[node.scala 44:14]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[node.scala 44:14]
  assign io_ShrSet_out_2 = io_ShrSet_in_2; // @[node.scala 44:14]
  assign io_ExGntd_out = io_ExGntd_in; // @[node.scala 45:14]
  assign io_CurCmd_out = io_CurCmd_in; // @[node.scala 46:14]
  assign io_CurPtr_out = io_CurPtr_in; // @[node.scala 47:14]
  assign io_MemData_out = io_MemData_in; // @[node.scala 48:15]
  assign io_AuxData_out = io_AuxData_in; // @[node.scala 49:15]
endmodule
module RecvGntS_1(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input  [1:0] io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input  [1:0] io_Cache_in_1_Data,
  input  [1:0] io_Cache_in_2_State,
  input  [1:0] io_Cache_in_2_Data,
  output [1:0] io_Cache_out_0_State,
  output [1:0] io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output [1:0] io_Cache_out_1_Data,
  output [1:0] io_Cache_out_2_State,
  output [1:0] io_Cache_out_2_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input  [1:0] io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input  [1:0] io_Chan1_in_1_Data,
  input  [2:0] io_Chan1_in_2_Cmd,
  input  [1:0] io_Chan1_in_2_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output [1:0] io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output [1:0] io_Chan1_out_1_Data,
  output [2:0] io_Chan1_out_2_Cmd,
  output [1:0] io_Chan1_out_2_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input  [1:0] io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input  [1:0] io_Chan2_in_1_Data,
  input  [2:0] io_Chan2_in_2_Cmd,
  input  [1:0] io_Chan2_in_2_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output [1:0] io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output [1:0] io_Chan2_out_1_Data,
  output [2:0] io_Chan2_out_2_Cmd,
  output [1:0] io_Chan2_out_2_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input  [1:0] io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input  [1:0] io_Chan3_in_1_Data,
  input  [2:0] io_Chan3_in_2_Cmd,
  input  [1:0] io_Chan3_in_2_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output [1:0] io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output [1:0] io_Chan3_out_1_Data,
  output [2:0] io_Chan3_out_2_Cmd,
  output [1:0] io_Chan3_out_2_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  input        io_InvSet_in_2,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  output       io_InvSet_out_2,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  input        io_ShrSet_in_2,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  output       io_ShrSet_out_2,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input  [1:0] io_CurPtr_in,
  output [1:0] io_CurPtr_out,
  input  [1:0] io_MemData_in,
  output [1:0] io_MemData_out,
  input  [1:0] io_AuxData_in,
  output [1:0] io_AuxData_out
);
  wire [1:0] _GEN_0 = io_Chan2_in_2_Cmd == 3'h5 ? 2'h1 : io_Cache_in_2_State; // @[node.scala 39:13 router.scala 84:34 85:23]
  wire [1:0] _GEN_1 = io_Chan2_in_2_Cmd == 3'h5 ? io_Chan2_in_2_Data : io_Cache_in_2_Data; // @[node.scala 39:13 router.scala 84:34 86:22]
  wire [2:0] _GEN_2 = io_Chan2_in_2_Cmd == 3'h5 ? 3'h0 : io_Chan2_in_2_Cmd; // @[node.scala 41:13 router.scala 84:34 87:21]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[node.scala 39:13]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[node.scala 39:13]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[node.scala 39:13]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[node.scala 39:13]
  assign io_Cache_out_2_State = io_en_r ? _GEN_0 : io_Cache_in_2_State; // @[node.scala 39:13 router.scala 83:14]
  assign io_Cache_out_2_Data = io_en_r ? _GEN_1 : io_Cache_in_2_Data; // @[node.scala 39:13 router.scala 83:14]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[node.scala 40:13]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[node.scala 40:13]
  assign io_Chan1_out_2_Cmd = io_Chan1_in_2_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_2_Data = io_Chan1_in_2_Data; // @[node.scala 40:13]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[node.scala 41:13]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[node.scala 41:13]
  assign io_Chan2_out_2_Cmd = io_en_r ? _GEN_2 : io_Chan2_in_2_Cmd; // @[node.scala 41:13 router.scala 83:14]
  assign io_Chan2_out_2_Data = io_Chan2_in_2_Data; // @[node.scala 41:13]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[node.scala 42:13]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[node.scala 42:13]
  assign io_Chan3_out_2_Cmd = io_Chan3_in_2_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_2_Data = io_Chan3_in_2_Data; // @[node.scala 42:13]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[node.scala 43:14]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[node.scala 43:14]
  assign io_InvSet_out_2 = io_InvSet_in_2; // @[node.scala 43:14]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[node.scala 44:14]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[node.scala 44:14]
  assign io_ShrSet_out_2 = io_ShrSet_in_2; // @[node.scala 44:14]
  assign io_ExGntd_out = io_ExGntd_in; // @[node.scala 45:14]
  assign io_CurCmd_out = io_CurCmd_in; // @[node.scala 46:14]
  assign io_CurPtr_out = io_CurPtr_in; // @[node.scala 47:14]
  assign io_MemData_out = io_MemData_in; // @[node.scala 48:15]
  assign io_AuxData_out = io_AuxData_in; // @[node.scala 49:15]
endmodule
module RecvGntE(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input  [1:0] io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input  [1:0] io_Cache_in_1_Data,
  input  [1:0] io_Cache_in_2_State,
  input  [1:0] io_Cache_in_2_Data,
  output [1:0] io_Cache_out_0_State,
  output [1:0] io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output [1:0] io_Cache_out_1_Data,
  output [1:0] io_Cache_out_2_State,
  output [1:0] io_Cache_out_2_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input  [1:0] io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input  [1:0] io_Chan1_in_1_Data,
  input  [2:0] io_Chan1_in_2_Cmd,
  input  [1:0] io_Chan1_in_2_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output [1:0] io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output [1:0] io_Chan1_out_1_Data,
  output [2:0] io_Chan1_out_2_Cmd,
  output [1:0] io_Chan1_out_2_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input  [1:0] io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input  [1:0] io_Chan2_in_1_Data,
  input  [2:0] io_Chan2_in_2_Cmd,
  input  [1:0] io_Chan2_in_2_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output [1:0] io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output [1:0] io_Chan2_out_1_Data,
  output [2:0] io_Chan2_out_2_Cmd,
  output [1:0] io_Chan2_out_2_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input  [1:0] io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input  [1:0] io_Chan3_in_1_Data,
  input  [2:0] io_Chan3_in_2_Cmd,
  input  [1:0] io_Chan3_in_2_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output [1:0] io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output [1:0] io_Chan3_out_1_Data,
  output [2:0] io_Chan3_out_2_Cmd,
  output [1:0] io_Chan3_out_2_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  input        io_InvSet_in_2,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  output       io_InvSet_out_2,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  input        io_ShrSet_in_2,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  output       io_ShrSet_out_2,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input  [1:0] io_CurPtr_in,
  output [1:0] io_CurPtr_out,
  input  [1:0] io_MemData_in,
  output [1:0] io_MemData_out,
  input  [1:0] io_AuxData_in,
  output [1:0] io_AuxData_out
);
  wire [1:0] _GEN_0 = io_Chan2_in_1_Cmd == 3'h6 ? 2'h2 : io_Cache_in_1_State; // @[node.scala 39:13 router.scala 93:34 94:23]
  wire [1:0] _GEN_1 = io_Chan2_in_1_Cmd == 3'h6 ? io_Chan2_in_1_Data : io_Cache_in_1_Data; // @[node.scala 39:13 router.scala 93:34 95:22]
  wire [2:0] _GEN_2 = io_Chan2_in_1_Cmd == 3'h6 ? 3'h0 : io_Chan2_in_1_Cmd; // @[node.scala 41:13 router.scala 93:34 96:21]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[node.scala 39:13]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[node.scala 39:13]
  assign io_Cache_out_1_State = io_en_r ? _GEN_0 : io_Cache_in_1_State; // @[node.scala 39:13 router.scala 92:14]
  assign io_Cache_out_1_Data = io_en_r ? _GEN_1 : io_Cache_in_1_Data; // @[node.scala 39:13 router.scala 92:14]
  assign io_Cache_out_2_State = io_Cache_in_2_State; // @[node.scala 39:13]
  assign io_Cache_out_2_Data = io_Cache_in_2_Data; // @[node.scala 39:13]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[node.scala 40:13]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[node.scala 40:13]
  assign io_Chan1_out_2_Cmd = io_Chan1_in_2_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_2_Data = io_Chan1_in_2_Data; // @[node.scala 40:13]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[node.scala 41:13]
  assign io_Chan2_out_1_Cmd = io_en_r ? _GEN_2 : io_Chan2_in_1_Cmd; // @[node.scala 41:13 router.scala 92:14]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[node.scala 41:13]
  assign io_Chan2_out_2_Cmd = io_Chan2_in_2_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_2_Data = io_Chan2_in_2_Data; // @[node.scala 41:13]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[node.scala 42:13]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[node.scala 42:13]
  assign io_Chan3_out_2_Cmd = io_Chan3_in_2_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_2_Data = io_Chan3_in_2_Data; // @[node.scala 42:13]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[node.scala 43:14]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[node.scala 43:14]
  assign io_InvSet_out_2 = io_InvSet_in_2; // @[node.scala 43:14]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[node.scala 44:14]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[node.scala 44:14]
  assign io_ShrSet_out_2 = io_ShrSet_in_2; // @[node.scala 44:14]
  assign io_ExGntd_out = io_ExGntd_in; // @[node.scala 45:14]
  assign io_CurCmd_out = io_CurCmd_in; // @[node.scala 46:14]
  assign io_CurPtr_out = io_CurPtr_in; // @[node.scala 47:14]
  assign io_MemData_out = io_MemData_in; // @[node.scala 48:15]
  assign io_AuxData_out = io_AuxData_in; // @[node.scala 49:15]
endmodule
module RecvGntE_1(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input  [1:0] io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input  [1:0] io_Cache_in_1_Data,
  input  [1:0] io_Cache_in_2_State,
  input  [1:0] io_Cache_in_2_Data,
  output [1:0] io_Cache_out_0_State,
  output [1:0] io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output [1:0] io_Cache_out_1_Data,
  output [1:0] io_Cache_out_2_State,
  output [1:0] io_Cache_out_2_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input  [1:0] io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input  [1:0] io_Chan1_in_1_Data,
  input  [2:0] io_Chan1_in_2_Cmd,
  input  [1:0] io_Chan1_in_2_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output [1:0] io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output [1:0] io_Chan1_out_1_Data,
  output [2:0] io_Chan1_out_2_Cmd,
  output [1:0] io_Chan1_out_2_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input  [1:0] io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input  [1:0] io_Chan2_in_1_Data,
  input  [2:0] io_Chan2_in_2_Cmd,
  input  [1:0] io_Chan2_in_2_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output [1:0] io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output [1:0] io_Chan2_out_1_Data,
  output [2:0] io_Chan2_out_2_Cmd,
  output [1:0] io_Chan2_out_2_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input  [1:0] io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input  [1:0] io_Chan3_in_1_Data,
  input  [2:0] io_Chan3_in_2_Cmd,
  input  [1:0] io_Chan3_in_2_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output [1:0] io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output [1:0] io_Chan3_out_1_Data,
  output [2:0] io_Chan3_out_2_Cmd,
  output [1:0] io_Chan3_out_2_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  input        io_InvSet_in_2,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  output       io_InvSet_out_2,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  input        io_ShrSet_in_2,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  output       io_ShrSet_out_2,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input  [1:0] io_CurPtr_in,
  output [1:0] io_CurPtr_out,
  input  [1:0] io_MemData_in,
  output [1:0] io_MemData_out,
  input  [1:0] io_AuxData_in,
  output [1:0] io_AuxData_out
);
  wire [1:0] _GEN_0 = io_Chan2_in_2_Cmd == 3'h6 ? 2'h2 : io_Cache_in_2_State; // @[node.scala 39:13 router.scala 93:34 94:23]
  wire [1:0] _GEN_1 = io_Chan2_in_2_Cmd == 3'h6 ? io_Chan2_in_2_Data : io_Cache_in_2_Data; // @[node.scala 39:13 router.scala 93:34 95:22]
  wire [2:0] _GEN_2 = io_Chan2_in_2_Cmd == 3'h6 ? 3'h0 : io_Chan2_in_2_Cmd; // @[node.scala 41:13 router.scala 93:34 96:21]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[node.scala 39:13]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[node.scala 39:13]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[node.scala 39:13]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[node.scala 39:13]
  assign io_Cache_out_2_State = io_en_r ? _GEN_0 : io_Cache_in_2_State; // @[node.scala 39:13 router.scala 92:14]
  assign io_Cache_out_2_Data = io_en_r ? _GEN_1 : io_Cache_in_2_Data; // @[node.scala 39:13 router.scala 92:14]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[node.scala 40:13]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[node.scala 40:13]
  assign io_Chan1_out_2_Cmd = io_Chan1_in_2_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_2_Data = io_Chan1_in_2_Data; // @[node.scala 40:13]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[node.scala 41:13]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[node.scala 41:13]
  assign io_Chan2_out_2_Cmd = io_en_r ? _GEN_2 : io_Chan2_in_2_Cmd; // @[node.scala 41:13 router.scala 92:14]
  assign io_Chan2_out_2_Data = io_Chan2_in_2_Data; // @[node.scala 41:13]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[node.scala 42:13]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[node.scala 42:13]
  assign io_Chan3_out_2_Cmd = io_Chan3_in_2_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_2_Data = io_Chan3_in_2_Data; // @[node.scala 42:13]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[node.scala 43:14]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[node.scala 43:14]
  assign io_InvSet_out_2 = io_InvSet_in_2; // @[node.scala 43:14]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[node.scala 44:14]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[node.scala 44:14]
  assign io_ShrSet_out_2 = io_ShrSet_in_2; // @[node.scala 44:14]
  assign io_ExGntd_out = io_ExGntd_in; // @[node.scala 45:14]
  assign io_CurCmd_out = io_CurCmd_in; // @[node.scala 46:14]
  assign io_CurPtr_out = io_CurPtr_in; // @[node.scala 47:14]
  assign io_MemData_out = io_MemData_in; // @[node.scala 48:15]
  assign io_AuxData_out = io_AuxData_in; // @[node.scala 49:15]
endmodule
module SendInvAck(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input  [1:0] io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input  [1:0] io_Cache_in_1_Data,
  input  [1:0] io_Cache_in_2_State,
  input  [1:0] io_Cache_in_2_Data,
  output [1:0] io_Cache_out_0_State,
  output [1:0] io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output [1:0] io_Cache_out_1_Data,
  output [1:0] io_Cache_out_2_State,
  output [1:0] io_Cache_out_2_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input  [1:0] io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input  [1:0] io_Chan1_in_1_Data,
  input  [2:0] io_Chan1_in_2_Cmd,
  input  [1:0] io_Chan1_in_2_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output [1:0] io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output [1:0] io_Chan1_out_1_Data,
  output [2:0] io_Chan1_out_2_Cmd,
  output [1:0] io_Chan1_out_2_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input  [1:0] io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input  [1:0] io_Chan2_in_1_Data,
  input  [2:0] io_Chan2_in_2_Cmd,
  input  [1:0] io_Chan2_in_2_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output [1:0] io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output [1:0] io_Chan2_out_1_Data,
  output [2:0] io_Chan2_out_2_Cmd,
  output [1:0] io_Chan2_out_2_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input  [1:0] io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input  [1:0] io_Chan3_in_1_Data,
  input  [2:0] io_Chan3_in_2_Cmd,
  input  [1:0] io_Chan3_in_2_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output [1:0] io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output [1:0] io_Chan3_out_1_Data,
  output [2:0] io_Chan3_out_2_Cmd,
  output [1:0] io_Chan3_out_2_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  input        io_InvSet_in_2,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  output       io_InvSet_out_2,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  input        io_ShrSet_in_2,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  output       io_ShrSet_out_2,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input  [1:0] io_CurPtr_in,
  output [1:0] io_CurPtr_out,
  input  [1:0] io_MemData_in,
  output [1:0] io_MemData_out,
  input  [1:0] io_AuxData_in,
  output [1:0] io_AuxData_out
);
  wire [1:0] _GEN_0 = io_Cache_in_1_State == 2'h2 ? io_Cache_in_1_Data : io_Chan3_in_1_Data; // @[router.scala 105:33 106:22 node.scala 42:13]
  wire [2:0] _GEN_1 = io_Chan2_in_1_Cmd == 3'h3 & io_Chan3_in_1_Cmd == 3'h0 ? 3'h0 : io_Chan2_in_1_Cmd; // @[router.scala 102:65 103:21 node.scala 41:13]
  wire [2:0] _GEN_2 = io_Chan2_in_1_Cmd == 3'h3 & io_Chan3_in_1_Cmd == 3'h0 ? 3'h4 : io_Chan3_in_1_Cmd; // @[router.scala 102:65 104:21 node.scala 42:13]
  wire [1:0] _GEN_3 = io_Chan2_in_1_Cmd == 3'h3 & io_Chan3_in_1_Cmd == 3'h0 ? _GEN_0 : io_Chan3_in_1_Data; // @[router.scala 102:65 node.scala 42:13]
  wire [1:0] _GEN_4 = io_Chan2_in_1_Cmd == 3'h3 & io_Chan3_in_1_Cmd == 3'h0 ? 2'h0 : io_Cache_in_1_State; // @[router.scala 102:65 109:23 node.scala 39:13]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[node.scala 39:13]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[node.scala 39:13]
  assign io_Cache_out_1_State = io_en_r ? _GEN_4 : io_Cache_in_1_State; // @[router.scala 101:14 node.scala 39:13]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[node.scala 39:13]
  assign io_Cache_out_2_State = io_Cache_in_2_State; // @[node.scala 39:13]
  assign io_Cache_out_2_Data = io_Cache_in_2_Data; // @[node.scala 39:13]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[node.scala 40:13]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[node.scala 40:13]
  assign io_Chan1_out_2_Cmd = io_Chan1_in_2_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_2_Data = io_Chan1_in_2_Data; // @[node.scala 40:13]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[node.scala 41:13]
  assign io_Chan2_out_1_Cmd = io_en_r ? _GEN_1 : io_Chan2_in_1_Cmd; // @[router.scala 101:14 node.scala 41:13]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[node.scala 41:13]
  assign io_Chan2_out_2_Cmd = io_Chan2_in_2_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_2_Data = io_Chan2_in_2_Data; // @[node.scala 41:13]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[node.scala 42:13]
  assign io_Chan3_out_1_Cmd = io_en_r ? _GEN_2 : io_Chan3_in_1_Cmd; // @[router.scala 101:14 node.scala 42:13]
  assign io_Chan3_out_1_Data = io_en_r ? _GEN_3 : io_Chan3_in_1_Data; // @[router.scala 101:14 node.scala 42:13]
  assign io_Chan3_out_2_Cmd = io_Chan3_in_2_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_2_Data = io_Chan3_in_2_Data; // @[node.scala 42:13]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[node.scala 43:14]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[node.scala 43:14]
  assign io_InvSet_out_2 = io_InvSet_in_2; // @[node.scala 43:14]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[node.scala 44:14]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[node.scala 44:14]
  assign io_ShrSet_out_2 = io_ShrSet_in_2; // @[node.scala 44:14]
  assign io_ExGntd_out = io_ExGntd_in; // @[node.scala 45:14]
  assign io_CurCmd_out = io_CurCmd_in; // @[node.scala 46:14]
  assign io_CurPtr_out = io_CurPtr_in; // @[node.scala 47:14]
  assign io_MemData_out = io_MemData_in; // @[node.scala 48:15]
  assign io_AuxData_out = io_AuxData_in; // @[node.scala 49:15]
endmodule
module SendInvAck_1(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input  [1:0] io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input  [1:0] io_Cache_in_1_Data,
  input  [1:0] io_Cache_in_2_State,
  input  [1:0] io_Cache_in_2_Data,
  output [1:0] io_Cache_out_0_State,
  output [1:0] io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output [1:0] io_Cache_out_1_Data,
  output [1:0] io_Cache_out_2_State,
  output [1:0] io_Cache_out_2_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input  [1:0] io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input  [1:0] io_Chan1_in_1_Data,
  input  [2:0] io_Chan1_in_2_Cmd,
  input  [1:0] io_Chan1_in_2_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output [1:0] io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output [1:0] io_Chan1_out_1_Data,
  output [2:0] io_Chan1_out_2_Cmd,
  output [1:0] io_Chan1_out_2_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input  [1:0] io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input  [1:0] io_Chan2_in_1_Data,
  input  [2:0] io_Chan2_in_2_Cmd,
  input  [1:0] io_Chan2_in_2_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output [1:0] io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output [1:0] io_Chan2_out_1_Data,
  output [2:0] io_Chan2_out_2_Cmd,
  output [1:0] io_Chan2_out_2_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input  [1:0] io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input  [1:0] io_Chan3_in_1_Data,
  input  [2:0] io_Chan3_in_2_Cmd,
  input  [1:0] io_Chan3_in_2_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output [1:0] io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output [1:0] io_Chan3_out_1_Data,
  output [2:0] io_Chan3_out_2_Cmd,
  output [1:0] io_Chan3_out_2_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  input        io_InvSet_in_2,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  output       io_InvSet_out_2,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  input        io_ShrSet_in_2,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  output       io_ShrSet_out_2,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input  [1:0] io_CurPtr_in,
  output [1:0] io_CurPtr_out,
  input  [1:0] io_MemData_in,
  output [1:0] io_MemData_out,
  input  [1:0] io_AuxData_in,
  output [1:0] io_AuxData_out
);
  wire [1:0] _GEN_0 = io_Cache_in_2_State == 2'h2 ? io_Cache_in_2_Data : io_Chan3_in_2_Data; // @[router.scala 105:33 106:22 node.scala 42:13]
  wire [2:0] _GEN_1 = io_Chan2_in_2_Cmd == 3'h3 & io_Chan3_in_2_Cmd == 3'h0 ? 3'h0 : io_Chan2_in_2_Cmd; // @[router.scala 102:65 103:21 node.scala 41:13]
  wire [2:0] _GEN_2 = io_Chan2_in_2_Cmd == 3'h3 & io_Chan3_in_2_Cmd == 3'h0 ? 3'h4 : io_Chan3_in_2_Cmd; // @[router.scala 102:65 104:21 node.scala 42:13]
  wire [1:0] _GEN_3 = io_Chan2_in_2_Cmd == 3'h3 & io_Chan3_in_2_Cmd == 3'h0 ? _GEN_0 : io_Chan3_in_2_Data; // @[router.scala 102:65 node.scala 42:13]
  wire [1:0] _GEN_4 = io_Chan2_in_2_Cmd == 3'h3 & io_Chan3_in_2_Cmd == 3'h0 ? 2'h0 : io_Cache_in_2_State; // @[router.scala 102:65 109:23 node.scala 39:13]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[node.scala 39:13]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[node.scala 39:13]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[node.scala 39:13]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[node.scala 39:13]
  assign io_Cache_out_2_State = io_en_r ? _GEN_4 : io_Cache_in_2_State; // @[router.scala 101:14 node.scala 39:13]
  assign io_Cache_out_2_Data = io_Cache_in_2_Data; // @[node.scala 39:13]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[node.scala 40:13]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[node.scala 40:13]
  assign io_Chan1_out_2_Cmd = io_Chan1_in_2_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_2_Data = io_Chan1_in_2_Data; // @[node.scala 40:13]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[node.scala 41:13]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[node.scala 41:13]
  assign io_Chan2_out_2_Cmd = io_en_r ? _GEN_1 : io_Chan2_in_2_Cmd; // @[router.scala 101:14 node.scala 41:13]
  assign io_Chan2_out_2_Data = io_Chan2_in_2_Data; // @[node.scala 41:13]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[node.scala 42:13]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[node.scala 42:13]
  assign io_Chan3_out_2_Cmd = io_en_r ? _GEN_2 : io_Chan3_in_2_Cmd; // @[router.scala 101:14 node.scala 42:13]
  assign io_Chan3_out_2_Data = io_en_r ? _GEN_3 : io_Chan3_in_2_Data; // @[router.scala 101:14 node.scala 42:13]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[node.scala 43:14]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[node.scala 43:14]
  assign io_InvSet_out_2 = io_InvSet_in_2; // @[node.scala 43:14]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[node.scala 44:14]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[node.scala 44:14]
  assign io_ShrSet_out_2 = io_ShrSet_in_2; // @[node.scala 44:14]
  assign io_ExGntd_out = io_ExGntd_in; // @[node.scala 45:14]
  assign io_CurCmd_out = io_CurCmd_in; // @[node.scala 46:14]
  assign io_CurPtr_out = io_CurPtr_in; // @[node.scala 47:14]
  assign io_MemData_out = io_MemData_in; // @[node.scala 48:15]
  assign io_AuxData_out = io_AuxData_in; // @[node.scala 49:15]
endmodule
module RecvInvAck(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input  [1:0] io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input  [1:0] io_Cache_in_1_Data,
  input  [1:0] io_Cache_in_2_State,
  input  [1:0] io_Cache_in_2_Data,
  output [1:0] io_Cache_out_0_State,
  output [1:0] io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output [1:0] io_Cache_out_1_Data,
  output [1:0] io_Cache_out_2_State,
  output [1:0] io_Cache_out_2_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input  [1:0] io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input  [1:0] io_Chan1_in_1_Data,
  input  [2:0] io_Chan1_in_2_Cmd,
  input  [1:0] io_Chan1_in_2_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output [1:0] io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output [1:0] io_Chan1_out_1_Data,
  output [2:0] io_Chan1_out_2_Cmd,
  output [1:0] io_Chan1_out_2_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input  [1:0] io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input  [1:0] io_Chan2_in_1_Data,
  input  [2:0] io_Chan2_in_2_Cmd,
  input  [1:0] io_Chan2_in_2_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output [1:0] io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output [1:0] io_Chan2_out_1_Data,
  output [2:0] io_Chan2_out_2_Cmd,
  output [1:0] io_Chan2_out_2_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input  [1:0] io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input  [1:0] io_Chan3_in_1_Data,
  input  [2:0] io_Chan3_in_2_Cmd,
  input  [1:0] io_Chan3_in_2_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output [1:0] io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output [1:0] io_Chan3_out_1_Data,
  output [2:0] io_Chan3_out_2_Cmd,
  output [1:0] io_Chan3_out_2_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  input        io_InvSet_in_2,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  output       io_InvSet_out_2,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  input        io_ShrSet_in_2,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  output       io_ShrSet_out_2,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input  [1:0] io_CurPtr_in,
  output [1:0] io_CurPtr_out,
  input  [1:0] io_MemData_in,
  output [1:0] io_MemData_out,
  input  [1:0] io_AuxData_in,
  output [1:0] io_AuxData_out
);
  wire  _GEN_0 = io_ExGntd_in ? 1'h0 : io_ExGntd_in; // @[router.scala 118:30 119:15 node.scala 45:14]
  wire [1:0] _GEN_1 = io_ExGntd_in ? io_Chan3_in_1_Data : io_MemData_in; // @[router.scala 118:30 120:16 node.scala 48:15]
  wire [2:0] _GEN_2 = io_Chan3_in_1_Cmd == 3'h4 & io_CurCmd_in != 3'h0 ? 3'h0 : io_Chan3_in_1_Cmd; // @[router.scala 115:62 116:21 node.scala 42:13]
  wire  _GEN_3 = io_Chan3_in_1_Cmd == 3'h4 & io_CurCmd_in != 3'h0 ? 1'h0 : io_ShrSet_in_1; // @[router.scala 115:62 117:18 node.scala 44:14]
  wire  _GEN_4 = io_Chan3_in_1_Cmd == 3'h4 & io_CurCmd_in != 3'h0 ? _GEN_0 : io_ExGntd_in; // @[router.scala 115:62 node.scala 45:14]
  wire [1:0] _GEN_5 = io_Chan3_in_1_Cmd == 3'h4 & io_CurCmd_in != 3'h0 ? _GEN_1 : io_MemData_in; // @[router.scala 115:62 node.scala 48:15]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[node.scala 39:13]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[node.scala 39:13]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[node.scala 39:13]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[node.scala 39:13]
  assign io_Cache_out_2_State = io_Cache_in_2_State; // @[node.scala 39:13]
  assign io_Cache_out_2_Data = io_Cache_in_2_Data; // @[node.scala 39:13]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[node.scala 40:13]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[node.scala 40:13]
  assign io_Chan1_out_2_Cmd = io_Chan1_in_2_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_2_Data = io_Chan1_in_2_Data; // @[node.scala 40:13]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[node.scala 41:13]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[node.scala 41:13]
  assign io_Chan2_out_2_Cmd = io_Chan2_in_2_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_2_Data = io_Chan2_in_2_Data; // @[node.scala 41:13]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[node.scala 42:13]
  assign io_Chan3_out_1_Cmd = io_en_r ? _GEN_2 : io_Chan3_in_1_Cmd; // @[router.scala 114:14 node.scala 42:13]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[node.scala 42:13]
  assign io_Chan3_out_2_Cmd = io_Chan3_in_2_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_2_Data = io_Chan3_in_2_Data; // @[node.scala 42:13]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[node.scala 43:14]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[node.scala 43:14]
  assign io_InvSet_out_2 = io_InvSet_in_2; // @[node.scala 43:14]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[node.scala 44:14]
  assign io_ShrSet_out_1 = io_en_r ? _GEN_3 : io_ShrSet_in_1; // @[router.scala 114:14 node.scala 44:14]
  assign io_ShrSet_out_2 = io_ShrSet_in_2; // @[node.scala 44:14]
  assign io_ExGntd_out = io_en_r ? _GEN_4 : io_ExGntd_in; // @[router.scala 114:14 node.scala 45:14]
  assign io_CurCmd_out = io_CurCmd_in; // @[node.scala 46:14]
  assign io_CurPtr_out = io_CurPtr_in; // @[node.scala 47:14]
  assign io_MemData_out = io_en_r ? _GEN_5 : io_MemData_in; // @[router.scala 114:14 node.scala 48:15]
  assign io_AuxData_out = io_AuxData_in; // @[node.scala 49:15]
endmodule
module RecvInvAck_1(
  input        io_en_r,
  input  [1:0] io_Cache_in_0_State,
  input  [1:0] io_Cache_in_0_Data,
  input  [1:0] io_Cache_in_1_State,
  input  [1:0] io_Cache_in_1_Data,
  input  [1:0] io_Cache_in_2_State,
  input  [1:0] io_Cache_in_2_Data,
  output [1:0] io_Cache_out_0_State,
  output [1:0] io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output [1:0] io_Cache_out_1_Data,
  output [1:0] io_Cache_out_2_State,
  output [1:0] io_Cache_out_2_Data,
  input  [2:0] io_Chan1_in_0_Cmd,
  input  [1:0] io_Chan1_in_0_Data,
  input  [2:0] io_Chan1_in_1_Cmd,
  input  [1:0] io_Chan1_in_1_Data,
  input  [2:0] io_Chan1_in_2_Cmd,
  input  [1:0] io_Chan1_in_2_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output [1:0] io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output [1:0] io_Chan1_out_1_Data,
  output [2:0] io_Chan1_out_2_Cmd,
  output [1:0] io_Chan1_out_2_Data,
  input  [2:0] io_Chan2_in_0_Cmd,
  input  [1:0] io_Chan2_in_0_Data,
  input  [2:0] io_Chan2_in_1_Cmd,
  input  [1:0] io_Chan2_in_1_Data,
  input  [2:0] io_Chan2_in_2_Cmd,
  input  [1:0] io_Chan2_in_2_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output [1:0] io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output [1:0] io_Chan2_out_1_Data,
  output [2:0] io_Chan2_out_2_Cmd,
  output [1:0] io_Chan2_out_2_Data,
  input  [2:0] io_Chan3_in_0_Cmd,
  input  [1:0] io_Chan3_in_0_Data,
  input  [2:0] io_Chan3_in_1_Cmd,
  input  [1:0] io_Chan3_in_1_Data,
  input  [2:0] io_Chan3_in_2_Cmd,
  input  [1:0] io_Chan3_in_2_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output [1:0] io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output [1:0] io_Chan3_out_1_Data,
  output [2:0] io_Chan3_out_2_Cmd,
  output [1:0] io_Chan3_out_2_Data,
  input        io_InvSet_in_0,
  input        io_InvSet_in_1,
  input        io_InvSet_in_2,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  output       io_InvSet_out_2,
  input        io_ShrSet_in_0,
  input        io_ShrSet_in_1,
  input        io_ShrSet_in_2,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  output       io_ShrSet_out_2,
  input        io_ExGntd_in,
  output       io_ExGntd_out,
  input  [2:0] io_CurCmd_in,
  output [2:0] io_CurCmd_out,
  input  [1:0] io_CurPtr_in,
  output [1:0] io_CurPtr_out,
  input  [1:0] io_MemData_in,
  output [1:0] io_MemData_out,
  input  [1:0] io_AuxData_in,
  output [1:0] io_AuxData_out
);
  wire  _GEN_0 = io_ExGntd_in ? 1'h0 : io_ExGntd_in; // @[router.scala 118:30 119:15 node.scala 45:14]
  wire [1:0] _GEN_1 = io_ExGntd_in ? io_Chan3_in_2_Data : io_MemData_in; // @[router.scala 118:30 120:16 node.scala 48:15]
  wire [2:0] _GEN_2 = io_Chan3_in_2_Cmd == 3'h4 & io_CurCmd_in != 3'h0 ? 3'h0 : io_Chan3_in_2_Cmd; // @[router.scala 115:62 116:21 node.scala 42:13]
  wire  _GEN_3 = io_Chan3_in_2_Cmd == 3'h4 & io_CurCmd_in != 3'h0 ? 1'h0 : io_ShrSet_in_2; // @[router.scala 115:62 117:18 node.scala 44:14]
  wire  _GEN_4 = io_Chan3_in_2_Cmd == 3'h4 & io_CurCmd_in != 3'h0 ? _GEN_0 : io_ExGntd_in; // @[router.scala 115:62 node.scala 45:14]
  wire [1:0] _GEN_5 = io_Chan3_in_2_Cmd == 3'h4 & io_CurCmd_in != 3'h0 ? _GEN_1 : io_MemData_in; // @[router.scala 115:62 node.scala 48:15]
  assign io_Cache_out_0_State = io_Cache_in_0_State; // @[node.scala 39:13]
  assign io_Cache_out_0_Data = io_Cache_in_0_Data; // @[node.scala 39:13]
  assign io_Cache_out_1_State = io_Cache_in_1_State; // @[node.scala 39:13]
  assign io_Cache_out_1_Data = io_Cache_in_1_Data; // @[node.scala 39:13]
  assign io_Cache_out_2_State = io_Cache_in_2_State; // @[node.scala 39:13]
  assign io_Cache_out_2_Data = io_Cache_in_2_Data; // @[node.scala 39:13]
  assign io_Chan1_out_0_Cmd = io_Chan1_in_0_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_0_Data = io_Chan1_in_0_Data; // @[node.scala 40:13]
  assign io_Chan1_out_1_Cmd = io_Chan1_in_1_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_1_Data = io_Chan1_in_1_Data; // @[node.scala 40:13]
  assign io_Chan1_out_2_Cmd = io_Chan1_in_2_Cmd; // @[node.scala 40:13]
  assign io_Chan1_out_2_Data = io_Chan1_in_2_Data; // @[node.scala 40:13]
  assign io_Chan2_out_0_Cmd = io_Chan2_in_0_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_0_Data = io_Chan2_in_0_Data; // @[node.scala 41:13]
  assign io_Chan2_out_1_Cmd = io_Chan2_in_1_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_1_Data = io_Chan2_in_1_Data; // @[node.scala 41:13]
  assign io_Chan2_out_2_Cmd = io_Chan2_in_2_Cmd; // @[node.scala 41:13]
  assign io_Chan2_out_2_Data = io_Chan2_in_2_Data; // @[node.scala 41:13]
  assign io_Chan3_out_0_Cmd = io_Chan3_in_0_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_0_Data = io_Chan3_in_0_Data; // @[node.scala 42:13]
  assign io_Chan3_out_1_Cmd = io_Chan3_in_1_Cmd; // @[node.scala 42:13]
  assign io_Chan3_out_1_Data = io_Chan3_in_1_Data; // @[node.scala 42:13]
  assign io_Chan3_out_2_Cmd = io_en_r ? _GEN_2 : io_Chan3_in_2_Cmd; // @[router.scala 114:14 node.scala 42:13]
  assign io_Chan3_out_2_Data = io_Chan3_in_2_Data; // @[node.scala 42:13]
  assign io_InvSet_out_0 = io_InvSet_in_0; // @[node.scala 43:14]
  assign io_InvSet_out_1 = io_InvSet_in_1; // @[node.scala 43:14]
  assign io_InvSet_out_2 = io_InvSet_in_2; // @[node.scala 43:14]
  assign io_ShrSet_out_0 = io_ShrSet_in_0; // @[node.scala 44:14]
  assign io_ShrSet_out_1 = io_ShrSet_in_1; // @[node.scala 44:14]
  assign io_ShrSet_out_2 = io_en_r ? _GEN_3 : io_ShrSet_in_2; // @[router.scala 114:14 node.scala 44:14]
  assign io_ExGntd_out = io_en_r ? _GEN_4 : io_ExGntd_in; // @[router.scala 114:14 node.scala 45:14]
  assign io_CurCmd_out = io_CurCmd_in; // @[node.scala 46:14]
  assign io_CurPtr_out = io_CurPtr_in; // @[node.scala 47:14]
  assign io_MemData_out = io_en_r ? _GEN_5 : io_MemData_in; // @[router.scala 114:14 node.scala 48:15]
  assign io_AuxData_out = io_AuxData_in; // @[node.scala 49:15]
endmodule
module system(
  input        clock,
  input        reset,
  input  [4:0] io_en_a,
  output [1:0] io_Cache_out_0_State,
  output [1:0] io_Cache_out_0_Data,
  output [1:0] io_Cache_out_1_State,
  output [1:0] io_Cache_out_1_Data,
  output [1:0] io_Cache_out_2_State,
  output [1:0] io_Cache_out_2_Data,
  output [2:0] io_Chan1_out_0_Cmd,
  output [1:0] io_Chan1_out_0_Data,
  output [2:0] io_Chan1_out_1_Cmd,
  output [1:0] io_Chan1_out_1_Data,
  output [2:0] io_Chan1_out_2_Cmd,
  output [1:0] io_Chan1_out_2_Data,
  output [2:0] io_Chan2_out_0_Cmd,
  output [1:0] io_Chan2_out_0_Data,
  output [2:0] io_Chan2_out_1_Cmd,
  output [1:0] io_Chan2_out_1_Data,
  output [2:0] io_Chan2_out_2_Cmd,
  output [1:0] io_Chan2_out_2_Data,
  output [2:0] io_Chan3_out_0_Cmd,
  output [1:0] io_Chan3_out_0_Data,
  output [2:0] io_Chan3_out_1_Cmd,
  output [1:0] io_Chan3_out_1_Data,
  output [2:0] io_Chan3_out_2_Cmd,
  output [1:0] io_Chan3_out_2_Data,
  output       io_InvSet_out_0,
  output       io_InvSet_out_1,
  output       io_InvSet_out_2,
  output       io_ShrSet_out_0,
  output       io_ShrSet_out_1,
  output       io_ShrSet_out_2,
  output       io_ExGntd_out,
  output [2:0] io_CurCmd_out,
  output [1:0] io_CurPtr_out,
  output [1:0] io_MemData_out,
  output [1:0] io_AuxData_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
`endif // RANDOMIZE_REG_INIT
  wire  rules_0_io_en_r; // @[system.scala 76:16]
  wire [1:0] rules_0_io_Cache_in_0_State; // @[system.scala 76:16]
  wire [1:0] rules_0_io_Cache_in_0_Data; // @[system.scala 76:16]
  wire [1:0] rules_0_io_Cache_in_1_State; // @[system.scala 76:16]
  wire [1:0] rules_0_io_Cache_in_1_Data; // @[system.scala 76:16]
  wire [1:0] rules_0_io_Cache_in_2_State; // @[system.scala 76:16]
  wire [1:0] rules_0_io_Cache_in_2_Data; // @[system.scala 76:16]
  wire [1:0] rules_0_io_Cache_out_0_State; // @[system.scala 76:16]
  wire [1:0] rules_0_io_Cache_out_0_Data; // @[system.scala 76:16]
  wire [1:0] rules_0_io_Cache_out_1_State; // @[system.scala 76:16]
  wire [1:0] rules_0_io_Cache_out_1_Data; // @[system.scala 76:16]
  wire [1:0] rules_0_io_Cache_out_2_State; // @[system.scala 76:16]
  wire [1:0] rules_0_io_Cache_out_2_Data; // @[system.scala 76:16]
  wire [2:0] rules_0_io_Chan1_in_0_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_0_io_Chan1_in_0_Data; // @[system.scala 76:16]
  wire [2:0] rules_0_io_Chan1_in_1_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_0_io_Chan1_in_1_Data; // @[system.scala 76:16]
  wire [2:0] rules_0_io_Chan1_in_2_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_0_io_Chan1_in_2_Data; // @[system.scala 76:16]
  wire [2:0] rules_0_io_Chan1_out_0_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_0_io_Chan1_out_0_Data; // @[system.scala 76:16]
  wire [2:0] rules_0_io_Chan1_out_1_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_0_io_Chan1_out_1_Data; // @[system.scala 76:16]
  wire [2:0] rules_0_io_Chan1_out_2_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_0_io_Chan1_out_2_Data; // @[system.scala 76:16]
  wire [2:0] rules_0_io_Chan2_in_0_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_0_io_Chan2_in_0_Data; // @[system.scala 76:16]
  wire [2:0] rules_0_io_Chan2_in_1_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_0_io_Chan2_in_1_Data; // @[system.scala 76:16]
  wire [2:0] rules_0_io_Chan2_in_2_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_0_io_Chan2_in_2_Data; // @[system.scala 76:16]
  wire [2:0] rules_0_io_Chan2_out_0_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_0_io_Chan2_out_0_Data; // @[system.scala 76:16]
  wire [2:0] rules_0_io_Chan2_out_1_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_0_io_Chan2_out_1_Data; // @[system.scala 76:16]
  wire [2:0] rules_0_io_Chan2_out_2_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_0_io_Chan2_out_2_Data; // @[system.scala 76:16]
  wire [2:0] rules_0_io_Chan3_in_0_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_0_io_Chan3_in_0_Data; // @[system.scala 76:16]
  wire [2:0] rules_0_io_Chan3_in_1_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_0_io_Chan3_in_1_Data; // @[system.scala 76:16]
  wire [2:0] rules_0_io_Chan3_in_2_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_0_io_Chan3_in_2_Data; // @[system.scala 76:16]
  wire [2:0] rules_0_io_Chan3_out_0_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_0_io_Chan3_out_0_Data; // @[system.scala 76:16]
  wire [2:0] rules_0_io_Chan3_out_1_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_0_io_Chan3_out_1_Data; // @[system.scala 76:16]
  wire [2:0] rules_0_io_Chan3_out_2_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_0_io_Chan3_out_2_Data; // @[system.scala 76:16]
  wire  rules_0_io_InvSet_in_0; // @[system.scala 76:16]
  wire  rules_0_io_InvSet_in_1; // @[system.scala 76:16]
  wire  rules_0_io_InvSet_in_2; // @[system.scala 76:16]
  wire  rules_0_io_InvSet_out_0; // @[system.scala 76:16]
  wire  rules_0_io_InvSet_out_1; // @[system.scala 76:16]
  wire  rules_0_io_InvSet_out_2; // @[system.scala 76:16]
  wire  rules_0_io_ShrSet_in_0; // @[system.scala 76:16]
  wire  rules_0_io_ShrSet_in_1; // @[system.scala 76:16]
  wire  rules_0_io_ShrSet_in_2; // @[system.scala 76:16]
  wire  rules_0_io_ShrSet_out_0; // @[system.scala 76:16]
  wire  rules_0_io_ShrSet_out_1; // @[system.scala 76:16]
  wire  rules_0_io_ShrSet_out_2; // @[system.scala 76:16]
  wire  rules_0_io_ExGntd_in; // @[system.scala 76:16]
  wire  rules_0_io_ExGntd_out; // @[system.scala 76:16]
  wire [2:0] rules_0_io_CurCmd_in; // @[system.scala 76:16]
  wire [2:0] rules_0_io_CurCmd_out; // @[system.scala 76:16]
  wire [1:0] rules_0_io_CurPtr_in; // @[system.scala 76:16]
  wire [1:0] rules_0_io_CurPtr_out; // @[system.scala 76:16]
  wire [1:0] rules_0_io_MemData_in; // @[system.scala 76:16]
  wire [1:0] rules_0_io_MemData_out; // @[system.scala 76:16]
  wire [1:0] rules_0_io_AuxData_in; // @[system.scala 76:16]
  wire [1:0] rules_0_io_AuxData_out; // @[system.scala 76:16]
  wire  rules_1_io_en_r; // @[system.scala 76:16]
  wire [1:0] rules_1_io_Cache_in_0_State; // @[system.scala 76:16]
  wire [1:0] rules_1_io_Cache_in_0_Data; // @[system.scala 76:16]
  wire [1:0] rules_1_io_Cache_in_1_State; // @[system.scala 76:16]
  wire [1:0] rules_1_io_Cache_in_1_Data; // @[system.scala 76:16]
  wire [1:0] rules_1_io_Cache_in_2_State; // @[system.scala 76:16]
  wire [1:0] rules_1_io_Cache_in_2_Data; // @[system.scala 76:16]
  wire [1:0] rules_1_io_Cache_out_0_State; // @[system.scala 76:16]
  wire [1:0] rules_1_io_Cache_out_0_Data; // @[system.scala 76:16]
  wire [1:0] rules_1_io_Cache_out_1_State; // @[system.scala 76:16]
  wire [1:0] rules_1_io_Cache_out_1_Data; // @[system.scala 76:16]
  wire [1:0] rules_1_io_Cache_out_2_State; // @[system.scala 76:16]
  wire [1:0] rules_1_io_Cache_out_2_Data; // @[system.scala 76:16]
  wire [2:0] rules_1_io_Chan1_in_0_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_1_io_Chan1_in_0_Data; // @[system.scala 76:16]
  wire [2:0] rules_1_io_Chan1_in_1_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_1_io_Chan1_in_1_Data; // @[system.scala 76:16]
  wire [2:0] rules_1_io_Chan1_in_2_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_1_io_Chan1_in_2_Data; // @[system.scala 76:16]
  wire [2:0] rules_1_io_Chan1_out_0_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_1_io_Chan1_out_0_Data; // @[system.scala 76:16]
  wire [2:0] rules_1_io_Chan1_out_1_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_1_io_Chan1_out_1_Data; // @[system.scala 76:16]
  wire [2:0] rules_1_io_Chan1_out_2_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_1_io_Chan1_out_2_Data; // @[system.scala 76:16]
  wire [2:0] rules_1_io_Chan2_in_0_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_1_io_Chan2_in_0_Data; // @[system.scala 76:16]
  wire [2:0] rules_1_io_Chan2_in_1_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_1_io_Chan2_in_1_Data; // @[system.scala 76:16]
  wire [2:0] rules_1_io_Chan2_in_2_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_1_io_Chan2_in_2_Data; // @[system.scala 76:16]
  wire [2:0] rules_1_io_Chan2_out_0_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_1_io_Chan2_out_0_Data; // @[system.scala 76:16]
  wire [2:0] rules_1_io_Chan2_out_1_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_1_io_Chan2_out_1_Data; // @[system.scala 76:16]
  wire [2:0] rules_1_io_Chan2_out_2_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_1_io_Chan2_out_2_Data; // @[system.scala 76:16]
  wire [2:0] rules_1_io_Chan3_in_0_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_1_io_Chan3_in_0_Data; // @[system.scala 76:16]
  wire [2:0] rules_1_io_Chan3_in_1_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_1_io_Chan3_in_1_Data; // @[system.scala 76:16]
  wire [2:0] rules_1_io_Chan3_in_2_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_1_io_Chan3_in_2_Data; // @[system.scala 76:16]
  wire [2:0] rules_1_io_Chan3_out_0_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_1_io_Chan3_out_0_Data; // @[system.scala 76:16]
  wire [2:0] rules_1_io_Chan3_out_1_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_1_io_Chan3_out_1_Data; // @[system.scala 76:16]
  wire [2:0] rules_1_io_Chan3_out_2_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_1_io_Chan3_out_2_Data; // @[system.scala 76:16]
  wire  rules_1_io_InvSet_in_0; // @[system.scala 76:16]
  wire  rules_1_io_InvSet_in_1; // @[system.scala 76:16]
  wire  rules_1_io_InvSet_in_2; // @[system.scala 76:16]
  wire  rules_1_io_InvSet_out_0; // @[system.scala 76:16]
  wire  rules_1_io_InvSet_out_1; // @[system.scala 76:16]
  wire  rules_1_io_InvSet_out_2; // @[system.scala 76:16]
  wire  rules_1_io_ShrSet_in_0; // @[system.scala 76:16]
  wire  rules_1_io_ShrSet_in_1; // @[system.scala 76:16]
  wire  rules_1_io_ShrSet_in_2; // @[system.scala 76:16]
  wire  rules_1_io_ShrSet_out_0; // @[system.scala 76:16]
  wire  rules_1_io_ShrSet_out_1; // @[system.scala 76:16]
  wire  rules_1_io_ShrSet_out_2; // @[system.scala 76:16]
  wire  rules_1_io_ExGntd_in; // @[system.scala 76:16]
  wire  rules_1_io_ExGntd_out; // @[system.scala 76:16]
  wire [2:0] rules_1_io_CurCmd_in; // @[system.scala 76:16]
  wire [2:0] rules_1_io_CurCmd_out; // @[system.scala 76:16]
  wire [1:0] rules_1_io_CurPtr_in; // @[system.scala 76:16]
  wire [1:0] rules_1_io_CurPtr_out; // @[system.scala 76:16]
  wire [1:0] rules_1_io_MemData_in; // @[system.scala 76:16]
  wire [1:0] rules_1_io_MemData_out; // @[system.scala 76:16]
  wire [1:0] rules_1_io_AuxData_in; // @[system.scala 76:16]
  wire [1:0] rules_1_io_AuxData_out; // @[system.scala 76:16]
  wire  rules_2_io_en_r; // @[system.scala 76:16]
  wire [1:0] rules_2_io_Cache_in_0_State; // @[system.scala 76:16]
  wire [1:0] rules_2_io_Cache_in_0_Data; // @[system.scala 76:16]
  wire [1:0] rules_2_io_Cache_in_1_State; // @[system.scala 76:16]
  wire [1:0] rules_2_io_Cache_in_1_Data; // @[system.scala 76:16]
  wire [1:0] rules_2_io_Cache_in_2_State; // @[system.scala 76:16]
  wire [1:0] rules_2_io_Cache_in_2_Data; // @[system.scala 76:16]
  wire [1:0] rules_2_io_Cache_out_0_State; // @[system.scala 76:16]
  wire [1:0] rules_2_io_Cache_out_0_Data; // @[system.scala 76:16]
  wire [1:0] rules_2_io_Cache_out_1_State; // @[system.scala 76:16]
  wire [1:0] rules_2_io_Cache_out_1_Data; // @[system.scala 76:16]
  wire [1:0] rules_2_io_Cache_out_2_State; // @[system.scala 76:16]
  wire [1:0] rules_2_io_Cache_out_2_Data; // @[system.scala 76:16]
  wire [2:0] rules_2_io_Chan1_in_0_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_2_io_Chan1_in_0_Data; // @[system.scala 76:16]
  wire [2:0] rules_2_io_Chan1_in_1_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_2_io_Chan1_in_1_Data; // @[system.scala 76:16]
  wire [2:0] rules_2_io_Chan1_in_2_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_2_io_Chan1_in_2_Data; // @[system.scala 76:16]
  wire [2:0] rules_2_io_Chan1_out_0_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_2_io_Chan1_out_0_Data; // @[system.scala 76:16]
  wire [2:0] rules_2_io_Chan1_out_1_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_2_io_Chan1_out_1_Data; // @[system.scala 76:16]
  wire [2:0] rules_2_io_Chan1_out_2_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_2_io_Chan1_out_2_Data; // @[system.scala 76:16]
  wire [2:0] rules_2_io_Chan2_in_0_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_2_io_Chan2_in_0_Data; // @[system.scala 76:16]
  wire [2:0] rules_2_io_Chan2_in_1_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_2_io_Chan2_in_1_Data; // @[system.scala 76:16]
  wire [2:0] rules_2_io_Chan2_in_2_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_2_io_Chan2_in_2_Data; // @[system.scala 76:16]
  wire [2:0] rules_2_io_Chan2_out_0_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_2_io_Chan2_out_0_Data; // @[system.scala 76:16]
  wire [2:0] rules_2_io_Chan2_out_1_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_2_io_Chan2_out_1_Data; // @[system.scala 76:16]
  wire [2:0] rules_2_io_Chan2_out_2_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_2_io_Chan2_out_2_Data; // @[system.scala 76:16]
  wire [2:0] rules_2_io_Chan3_in_0_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_2_io_Chan3_in_0_Data; // @[system.scala 76:16]
  wire [2:0] rules_2_io_Chan3_in_1_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_2_io_Chan3_in_1_Data; // @[system.scala 76:16]
  wire [2:0] rules_2_io_Chan3_in_2_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_2_io_Chan3_in_2_Data; // @[system.scala 76:16]
  wire [2:0] rules_2_io_Chan3_out_0_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_2_io_Chan3_out_0_Data; // @[system.scala 76:16]
  wire [2:0] rules_2_io_Chan3_out_1_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_2_io_Chan3_out_1_Data; // @[system.scala 76:16]
  wire [2:0] rules_2_io_Chan3_out_2_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_2_io_Chan3_out_2_Data; // @[system.scala 76:16]
  wire  rules_2_io_InvSet_in_0; // @[system.scala 76:16]
  wire  rules_2_io_InvSet_in_1; // @[system.scala 76:16]
  wire  rules_2_io_InvSet_in_2; // @[system.scala 76:16]
  wire  rules_2_io_InvSet_out_0; // @[system.scala 76:16]
  wire  rules_2_io_InvSet_out_1; // @[system.scala 76:16]
  wire  rules_2_io_InvSet_out_2; // @[system.scala 76:16]
  wire  rules_2_io_ShrSet_in_0; // @[system.scala 76:16]
  wire  rules_2_io_ShrSet_in_1; // @[system.scala 76:16]
  wire  rules_2_io_ShrSet_in_2; // @[system.scala 76:16]
  wire  rules_2_io_ShrSet_out_0; // @[system.scala 76:16]
  wire  rules_2_io_ShrSet_out_1; // @[system.scala 76:16]
  wire  rules_2_io_ShrSet_out_2; // @[system.scala 76:16]
  wire  rules_2_io_ExGntd_in; // @[system.scala 76:16]
  wire  rules_2_io_ExGntd_out; // @[system.scala 76:16]
  wire [2:0] rules_2_io_CurCmd_in; // @[system.scala 76:16]
  wire [2:0] rules_2_io_CurCmd_out; // @[system.scala 76:16]
  wire [1:0] rules_2_io_CurPtr_in; // @[system.scala 76:16]
  wire [1:0] rules_2_io_CurPtr_out; // @[system.scala 76:16]
  wire [1:0] rules_2_io_MemData_in; // @[system.scala 76:16]
  wire [1:0] rules_2_io_MemData_out; // @[system.scala 76:16]
  wire [1:0] rules_2_io_AuxData_in; // @[system.scala 76:16]
  wire [1:0] rules_2_io_AuxData_out; // @[system.scala 76:16]
  wire  rules_3_io_en_r; // @[system.scala 76:16]
  wire [1:0] rules_3_io_Cache_in_0_State; // @[system.scala 76:16]
  wire [1:0] rules_3_io_Cache_in_0_Data; // @[system.scala 76:16]
  wire [1:0] rules_3_io_Cache_in_1_State; // @[system.scala 76:16]
  wire [1:0] rules_3_io_Cache_in_1_Data; // @[system.scala 76:16]
  wire [1:0] rules_3_io_Cache_in_2_State; // @[system.scala 76:16]
  wire [1:0] rules_3_io_Cache_in_2_Data; // @[system.scala 76:16]
  wire [1:0] rules_3_io_Cache_out_0_State; // @[system.scala 76:16]
  wire [1:0] rules_3_io_Cache_out_0_Data; // @[system.scala 76:16]
  wire [1:0] rules_3_io_Cache_out_1_State; // @[system.scala 76:16]
  wire [1:0] rules_3_io_Cache_out_1_Data; // @[system.scala 76:16]
  wire [1:0] rules_3_io_Cache_out_2_State; // @[system.scala 76:16]
  wire [1:0] rules_3_io_Cache_out_2_Data; // @[system.scala 76:16]
  wire [2:0] rules_3_io_Chan1_in_0_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_3_io_Chan1_in_0_Data; // @[system.scala 76:16]
  wire [2:0] rules_3_io_Chan1_in_1_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_3_io_Chan1_in_1_Data; // @[system.scala 76:16]
  wire [2:0] rules_3_io_Chan1_in_2_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_3_io_Chan1_in_2_Data; // @[system.scala 76:16]
  wire [2:0] rules_3_io_Chan1_out_0_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_3_io_Chan1_out_0_Data; // @[system.scala 76:16]
  wire [2:0] rules_3_io_Chan1_out_1_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_3_io_Chan1_out_1_Data; // @[system.scala 76:16]
  wire [2:0] rules_3_io_Chan1_out_2_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_3_io_Chan1_out_2_Data; // @[system.scala 76:16]
  wire [2:0] rules_3_io_Chan2_in_0_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_3_io_Chan2_in_0_Data; // @[system.scala 76:16]
  wire [2:0] rules_3_io_Chan2_in_1_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_3_io_Chan2_in_1_Data; // @[system.scala 76:16]
  wire [2:0] rules_3_io_Chan2_in_2_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_3_io_Chan2_in_2_Data; // @[system.scala 76:16]
  wire [2:0] rules_3_io_Chan2_out_0_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_3_io_Chan2_out_0_Data; // @[system.scala 76:16]
  wire [2:0] rules_3_io_Chan2_out_1_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_3_io_Chan2_out_1_Data; // @[system.scala 76:16]
  wire [2:0] rules_3_io_Chan2_out_2_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_3_io_Chan2_out_2_Data; // @[system.scala 76:16]
  wire [2:0] rules_3_io_Chan3_in_0_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_3_io_Chan3_in_0_Data; // @[system.scala 76:16]
  wire [2:0] rules_3_io_Chan3_in_1_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_3_io_Chan3_in_1_Data; // @[system.scala 76:16]
  wire [2:0] rules_3_io_Chan3_in_2_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_3_io_Chan3_in_2_Data; // @[system.scala 76:16]
  wire [2:0] rules_3_io_Chan3_out_0_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_3_io_Chan3_out_0_Data; // @[system.scala 76:16]
  wire [2:0] rules_3_io_Chan3_out_1_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_3_io_Chan3_out_1_Data; // @[system.scala 76:16]
  wire [2:0] rules_3_io_Chan3_out_2_Cmd; // @[system.scala 76:16]
  wire [1:0] rules_3_io_Chan3_out_2_Data; // @[system.scala 76:16]
  wire  rules_3_io_InvSet_in_0; // @[system.scala 76:16]
  wire  rules_3_io_InvSet_in_1; // @[system.scala 76:16]
  wire  rules_3_io_InvSet_in_2; // @[system.scala 76:16]
  wire  rules_3_io_InvSet_out_0; // @[system.scala 76:16]
  wire  rules_3_io_InvSet_out_1; // @[system.scala 76:16]
  wire  rules_3_io_InvSet_out_2; // @[system.scala 76:16]
  wire  rules_3_io_ShrSet_in_0; // @[system.scala 76:16]
  wire  rules_3_io_ShrSet_in_1; // @[system.scala 76:16]
  wire  rules_3_io_ShrSet_in_2; // @[system.scala 76:16]
  wire  rules_3_io_ShrSet_out_0; // @[system.scala 76:16]
  wire  rules_3_io_ShrSet_out_1; // @[system.scala 76:16]
  wire  rules_3_io_ShrSet_out_2; // @[system.scala 76:16]
  wire  rules_3_io_ExGntd_in; // @[system.scala 76:16]
  wire  rules_3_io_ExGntd_out; // @[system.scala 76:16]
  wire [2:0] rules_3_io_CurCmd_in; // @[system.scala 76:16]
  wire [2:0] rules_3_io_CurCmd_out; // @[system.scala 76:16]
  wire [1:0] rules_3_io_CurPtr_in; // @[system.scala 76:16]
  wire [1:0] rules_3_io_CurPtr_out; // @[system.scala 76:16]
  wire [1:0] rules_3_io_MemData_in; // @[system.scala 76:16]
  wire [1:0] rules_3_io_MemData_out; // @[system.scala 76:16]
  wire [1:0] rules_3_io_AuxData_in; // @[system.scala 76:16]
  wire [1:0] rules_3_io_AuxData_out; // @[system.scala 76:16]
  wire  rules_4_io_en_r; // @[system.scala 80:16]
  wire [1:0] rules_4_io_Cache_in_0_State; // @[system.scala 80:16]
  wire [1:0] rules_4_io_Cache_in_0_Data; // @[system.scala 80:16]
  wire [1:0] rules_4_io_Cache_in_1_State; // @[system.scala 80:16]
  wire [1:0] rules_4_io_Cache_in_1_Data; // @[system.scala 80:16]
  wire [1:0] rules_4_io_Cache_in_2_State; // @[system.scala 80:16]
  wire [1:0] rules_4_io_Cache_in_2_Data; // @[system.scala 80:16]
  wire [1:0] rules_4_io_Cache_out_0_State; // @[system.scala 80:16]
  wire [1:0] rules_4_io_Cache_out_0_Data; // @[system.scala 80:16]
  wire [1:0] rules_4_io_Cache_out_1_State; // @[system.scala 80:16]
  wire [1:0] rules_4_io_Cache_out_1_Data; // @[system.scala 80:16]
  wire [1:0] rules_4_io_Cache_out_2_State; // @[system.scala 80:16]
  wire [1:0] rules_4_io_Cache_out_2_Data; // @[system.scala 80:16]
  wire [2:0] rules_4_io_Chan1_in_0_Cmd; // @[system.scala 80:16]
  wire [1:0] rules_4_io_Chan1_in_0_Data; // @[system.scala 80:16]
  wire [2:0] rules_4_io_Chan1_in_1_Cmd; // @[system.scala 80:16]
  wire [1:0] rules_4_io_Chan1_in_1_Data; // @[system.scala 80:16]
  wire [2:0] rules_4_io_Chan1_in_2_Cmd; // @[system.scala 80:16]
  wire [1:0] rules_4_io_Chan1_in_2_Data; // @[system.scala 80:16]
  wire [2:0] rules_4_io_Chan1_out_0_Cmd; // @[system.scala 80:16]
  wire [1:0] rules_4_io_Chan1_out_0_Data; // @[system.scala 80:16]
  wire [2:0] rules_4_io_Chan1_out_1_Cmd; // @[system.scala 80:16]
  wire [1:0] rules_4_io_Chan1_out_1_Data; // @[system.scala 80:16]
  wire [2:0] rules_4_io_Chan1_out_2_Cmd; // @[system.scala 80:16]
  wire [1:0] rules_4_io_Chan1_out_2_Data; // @[system.scala 80:16]
  wire [2:0] rules_4_io_Chan2_in_0_Cmd; // @[system.scala 80:16]
  wire [1:0] rules_4_io_Chan2_in_0_Data; // @[system.scala 80:16]
  wire [2:0] rules_4_io_Chan2_in_1_Cmd; // @[system.scala 80:16]
  wire [1:0] rules_4_io_Chan2_in_1_Data; // @[system.scala 80:16]
  wire [2:0] rules_4_io_Chan2_in_2_Cmd; // @[system.scala 80:16]
  wire [1:0] rules_4_io_Chan2_in_2_Data; // @[system.scala 80:16]
  wire [2:0] rules_4_io_Chan2_out_0_Cmd; // @[system.scala 80:16]
  wire [1:0] rules_4_io_Chan2_out_0_Data; // @[system.scala 80:16]
  wire [2:0] rules_4_io_Chan2_out_1_Cmd; // @[system.scala 80:16]
  wire [1:0] rules_4_io_Chan2_out_1_Data; // @[system.scala 80:16]
  wire [2:0] rules_4_io_Chan2_out_2_Cmd; // @[system.scala 80:16]
  wire [1:0] rules_4_io_Chan2_out_2_Data; // @[system.scala 80:16]
  wire [2:0] rules_4_io_Chan3_in_0_Cmd; // @[system.scala 80:16]
  wire [1:0] rules_4_io_Chan3_in_0_Data; // @[system.scala 80:16]
  wire [2:0] rules_4_io_Chan3_in_1_Cmd; // @[system.scala 80:16]
  wire [1:0] rules_4_io_Chan3_in_1_Data; // @[system.scala 80:16]
  wire [2:0] rules_4_io_Chan3_in_2_Cmd; // @[system.scala 80:16]
  wire [1:0] rules_4_io_Chan3_in_2_Data; // @[system.scala 80:16]
  wire [2:0] rules_4_io_Chan3_out_0_Cmd; // @[system.scala 80:16]
  wire [1:0] rules_4_io_Chan3_out_0_Data; // @[system.scala 80:16]
  wire [2:0] rules_4_io_Chan3_out_1_Cmd; // @[system.scala 80:16]
  wire [1:0] rules_4_io_Chan3_out_1_Data; // @[system.scala 80:16]
  wire [2:0] rules_4_io_Chan3_out_2_Cmd; // @[system.scala 80:16]
  wire [1:0] rules_4_io_Chan3_out_2_Data; // @[system.scala 80:16]
  wire  rules_4_io_InvSet_in_0; // @[system.scala 80:16]
  wire  rules_4_io_InvSet_in_1; // @[system.scala 80:16]
  wire  rules_4_io_InvSet_in_2; // @[system.scala 80:16]
  wire  rules_4_io_InvSet_out_0; // @[system.scala 80:16]
  wire  rules_4_io_InvSet_out_1; // @[system.scala 80:16]
  wire  rules_4_io_InvSet_out_2; // @[system.scala 80:16]
  wire  rules_4_io_ShrSet_in_0; // @[system.scala 80:16]
  wire  rules_4_io_ShrSet_in_1; // @[system.scala 80:16]
  wire  rules_4_io_ShrSet_in_2; // @[system.scala 80:16]
  wire  rules_4_io_ShrSet_out_0; // @[system.scala 80:16]
  wire  rules_4_io_ShrSet_out_1; // @[system.scala 80:16]
  wire  rules_4_io_ShrSet_out_2; // @[system.scala 80:16]
  wire  rules_4_io_ExGntd_in; // @[system.scala 80:16]
  wire  rules_4_io_ExGntd_out; // @[system.scala 80:16]
  wire [2:0] rules_4_io_CurCmd_in; // @[system.scala 80:16]
  wire [2:0] rules_4_io_CurCmd_out; // @[system.scala 80:16]
  wire [1:0] rules_4_io_CurPtr_in; // @[system.scala 80:16]
  wire [1:0] rules_4_io_CurPtr_out; // @[system.scala 80:16]
  wire [1:0] rules_4_io_MemData_in; // @[system.scala 80:16]
  wire [1:0] rules_4_io_MemData_out; // @[system.scala 80:16]
  wire [1:0] rules_4_io_AuxData_in; // @[system.scala 80:16]
  wire [1:0] rules_4_io_AuxData_out; // @[system.scala 80:16]
  wire  rules_5_io_en_r; // @[system.scala 80:16]
  wire [1:0] rules_5_io_Cache_in_0_State; // @[system.scala 80:16]
  wire [1:0] rules_5_io_Cache_in_0_Data; // @[system.scala 80:16]
  wire [1:0] rules_5_io_Cache_in_1_State; // @[system.scala 80:16]
  wire [1:0] rules_5_io_Cache_in_1_Data; // @[system.scala 80:16]
  wire [1:0] rules_5_io_Cache_in_2_State; // @[system.scala 80:16]
  wire [1:0] rules_5_io_Cache_in_2_Data; // @[system.scala 80:16]
  wire [1:0] rules_5_io_Cache_out_0_State; // @[system.scala 80:16]
  wire [1:0] rules_5_io_Cache_out_0_Data; // @[system.scala 80:16]
  wire [1:0] rules_5_io_Cache_out_1_State; // @[system.scala 80:16]
  wire [1:0] rules_5_io_Cache_out_1_Data; // @[system.scala 80:16]
  wire [1:0] rules_5_io_Cache_out_2_State; // @[system.scala 80:16]
  wire [1:0] rules_5_io_Cache_out_2_Data; // @[system.scala 80:16]
  wire [2:0] rules_5_io_Chan1_in_0_Cmd; // @[system.scala 80:16]
  wire [1:0] rules_5_io_Chan1_in_0_Data; // @[system.scala 80:16]
  wire [2:0] rules_5_io_Chan1_in_1_Cmd; // @[system.scala 80:16]
  wire [1:0] rules_5_io_Chan1_in_1_Data; // @[system.scala 80:16]
  wire [2:0] rules_5_io_Chan1_in_2_Cmd; // @[system.scala 80:16]
  wire [1:0] rules_5_io_Chan1_in_2_Data; // @[system.scala 80:16]
  wire [2:0] rules_5_io_Chan1_out_0_Cmd; // @[system.scala 80:16]
  wire [1:0] rules_5_io_Chan1_out_0_Data; // @[system.scala 80:16]
  wire [2:0] rules_5_io_Chan1_out_1_Cmd; // @[system.scala 80:16]
  wire [1:0] rules_5_io_Chan1_out_1_Data; // @[system.scala 80:16]
  wire [2:0] rules_5_io_Chan1_out_2_Cmd; // @[system.scala 80:16]
  wire [1:0] rules_5_io_Chan1_out_2_Data; // @[system.scala 80:16]
  wire [2:0] rules_5_io_Chan2_in_0_Cmd; // @[system.scala 80:16]
  wire [1:0] rules_5_io_Chan2_in_0_Data; // @[system.scala 80:16]
  wire [2:0] rules_5_io_Chan2_in_1_Cmd; // @[system.scala 80:16]
  wire [1:0] rules_5_io_Chan2_in_1_Data; // @[system.scala 80:16]
  wire [2:0] rules_5_io_Chan2_in_2_Cmd; // @[system.scala 80:16]
  wire [1:0] rules_5_io_Chan2_in_2_Data; // @[system.scala 80:16]
  wire [2:0] rules_5_io_Chan2_out_0_Cmd; // @[system.scala 80:16]
  wire [1:0] rules_5_io_Chan2_out_0_Data; // @[system.scala 80:16]
  wire [2:0] rules_5_io_Chan2_out_1_Cmd; // @[system.scala 80:16]
  wire [1:0] rules_5_io_Chan2_out_1_Data; // @[system.scala 80:16]
  wire [2:0] rules_5_io_Chan2_out_2_Cmd; // @[system.scala 80:16]
  wire [1:0] rules_5_io_Chan2_out_2_Data; // @[system.scala 80:16]
  wire [2:0] rules_5_io_Chan3_in_0_Cmd; // @[system.scala 80:16]
  wire [1:0] rules_5_io_Chan3_in_0_Data; // @[system.scala 80:16]
  wire [2:0] rules_5_io_Chan3_in_1_Cmd; // @[system.scala 80:16]
  wire [1:0] rules_5_io_Chan3_in_1_Data; // @[system.scala 80:16]
  wire [2:0] rules_5_io_Chan3_in_2_Cmd; // @[system.scala 80:16]
  wire [1:0] rules_5_io_Chan3_in_2_Data; // @[system.scala 80:16]
  wire [2:0] rules_5_io_Chan3_out_0_Cmd; // @[system.scala 80:16]
  wire [1:0] rules_5_io_Chan3_out_0_Data; // @[system.scala 80:16]
  wire [2:0] rules_5_io_Chan3_out_1_Cmd; // @[system.scala 80:16]
  wire [1:0] rules_5_io_Chan3_out_1_Data; // @[system.scala 80:16]
  wire [2:0] rules_5_io_Chan3_out_2_Cmd; // @[system.scala 80:16]
  wire [1:0] rules_5_io_Chan3_out_2_Data; // @[system.scala 80:16]
  wire  rules_5_io_InvSet_in_0; // @[system.scala 80:16]
  wire  rules_5_io_InvSet_in_1; // @[system.scala 80:16]
  wire  rules_5_io_InvSet_in_2; // @[system.scala 80:16]
  wire  rules_5_io_InvSet_out_0; // @[system.scala 80:16]
  wire  rules_5_io_InvSet_out_1; // @[system.scala 80:16]
  wire  rules_5_io_InvSet_out_2; // @[system.scala 80:16]
  wire  rules_5_io_ShrSet_in_0; // @[system.scala 80:16]
  wire  rules_5_io_ShrSet_in_1; // @[system.scala 80:16]
  wire  rules_5_io_ShrSet_in_2; // @[system.scala 80:16]
  wire  rules_5_io_ShrSet_out_0; // @[system.scala 80:16]
  wire  rules_5_io_ShrSet_out_1; // @[system.scala 80:16]
  wire  rules_5_io_ShrSet_out_2; // @[system.scala 80:16]
  wire  rules_5_io_ExGntd_in; // @[system.scala 80:16]
  wire  rules_5_io_ExGntd_out; // @[system.scala 80:16]
  wire [2:0] rules_5_io_CurCmd_in; // @[system.scala 80:16]
  wire [2:0] rules_5_io_CurCmd_out; // @[system.scala 80:16]
  wire [1:0] rules_5_io_CurPtr_in; // @[system.scala 80:16]
  wire [1:0] rules_5_io_CurPtr_out; // @[system.scala 80:16]
  wire [1:0] rules_5_io_MemData_in; // @[system.scala 80:16]
  wire [1:0] rules_5_io_MemData_out; // @[system.scala 80:16]
  wire [1:0] rules_5_io_AuxData_in; // @[system.scala 80:16]
  wire [1:0] rules_5_io_AuxData_out; // @[system.scala 80:16]
  wire  rules_6_io_en_r; // @[system.scala 83:16]
  wire [1:0] rules_6_io_Cache_in_0_State; // @[system.scala 83:16]
  wire [1:0] rules_6_io_Cache_in_0_Data; // @[system.scala 83:16]
  wire [1:0] rules_6_io_Cache_in_1_State; // @[system.scala 83:16]
  wire [1:0] rules_6_io_Cache_in_1_Data; // @[system.scala 83:16]
  wire [1:0] rules_6_io_Cache_in_2_State; // @[system.scala 83:16]
  wire [1:0] rules_6_io_Cache_in_2_Data; // @[system.scala 83:16]
  wire [1:0] rules_6_io_Cache_out_0_State; // @[system.scala 83:16]
  wire [1:0] rules_6_io_Cache_out_0_Data; // @[system.scala 83:16]
  wire [1:0] rules_6_io_Cache_out_1_State; // @[system.scala 83:16]
  wire [1:0] rules_6_io_Cache_out_1_Data; // @[system.scala 83:16]
  wire [1:0] rules_6_io_Cache_out_2_State; // @[system.scala 83:16]
  wire [1:0] rules_6_io_Cache_out_2_Data; // @[system.scala 83:16]
  wire [2:0] rules_6_io_Chan1_in_0_Cmd; // @[system.scala 83:16]
  wire [1:0] rules_6_io_Chan1_in_0_Data; // @[system.scala 83:16]
  wire [2:0] rules_6_io_Chan1_in_1_Cmd; // @[system.scala 83:16]
  wire [1:0] rules_6_io_Chan1_in_1_Data; // @[system.scala 83:16]
  wire [2:0] rules_6_io_Chan1_in_2_Cmd; // @[system.scala 83:16]
  wire [1:0] rules_6_io_Chan1_in_2_Data; // @[system.scala 83:16]
  wire [2:0] rules_6_io_Chan1_out_0_Cmd; // @[system.scala 83:16]
  wire [1:0] rules_6_io_Chan1_out_0_Data; // @[system.scala 83:16]
  wire [2:0] rules_6_io_Chan1_out_1_Cmd; // @[system.scala 83:16]
  wire [1:0] rules_6_io_Chan1_out_1_Data; // @[system.scala 83:16]
  wire [2:0] rules_6_io_Chan1_out_2_Cmd; // @[system.scala 83:16]
  wire [1:0] rules_6_io_Chan1_out_2_Data; // @[system.scala 83:16]
  wire [2:0] rules_6_io_Chan2_in_0_Cmd; // @[system.scala 83:16]
  wire [1:0] rules_6_io_Chan2_in_0_Data; // @[system.scala 83:16]
  wire [2:0] rules_6_io_Chan2_in_1_Cmd; // @[system.scala 83:16]
  wire [1:0] rules_6_io_Chan2_in_1_Data; // @[system.scala 83:16]
  wire [2:0] rules_6_io_Chan2_in_2_Cmd; // @[system.scala 83:16]
  wire [1:0] rules_6_io_Chan2_in_2_Data; // @[system.scala 83:16]
  wire [2:0] rules_6_io_Chan2_out_0_Cmd; // @[system.scala 83:16]
  wire [1:0] rules_6_io_Chan2_out_0_Data; // @[system.scala 83:16]
  wire [2:0] rules_6_io_Chan2_out_1_Cmd; // @[system.scala 83:16]
  wire [1:0] rules_6_io_Chan2_out_1_Data; // @[system.scala 83:16]
  wire [2:0] rules_6_io_Chan2_out_2_Cmd; // @[system.scala 83:16]
  wire [1:0] rules_6_io_Chan2_out_2_Data; // @[system.scala 83:16]
  wire [2:0] rules_6_io_Chan3_in_0_Cmd; // @[system.scala 83:16]
  wire [1:0] rules_6_io_Chan3_in_0_Data; // @[system.scala 83:16]
  wire [2:0] rules_6_io_Chan3_in_1_Cmd; // @[system.scala 83:16]
  wire [1:0] rules_6_io_Chan3_in_1_Data; // @[system.scala 83:16]
  wire [2:0] rules_6_io_Chan3_in_2_Cmd; // @[system.scala 83:16]
  wire [1:0] rules_6_io_Chan3_in_2_Data; // @[system.scala 83:16]
  wire [2:0] rules_6_io_Chan3_out_0_Cmd; // @[system.scala 83:16]
  wire [1:0] rules_6_io_Chan3_out_0_Data; // @[system.scala 83:16]
  wire [2:0] rules_6_io_Chan3_out_1_Cmd; // @[system.scala 83:16]
  wire [1:0] rules_6_io_Chan3_out_1_Data; // @[system.scala 83:16]
  wire [2:0] rules_6_io_Chan3_out_2_Cmd; // @[system.scala 83:16]
  wire [1:0] rules_6_io_Chan3_out_2_Data; // @[system.scala 83:16]
  wire  rules_6_io_InvSet_in_0; // @[system.scala 83:16]
  wire  rules_6_io_InvSet_in_1; // @[system.scala 83:16]
  wire  rules_6_io_InvSet_in_2; // @[system.scala 83:16]
  wire  rules_6_io_InvSet_out_0; // @[system.scala 83:16]
  wire  rules_6_io_InvSet_out_1; // @[system.scala 83:16]
  wire  rules_6_io_InvSet_out_2; // @[system.scala 83:16]
  wire  rules_6_io_ShrSet_in_0; // @[system.scala 83:16]
  wire  rules_6_io_ShrSet_in_1; // @[system.scala 83:16]
  wire  rules_6_io_ShrSet_in_2; // @[system.scala 83:16]
  wire  rules_6_io_ShrSet_out_0; // @[system.scala 83:16]
  wire  rules_6_io_ShrSet_out_1; // @[system.scala 83:16]
  wire  rules_6_io_ShrSet_out_2; // @[system.scala 83:16]
  wire  rules_6_io_ExGntd_in; // @[system.scala 83:16]
  wire  rules_6_io_ExGntd_out; // @[system.scala 83:16]
  wire [2:0] rules_6_io_CurCmd_in; // @[system.scala 83:16]
  wire [2:0] rules_6_io_CurCmd_out; // @[system.scala 83:16]
  wire [1:0] rules_6_io_CurPtr_in; // @[system.scala 83:16]
  wire [1:0] rules_6_io_CurPtr_out; // @[system.scala 83:16]
  wire [1:0] rules_6_io_MemData_in; // @[system.scala 83:16]
  wire [1:0] rules_6_io_MemData_out; // @[system.scala 83:16]
  wire [1:0] rules_6_io_AuxData_in; // @[system.scala 83:16]
  wire [1:0] rules_6_io_AuxData_out; // @[system.scala 83:16]
  wire  rules_7_io_en_r; // @[system.scala 83:16]
  wire [1:0] rules_7_io_Cache_in_0_State; // @[system.scala 83:16]
  wire [1:0] rules_7_io_Cache_in_0_Data; // @[system.scala 83:16]
  wire [1:0] rules_7_io_Cache_in_1_State; // @[system.scala 83:16]
  wire [1:0] rules_7_io_Cache_in_1_Data; // @[system.scala 83:16]
  wire [1:0] rules_7_io_Cache_in_2_State; // @[system.scala 83:16]
  wire [1:0] rules_7_io_Cache_in_2_Data; // @[system.scala 83:16]
  wire [1:0] rules_7_io_Cache_out_0_State; // @[system.scala 83:16]
  wire [1:0] rules_7_io_Cache_out_0_Data; // @[system.scala 83:16]
  wire [1:0] rules_7_io_Cache_out_1_State; // @[system.scala 83:16]
  wire [1:0] rules_7_io_Cache_out_1_Data; // @[system.scala 83:16]
  wire [1:0] rules_7_io_Cache_out_2_State; // @[system.scala 83:16]
  wire [1:0] rules_7_io_Cache_out_2_Data; // @[system.scala 83:16]
  wire [2:0] rules_7_io_Chan1_in_0_Cmd; // @[system.scala 83:16]
  wire [1:0] rules_7_io_Chan1_in_0_Data; // @[system.scala 83:16]
  wire [2:0] rules_7_io_Chan1_in_1_Cmd; // @[system.scala 83:16]
  wire [1:0] rules_7_io_Chan1_in_1_Data; // @[system.scala 83:16]
  wire [2:0] rules_7_io_Chan1_in_2_Cmd; // @[system.scala 83:16]
  wire [1:0] rules_7_io_Chan1_in_2_Data; // @[system.scala 83:16]
  wire [2:0] rules_7_io_Chan1_out_0_Cmd; // @[system.scala 83:16]
  wire [1:0] rules_7_io_Chan1_out_0_Data; // @[system.scala 83:16]
  wire [2:0] rules_7_io_Chan1_out_1_Cmd; // @[system.scala 83:16]
  wire [1:0] rules_7_io_Chan1_out_1_Data; // @[system.scala 83:16]
  wire [2:0] rules_7_io_Chan1_out_2_Cmd; // @[system.scala 83:16]
  wire [1:0] rules_7_io_Chan1_out_2_Data; // @[system.scala 83:16]
  wire [2:0] rules_7_io_Chan2_in_0_Cmd; // @[system.scala 83:16]
  wire [1:0] rules_7_io_Chan2_in_0_Data; // @[system.scala 83:16]
  wire [2:0] rules_7_io_Chan2_in_1_Cmd; // @[system.scala 83:16]
  wire [1:0] rules_7_io_Chan2_in_1_Data; // @[system.scala 83:16]
  wire [2:0] rules_7_io_Chan2_in_2_Cmd; // @[system.scala 83:16]
  wire [1:0] rules_7_io_Chan2_in_2_Data; // @[system.scala 83:16]
  wire [2:0] rules_7_io_Chan2_out_0_Cmd; // @[system.scala 83:16]
  wire [1:0] rules_7_io_Chan2_out_0_Data; // @[system.scala 83:16]
  wire [2:0] rules_7_io_Chan2_out_1_Cmd; // @[system.scala 83:16]
  wire [1:0] rules_7_io_Chan2_out_1_Data; // @[system.scala 83:16]
  wire [2:0] rules_7_io_Chan2_out_2_Cmd; // @[system.scala 83:16]
  wire [1:0] rules_7_io_Chan2_out_2_Data; // @[system.scala 83:16]
  wire [2:0] rules_7_io_Chan3_in_0_Cmd; // @[system.scala 83:16]
  wire [1:0] rules_7_io_Chan3_in_0_Data; // @[system.scala 83:16]
  wire [2:0] rules_7_io_Chan3_in_1_Cmd; // @[system.scala 83:16]
  wire [1:0] rules_7_io_Chan3_in_1_Data; // @[system.scala 83:16]
  wire [2:0] rules_7_io_Chan3_in_2_Cmd; // @[system.scala 83:16]
  wire [1:0] rules_7_io_Chan3_in_2_Data; // @[system.scala 83:16]
  wire [2:0] rules_7_io_Chan3_out_0_Cmd; // @[system.scala 83:16]
  wire [1:0] rules_7_io_Chan3_out_0_Data; // @[system.scala 83:16]
  wire [2:0] rules_7_io_Chan3_out_1_Cmd; // @[system.scala 83:16]
  wire [1:0] rules_7_io_Chan3_out_1_Data; // @[system.scala 83:16]
  wire [2:0] rules_7_io_Chan3_out_2_Cmd; // @[system.scala 83:16]
  wire [1:0] rules_7_io_Chan3_out_2_Data; // @[system.scala 83:16]
  wire  rules_7_io_InvSet_in_0; // @[system.scala 83:16]
  wire  rules_7_io_InvSet_in_1; // @[system.scala 83:16]
  wire  rules_7_io_InvSet_in_2; // @[system.scala 83:16]
  wire  rules_7_io_InvSet_out_0; // @[system.scala 83:16]
  wire  rules_7_io_InvSet_out_1; // @[system.scala 83:16]
  wire  rules_7_io_InvSet_out_2; // @[system.scala 83:16]
  wire  rules_7_io_ShrSet_in_0; // @[system.scala 83:16]
  wire  rules_7_io_ShrSet_in_1; // @[system.scala 83:16]
  wire  rules_7_io_ShrSet_in_2; // @[system.scala 83:16]
  wire  rules_7_io_ShrSet_out_0; // @[system.scala 83:16]
  wire  rules_7_io_ShrSet_out_1; // @[system.scala 83:16]
  wire  rules_7_io_ShrSet_out_2; // @[system.scala 83:16]
  wire  rules_7_io_ExGntd_in; // @[system.scala 83:16]
  wire  rules_7_io_ExGntd_out; // @[system.scala 83:16]
  wire [2:0] rules_7_io_CurCmd_in; // @[system.scala 83:16]
  wire [2:0] rules_7_io_CurCmd_out; // @[system.scala 83:16]
  wire [1:0] rules_7_io_CurPtr_in; // @[system.scala 83:16]
  wire [1:0] rules_7_io_CurPtr_out; // @[system.scala 83:16]
  wire [1:0] rules_7_io_MemData_in; // @[system.scala 83:16]
  wire [1:0] rules_7_io_MemData_out; // @[system.scala 83:16]
  wire [1:0] rules_7_io_AuxData_in; // @[system.scala 83:16]
  wire [1:0] rules_7_io_AuxData_out; // @[system.scala 83:16]
  wire  rules_8_io_en_r; // @[system.scala 86:16]
  wire [1:0] rules_8_io_Cache_in_0_State; // @[system.scala 86:16]
  wire [1:0] rules_8_io_Cache_in_0_Data; // @[system.scala 86:16]
  wire [1:0] rules_8_io_Cache_in_1_State; // @[system.scala 86:16]
  wire [1:0] rules_8_io_Cache_in_1_Data; // @[system.scala 86:16]
  wire [1:0] rules_8_io_Cache_in_2_State; // @[system.scala 86:16]
  wire [1:0] rules_8_io_Cache_in_2_Data; // @[system.scala 86:16]
  wire [1:0] rules_8_io_Cache_out_0_State; // @[system.scala 86:16]
  wire [1:0] rules_8_io_Cache_out_0_Data; // @[system.scala 86:16]
  wire [1:0] rules_8_io_Cache_out_1_State; // @[system.scala 86:16]
  wire [1:0] rules_8_io_Cache_out_1_Data; // @[system.scala 86:16]
  wire [1:0] rules_8_io_Cache_out_2_State; // @[system.scala 86:16]
  wire [1:0] rules_8_io_Cache_out_2_Data; // @[system.scala 86:16]
  wire [2:0] rules_8_io_Chan1_in_0_Cmd; // @[system.scala 86:16]
  wire [1:0] rules_8_io_Chan1_in_0_Data; // @[system.scala 86:16]
  wire [2:0] rules_8_io_Chan1_in_1_Cmd; // @[system.scala 86:16]
  wire [1:0] rules_8_io_Chan1_in_1_Data; // @[system.scala 86:16]
  wire [2:0] rules_8_io_Chan1_in_2_Cmd; // @[system.scala 86:16]
  wire [1:0] rules_8_io_Chan1_in_2_Data; // @[system.scala 86:16]
  wire [2:0] rules_8_io_Chan1_out_0_Cmd; // @[system.scala 86:16]
  wire [1:0] rules_8_io_Chan1_out_0_Data; // @[system.scala 86:16]
  wire [2:0] rules_8_io_Chan1_out_1_Cmd; // @[system.scala 86:16]
  wire [1:0] rules_8_io_Chan1_out_1_Data; // @[system.scala 86:16]
  wire [2:0] rules_8_io_Chan1_out_2_Cmd; // @[system.scala 86:16]
  wire [1:0] rules_8_io_Chan1_out_2_Data; // @[system.scala 86:16]
  wire [2:0] rules_8_io_Chan2_in_0_Cmd; // @[system.scala 86:16]
  wire [1:0] rules_8_io_Chan2_in_0_Data; // @[system.scala 86:16]
  wire [2:0] rules_8_io_Chan2_in_1_Cmd; // @[system.scala 86:16]
  wire [1:0] rules_8_io_Chan2_in_1_Data; // @[system.scala 86:16]
  wire [2:0] rules_8_io_Chan2_in_2_Cmd; // @[system.scala 86:16]
  wire [1:0] rules_8_io_Chan2_in_2_Data; // @[system.scala 86:16]
  wire [2:0] rules_8_io_Chan2_out_0_Cmd; // @[system.scala 86:16]
  wire [1:0] rules_8_io_Chan2_out_0_Data; // @[system.scala 86:16]
  wire [2:0] rules_8_io_Chan2_out_1_Cmd; // @[system.scala 86:16]
  wire [1:0] rules_8_io_Chan2_out_1_Data; // @[system.scala 86:16]
  wire [2:0] rules_8_io_Chan2_out_2_Cmd; // @[system.scala 86:16]
  wire [1:0] rules_8_io_Chan2_out_2_Data; // @[system.scala 86:16]
  wire [2:0] rules_8_io_Chan3_in_0_Cmd; // @[system.scala 86:16]
  wire [1:0] rules_8_io_Chan3_in_0_Data; // @[system.scala 86:16]
  wire [2:0] rules_8_io_Chan3_in_1_Cmd; // @[system.scala 86:16]
  wire [1:0] rules_8_io_Chan3_in_1_Data; // @[system.scala 86:16]
  wire [2:0] rules_8_io_Chan3_in_2_Cmd; // @[system.scala 86:16]
  wire [1:0] rules_8_io_Chan3_in_2_Data; // @[system.scala 86:16]
  wire [2:0] rules_8_io_Chan3_out_0_Cmd; // @[system.scala 86:16]
  wire [1:0] rules_8_io_Chan3_out_0_Data; // @[system.scala 86:16]
  wire [2:0] rules_8_io_Chan3_out_1_Cmd; // @[system.scala 86:16]
  wire [1:0] rules_8_io_Chan3_out_1_Data; // @[system.scala 86:16]
  wire [2:0] rules_8_io_Chan3_out_2_Cmd; // @[system.scala 86:16]
  wire [1:0] rules_8_io_Chan3_out_2_Data; // @[system.scala 86:16]
  wire  rules_8_io_InvSet_in_0; // @[system.scala 86:16]
  wire  rules_8_io_InvSet_in_1; // @[system.scala 86:16]
  wire  rules_8_io_InvSet_in_2; // @[system.scala 86:16]
  wire  rules_8_io_InvSet_out_0; // @[system.scala 86:16]
  wire  rules_8_io_InvSet_out_1; // @[system.scala 86:16]
  wire  rules_8_io_InvSet_out_2; // @[system.scala 86:16]
  wire  rules_8_io_ShrSet_in_0; // @[system.scala 86:16]
  wire  rules_8_io_ShrSet_in_1; // @[system.scala 86:16]
  wire  rules_8_io_ShrSet_in_2; // @[system.scala 86:16]
  wire  rules_8_io_ShrSet_out_0; // @[system.scala 86:16]
  wire  rules_8_io_ShrSet_out_1; // @[system.scala 86:16]
  wire  rules_8_io_ShrSet_out_2; // @[system.scala 86:16]
  wire  rules_8_io_ExGntd_in; // @[system.scala 86:16]
  wire  rules_8_io_ExGntd_out; // @[system.scala 86:16]
  wire [2:0] rules_8_io_CurCmd_in; // @[system.scala 86:16]
  wire [2:0] rules_8_io_CurCmd_out; // @[system.scala 86:16]
  wire [1:0] rules_8_io_CurPtr_in; // @[system.scala 86:16]
  wire [1:0] rules_8_io_CurPtr_out; // @[system.scala 86:16]
  wire [1:0] rules_8_io_MemData_in; // @[system.scala 86:16]
  wire [1:0] rules_8_io_MemData_out; // @[system.scala 86:16]
  wire [1:0] rules_8_io_AuxData_in; // @[system.scala 86:16]
  wire [1:0] rules_8_io_AuxData_out; // @[system.scala 86:16]
  wire  rules_9_io_en_r; // @[system.scala 86:16]
  wire [1:0] rules_9_io_Cache_in_0_State; // @[system.scala 86:16]
  wire [1:0] rules_9_io_Cache_in_0_Data; // @[system.scala 86:16]
  wire [1:0] rules_9_io_Cache_in_1_State; // @[system.scala 86:16]
  wire [1:0] rules_9_io_Cache_in_1_Data; // @[system.scala 86:16]
  wire [1:0] rules_9_io_Cache_in_2_State; // @[system.scala 86:16]
  wire [1:0] rules_9_io_Cache_in_2_Data; // @[system.scala 86:16]
  wire [1:0] rules_9_io_Cache_out_0_State; // @[system.scala 86:16]
  wire [1:0] rules_9_io_Cache_out_0_Data; // @[system.scala 86:16]
  wire [1:0] rules_9_io_Cache_out_1_State; // @[system.scala 86:16]
  wire [1:0] rules_9_io_Cache_out_1_Data; // @[system.scala 86:16]
  wire [1:0] rules_9_io_Cache_out_2_State; // @[system.scala 86:16]
  wire [1:0] rules_9_io_Cache_out_2_Data; // @[system.scala 86:16]
  wire [2:0] rules_9_io_Chan1_in_0_Cmd; // @[system.scala 86:16]
  wire [1:0] rules_9_io_Chan1_in_0_Data; // @[system.scala 86:16]
  wire [2:0] rules_9_io_Chan1_in_1_Cmd; // @[system.scala 86:16]
  wire [1:0] rules_9_io_Chan1_in_1_Data; // @[system.scala 86:16]
  wire [2:0] rules_9_io_Chan1_in_2_Cmd; // @[system.scala 86:16]
  wire [1:0] rules_9_io_Chan1_in_2_Data; // @[system.scala 86:16]
  wire [2:0] rules_9_io_Chan1_out_0_Cmd; // @[system.scala 86:16]
  wire [1:0] rules_9_io_Chan1_out_0_Data; // @[system.scala 86:16]
  wire [2:0] rules_9_io_Chan1_out_1_Cmd; // @[system.scala 86:16]
  wire [1:0] rules_9_io_Chan1_out_1_Data; // @[system.scala 86:16]
  wire [2:0] rules_9_io_Chan1_out_2_Cmd; // @[system.scala 86:16]
  wire [1:0] rules_9_io_Chan1_out_2_Data; // @[system.scala 86:16]
  wire [2:0] rules_9_io_Chan2_in_0_Cmd; // @[system.scala 86:16]
  wire [1:0] rules_9_io_Chan2_in_0_Data; // @[system.scala 86:16]
  wire [2:0] rules_9_io_Chan2_in_1_Cmd; // @[system.scala 86:16]
  wire [1:0] rules_9_io_Chan2_in_1_Data; // @[system.scala 86:16]
  wire [2:0] rules_9_io_Chan2_in_2_Cmd; // @[system.scala 86:16]
  wire [1:0] rules_9_io_Chan2_in_2_Data; // @[system.scala 86:16]
  wire [2:0] rules_9_io_Chan2_out_0_Cmd; // @[system.scala 86:16]
  wire [1:0] rules_9_io_Chan2_out_0_Data; // @[system.scala 86:16]
  wire [2:0] rules_9_io_Chan2_out_1_Cmd; // @[system.scala 86:16]
  wire [1:0] rules_9_io_Chan2_out_1_Data; // @[system.scala 86:16]
  wire [2:0] rules_9_io_Chan2_out_2_Cmd; // @[system.scala 86:16]
  wire [1:0] rules_9_io_Chan2_out_2_Data; // @[system.scala 86:16]
  wire [2:0] rules_9_io_Chan3_in_0_Cmd; // @[system.scala 86:16]
  wire [1:0] rules_9_io_Chan3_in_0_Data; // @[system.scala 86:16]
  wire [2:0] rules_9_io_Chan3_in_1_Cmd; // @[system.scala 86:16]
  wire [1:0] rules_9_io_Chan3_in_1_Data; // @[system.scala 86:16]
  wire [2:0] rules_9_io_Chan3_in_2_Cmd; // @[system.scala 86:16]
  wire [1:0] rules_9_io_Chan3_in_2_Data; // @[system.scala 86:16]
  wire [2:0] rules_9_io_Chan3_out_0_Cmd; // @[system.scala 86:16]
  wire [1:0] rules_9_io_Chan3_out_0_Data; // @[system.scala 86:16]
  wire [2:0] rules_9_io_Chan3_out_1_Cmd; // @[system.scala 86:16]
  wire [1:0] rules_9_io_Chan3_out_1_Data; // @[system.scala 86:16]
  wire [2:0] rules_9_io_Chan3_out_2_Cmd; // @[system.scala 86:16]
  wire [1:0] rules_9_io_Chan3_out_2_Data; // @[system.scala 86:16]
  wire  rules_9_io_InvSet_in_0; // @[system.scala 86:16]
  wire  rules_9_io_InvSet_in_1; // @[system.scala 86:16]
  wire  rules_9_io_InvSet_in_2; // @[system.scala 86:16]
  wire  rules_9_io_InvSet_out_0; // @[system.scala 86:16]
  wire  rules_9_io_InvSet_out_1; // @[system.scala 86:16]
  wire  rules_9_io_InvSet_out_2; // @[system.scala 86:16]
  wire  rules_9_io_ShrSet_in_0; // @[system.scala 86:16]
  wire  rules_9_io_ShrSet_in_1; // @[system.scala 86:16]
  wire  rules_9_io_ShrSet_in_2; // @[system.scala 86:16]
  wire  rules_9_io_ShrSet_out_0; // @[system.scala 86:16]
  wire  rules_9_io_ShrSet_out_1; // @[system.scala 86:16]
  wire  rules_9_io_ShrSet_out_2; // @[system.scala 86:16]
  wire  rules_9_io_ExGntd_in; // @[system.scala 86:16]
  wire  rules_9_io_ExGntd_out; // @[system.scala 86:16]
  wire [2:0] rules_9_io_CurCmd_in; // @[system.scala 86:16]
  wire [2:0] rules_9_io_CurCmd_out; // @[system.scala 86:16]
  wire [1:0] rules_9_io_CurPtr_in; // @[system.scala 86:16]
  wire [1:0] rules_9_io_CurPtr_out; // @[system.scala 86:16]
  wire [1:0] rules_9_io_MemData_in; // @[system.scala 86:16]
  wire [1:0] rules_9_io_MemData_out; // @[system.scala 86:16]
  wire [1:0] rules_9_io_AuxData_in; // @[system.scala 86:16]
  wire [1:0] rules_9_io_AuxData_out; // @[system.scala 86:16]
  wire  rules_10_io_en_r; // @[system.scala 89:16]
  wire [1:0] rules_10_io_Cache_in_0_State; // @[system.scala 89:16]
  wire [1:0] rules_10_io_Cache_in_0_Data; // @[system.scala 89:16]
  wire [1:0] rules_10_io_Cache_in_1_State; // @[system.scala 89:16]
  wire [1:0] rules_10_io_Cache_in_1_Data; // @[system.scala 89:16]
  wire [1:0] rules_10_io_Cache_in_2_State; // @[system.scala 89:16]
  wire [1:0] rules_10_io_Cache_in_2_Data; // @[system.scala 89:16]
  wire [1:0] rules_10_io_Cache_out_0_State; // @[system.scala 89:16]
  wire [1:0] rules_10_io_Cache_out_0_Data; // @[system.scala 89:16]
  wire [1:0] rules_10_io_Cache_out_1_State; // @[system.scala 89:16]
  wire [1:0] rules_10_io_Cache_out_1_Data; // @[system.scala 89:16]
  wire [1:0] rules_10_io_Cache_out_2_State; // @[system.scala 89:16]
  wire [1:0] rules_10_io_Cache_out_2_Data; // @[system.scala 89:16]
  wire [2:0] rules_10_io_Chan1_in_0_Cmd; // @[system.scala 89:16]
  wire [1:0] rules_10_io_Chan1_in_0_Data; // @[system.scala 89:16]
  wire [2:0] rules_10_io_Chan1_in_1_Cmd; // @[system.scala 89:16]
  wire [1:0] rules_10_io_Chan1_in_1_Data; // @[system.scala 89:16]
  wire [2:0] rules_10_io_Chan1_in_2_Cmd; // @[system.scala 89:16]
  wire [1:0] rules_10_io_Chan1_in_2_Data; // @[system.scala 89:16]
  wire [2:0] rules_10_io_Chan1_out_0_Cmd; // @[system.scala 89:16]
  wire [1:0] rules_10_io_Chan1_out_0_Data; // @[system.scala 89:16]
  wire [2:0] rules_10_io_Chan1_out_1_Cmd; // @[system.scala 89:16]
  wire [1:0] rules_10_io_Chan1_out_1_Data; // @[system.scala 89:16]
  wire [2:0] rules_10_io_Chan1_out_2_Cmd; // @[system.scala 89:16]
  wire [1:0] rules_10_io_Chan1_out_2_Data; // @[system.scala 89:16]
  wire [2:0] rules_10_io_Chan2_in_0_Cmd; // @[system.scala 89:16]
  wire [1:0] rules_10_io_Chan2_in_0_Data; // @[system.scala 89:16]
  wire [2:0] rules_10_io_Chan2_in_1_Cmd; // @[system.scala 89:16]
  wire [1:0] rules_10_io_Chan2_in_1_Data; // @[system.scala 89:16]
  wire [2:0] rules_10_io_Chan2_in_2_Cmd; // @[system.scala 89:16]
  wire [1:0] rules_10_io_Chan2_in_2_Data; // @[system.scala 89:16]
  wire [2:0] rules_10_io_Chan2_out_0_Cmd; // @[system.scala 89:16]
  wire [1:0] rules_10_io_Chan2_out_0_Data; // @[system.scala 89:16]
  wire [2:0] rules_10_io_Chan2_out_1_Cmd; // @[system.scala 89:16]
  wire [1:0] rules_10_io_Chan2_out_1_Data; // @[system.scala 89:16]
  wire [2:0] rules_10_io_Chan2_out_2_Cmd; // @[system.scala 89:16]
  wire [1:0] rules_10_io_Chan2_out_2_Data; // @[system.scala 89:16]
  wire [2:0] rules_10_io_Chan3_in_0_Cmd; // @[system.scala 89:16]
  wire [1:0] rules_10_io_Chan3_in_0_Data; // @[system.scala 89:16]
  wire [2:0] rules_10_io_Chan3_in_1_Cmd; // @[system.scala 89:16]
  wire [1:0] rules_10_io_Chan3_in_1_Data; // @[system.scala 89:16]
  wire [2:0] rules_10_io_Chan3_in_2_Cmd; // @[system.scala 89:16]
  wire [1:0] rules_10_io_Chan3_in_2_Data; // @[system.scala 89:16]
  wire [2:0] rules_10_io_Chan3_out_0_Cmd; // @[system.scala 89:16]
  wire [1:0] rules_10_io_Chan3_out_0_Data; // @[system.scala 89:16]
  wire [2:0] rules_10_io_Chan3_out_1_Cmd; // @[system.scala 89:16]
  wire [1:0] rules_10_io_Chan3_out_1_Data; // @[system.scala 89:16]
  wire [2:0] rules_10_io_Chan3_out_2_Cmd; // @[system.scala 89:16]
  wire [1:0] rules_10_io_Chan3_out_2_Data; // @[system.scala 89:16]
  wire  rules_10_io_InvSet_in_0; // @[system.scala 89:16]
  wire  rules_10_io_InvSet_in_1; // @[system.scala 89:16]
  wire  rules_10_io_InvSet_in_2; // @[system.scala 89:16]
  wire  rules_10_io_InvSet_out_0; // @[system.scala 89:16]
  wire  rules_10_io_InvSet_out_1; // @[system.scala 89:16]
  wire  rules_10_io_InvSet_out_2; // @[system.scala 89:16]
  wire  rules_10_io_ShrSet_in_0; // @[system.scala 89:16]
  wire  rules_10_io_ShrSet_in_1; // @[system.scala 89:16]
  wire  rules_10_io_ShrSet_in_2; // @[system.scala 89:16]
  wire  rules_10_io_ShrSet_out_0; // @[system.scala 89:16]
  wire  rules_10_io_ShrSet_out_1; // @[system.scala 89:16]
  wire  rules_10_io_ShrSet_out_2; // @[system.scala 89:16]
  wire  rules_10_io_ExGntd_in; // @[system.scala 89:16]
  wire  rules_10_io_ExGntd_out; // @[system.scala 89:16]
  wire [2:0] rules_10_io_CurCmd_in; // @[system.scala 89:16]
  wire [2:0] rules_10_io_CurCmd_out; // @[system.scala 89:16]
  wire [1:0] rules_10_io_CurPtr_in; // @[system.scala 89:16]
  wire [1:0] rules_10_io_CurPtr_out; // @[system.scala 89:16]
  wire [1:0] rules_10_io_MemData_in; // @[system.scala 89:16]
  wire [1:0] rules_10_io_MemData_out; // @[system.scala 89:16]
  wire [1:0] rules_10_io_AuxData_in; // @[system.scala 89:16]
  wire [1:0] rules_10_io_AuxData_out; // @[system.scala 89:16]
  wire  rules_11_io_en_r; // @[system.scala 89:16]
  wire [1:0] rules_11_io_Cache_in_0_State; // @[system.scala 89:16]
  wire [1:0] rules_11_io_Cache_in_0_Data; // @[system.scala 89:16]
  wire [1:0] rules_11_io_Cache_in_1_State; // @[system.scala 89:16]
  wire [1:0] rules_11_io_Cache_in_1_Data; // @[system.scala 89:16]
  wire [1:0] rules_11_io_Cache_in_2_State; // @[system.scala 89:16]
  wire [1:0] rules_11_io_Cache_in_2_Data; // @[system.scala 89:16]
  wire [1:0] rules_11_io_Cache_out_0_State; // @[system.scala 89:16]
  wire [1:0] rules_11_io_Cache_out_0_Data; // @[system.scala 89:16]
  wire [1:0] rules_11_io_Cache_out_1_State; // @[system.scala 89:16]
  wire [1:0] rules_11_io_Cache_out_1_Data; // @[system.scala 89:16]
  wire [1:0] rules_11_io_Cache_out_2_State; // @[system.scala 89:16]
  wire [1:0] rules_11_io_Cache_out_2_Data; // @[system.scala 89:16]
  wire [2:0] rules_11_io_Chan1_in_0_Cmd; // @[system.scala 89:16]
  wire [1:0] rules_11_io_Chan1_in_0_Data; // @[system.scala 89:16]
  wire [2:0] rules_11_io_Chan1_in_1_Cmd; // @[system.scala 89:16]
  wire [1:0] rules_11_io_Chan1_in_1_Data; // @[system.scala 89:16]
  wire [2:0] rules_11_io_Chan1_in_2_Cmd; // @[system.scala 89:16]
  wire [1:0] rules_11_io_Chan1_in_2_Data; // @[system.scala 89:16]
  wire [2:0] rules_11_io_Chan1_out_0_Cmd; // @[system.scala 89:16]
  wire [1:0] rules_11_io_Chan1_out_0_Data; // @[system.scala 89:16]
  wire [2:0] rules_11_io_Chan1_out_1_Cmd; // @[system.scala 89:16]
  wire [1:0] rules_11_io_Chan1_out_1_Data; // @[system.scala 89:16]
  wire [2:0] rules_11_io_Chan1_out_2_Cmd; // @[system.scala 89:16]
  wire [1:0] rules_11_io_Chan1_out_2_Data; // @[system.scala 89:16]
  wire [2:0] rules_11_io_Chan2_in_0_Cmd; // @[system.scala 89:16]
  wire [1:0] rules_11_io_Chan2_in_0_Data; // @[system.scala 89:16]
  wire [2:0] rules_11_io_Chan2_in_1_Cmd; // @[system.scala 89:16]
  wire [1:0] rules_11_io_Chan2_in_1_Data; // @[system.scala 89:16]
  wire [2:0] rules_11_io_Chan2_in_2_Cmd; // @[system.scala 89:16]
  wire [1:0] rules_11_io_Chan2_in_2_Data; // @[system.scala 89:16]
  wire [2:0] rules_11_io_Chan2_out_0_Cmd; // @[system.scala 89:16]
  wire [1:0] rules_11_io_Chan2_out_0_Data; // @[system.scala 89:16]
  wire [2:0] rules_11_io_Chan2_out_1_Cmd; // @[system.scala 89:16]
  wire [1:0] rules_11_io_Chan2_out_1_Data; // @[system.scala 89:16]
  wire [2:0] rules_11_io_Chan2_out_2_Cmd; // @[system.scala 89:16]
  wire [1:0] rules_11_io_Chan2_out_2_Data; // @[system.scala 89:16]
  wire [2:0] rules_11_io_Chan3_in_0_Cmd; // @[system.scala 89:16]
  wire [1:0] rules_11_io_Chan3_in_0_Data; // @[system.scala 89:16]
  wire [2:0] rules_11_io_Chan3_in_1_Cmd; // @[system.scala 89:16]
  wire [1:0] rules_11_io_Chan3_in_1_Data; // @[system.scala 89:16]
  wire [2:0] rules_11_io_Chan3_in_2_Cmd; // @[system.scala 89:16]
  wire [1:0] rules_11_io_Chan3_in_2_Data; // @[system.scala 89:16]
  wire [2:0] rules_11_io_Chan3_out_0_Cmd; // @[system.scala 89:16]
  wire [1:0] rules_11_io_Chan3_out_0_Data; // @[system.scala 89:16]
  wire [2:0] rules_11_io_Chan3_out_1_Cmd; // @[system.scala 89:16]
  wire [1:0] rules_11_io_Chan3_out_1_Data; // @[system.scala 89:16]
  wire [2:0] rules_11_io_Chan3_out_2_Cmd; // @[system.scala 89:16]
  wire [1:0] rules_11_io_Chan3_out_2_Data; // @[system.scala 89:16]
  wire  rules_11_io_InvSet_in_0; // @[system.scala 89:16]
  wire  rules_11_io_InvSet_in_1; // @[system.scala 89:16]
  wire  rules_11_io_InvSet_in_2; // @[system.scala 89:16]
  wire  rules_11_io_InvSet_out_0; // @[system.scala 89:16]
  wire  rules_11_io_InvSet_out_1; // @[system.scala 89:16]
  wire  rules_11_io_InvSet_out_2; // @[system.scala 89:16]
  wire  rules_11_io_ShrSet_in_0; // @[system.scala 89:16]
  wire  rules_11_io_ShrSet_in_1; // @[system.scala 89:16]
  wire  rules_11_io_ShrSet_in_2; // @[system.scala 89:16]
  wire  rules_11_io_ShrSet_out_0; // @[system.scala 89:16]
  wire  rules_11_io_ShrSet_out_1; // @[system.scala 89:16]
  wire  rules_11_io_ShrSet_out_2; // @[system.scala 89:16]
  wire  rules_11_io_ExGntd_in; // @[system.scala 89:16]
  wire  rules_11_io_ExGntd_out; // @[system.scala 89:16]
  wire [2:0] rules_11_io_CurCmd_in; // @[system.scala 89:16]
  wire [2:0] rules_11_io_CurCmd_out; // @[system.scala 89:16]
  wire [1:0] rules_11_io_CurPtr_in; // @[system.scala 89:16]
  wire [1:0] rules_11_io_CurPtr_out; // @[system.scala 89:16]
  wire [1:0] rules_11_io_MemData_in; // @[system.scala 89:16]
  wire [1:0] rules_11_io_MemData_out; // @[system.scala 89:16]
  wire [1:0] rules_11_io_AuxData_in; // @[system.scala 89:16]
  wire [1:0] rules_11_io_AuxData_out; // @[system.scala 89:16]
  wire  rules_12_io_en_r; // @[system.scala 92:16]
  wire [1:0] rules_12_io_Cache_in_0_State; // @[system.scala 92:16]
  wire [1:0] rules_12_io_Cache_in_0_Data; // @[system.scala 92:16]
  wire [1:0] rules_12_io_Cache_in_1_State; // @[system.scala 92:16]
  wire [1:0] rules_12_io_Cache_in_1_Data; // @[system.scala 92:16]
  wire [1:0] rules_12_io_Cache_in_2_State; // @[system.scala 92:16]
  wire [1:0] rules_12_io_Cache_in_2_Data; // @[system.scala 92:16]
  wire [1:0] rules_12_io_Cache_out_0_State; // @[system.scala 92:16]
  wire [1:0] rules_12_io_Cache_out_0_Data; // @[system.scala 92:16]
  wire [1:0] rules_12_io_Cache_out_1_State; // @[system.scala 92:16]
  wire [1:0] rules_12_io_Cache_out_1_Data; // @[system.scala 92:16]
  wire [1:0] rules_12_io_Cache_out_2_State; // @[system.scala 92:16]
  wire [1:0] rules_12_io_Cache_out_2_Data; // @[system.scala 92:16]
  wire [2:0] rules_12_io_Chan1_in_0_Cmd; // @[system.scala 92:16]
  wire [1:0] rules_12_io_Chan1_in_0_Data; // @[system.scala 92:16]
  wire [2:0] rules_12_io_Chan1_in_1_Cmd; // @[system.scala 92:16]
  wire [1:0] rules_12_io_Chan1_in_1_Data; // @[system.scala 92:16]
  wire [2:0] rules_12_io_Chan1_in_2_Cmd; // @[system.scala 92:16]
  wire [1:0] rules_12_io_Chan1_in_2_Data; // @[system.scala 92:16]
  wire [2:0] rules_12_io_Chan1_out_0_Cmd; // @[system.scala 92:16]
  wire [1:0] rules_12_io_Chan1_out_0_Data; // @[system.scala 92:16]
  wire [2:0] rules_12_io_Chan1_out_1_Cmd; // @[system.scala 92:16]
  wire [1:0] rules_12_io_Chan1_out_1_Data; // @[system.scala 92:16]
  wire [2:0] rules_12_io_Chan1_out_2_Cmd; // @[system.scala 92:16]
  wire [1:0] rules_12_io_Chan1_out_2_Data; // @[system.scala 92:16]
  wire [2:0] rules_12_io_Chan2_in_0_Cmd; // @[system.scala 92:16]
  wire [1:0] rules_12_io_Chan2_in_0_Data; // @[system.scala 92:16]
  wire [2:0] rules_12_io_Chan2_in_1_Cmd; // @[system.scala 92:16]
  wire [1:0] rules_12_io_Chan2_in_1_Data; // @[system.scala 92:16]
  wire [2:0] rules_12_io_Chan2_in_2_Cmd; // @[system.scala 92:16]
  wire [1:0] rules_12_io_Chan2_in_2_Data; // @[system.scala 92:16]
  wire [2:0] rules_12_io_Chan2_out_0_Cmd; // @[system.scala 92:16]
  wire [1:0] rules_12_io_Chan2_out_0_Data; // @[system.scala 92:16]
  wire [2:0] rules_12_io_Chan2_out_1_Cmd; // @[system.scala 92:16]
  wire [1:0] rules_12_io_Chan2_out_1_Data; // @[system.scala 92:16]
  wire [2:0] rules_12_io_Chan2_out_2_Cmd; // @[system.scala 92:16]
  wire [1:0] rules_12_io_Chan2_out_2_Data; // @[system.scala 92:16]
  wire [2:0] rules_12_io_Chan3_in_0_Cmd; // @[system.scala 92:16]
  wire [1:0] rules_12_io_Chan3_in_0_Data; // @[system.scala 92:16]
  wire [2:0] rules_12_io_Chan3_in_1_Cmd; // @[system.scala 92:16]
  wire [1:0] rules_12_io_Chan3_in_1_Data; // @[system.scala 92:16]
  wire [2:0] rules_12_io_Chan3_in_2_Cmd; // @[system.scala 92:16]
  wire [1:0] rules_12_io_Chan3_in_2_Data; // @[system.scala 92:16]
  wire [2:0] rules_12_io_Chan3_out_0_Cmd; // @[system.scala 92:16]
  wire [1:0] rules_12_io_Chan3_out_0_Data; // @[system.scala 92:16]
  wire [2:0] rules_12_io_Chan3_out_1_Cmd; // @[system.scala 92:16]
  wire [1:0] rules_12_io_Chan3_out_1_Data; // @[system.scala 92:16]
  wire [2:0] rules_12_io_Chan3_out_2_Cmd; // @[system.scala 92:16]
  wire [1:0] rules_12_io_Chan3_out_2_Data; // @[system.scala 92:16]
  wire  rules_12_io_InvSet_in_0; // @[system.scala 92:16]
  wire  rules_12_io_InvSet_in_1; // @[system.scala 92:16]
  wire  rules_12_io_InvSet_in_2; // @[system.scala 92:16]
  wire  rules_12_io_InvSet_out_0; // @[system.scala 92:16]
  wire  rules_12_io_InvSet_out_1; // @[system.scala 92:16]
  wire  rules_12_io_InvSet_out_2; // @[system.scala 92:16]
  wire  rules_12_io_ShrSet_in_0; // @[system.scala 92:16]
  wire  rules_12_io_ShrSet_in_1; // @[system.scala 92:16]
  wire  rules_12_io_ShrSet_in_2; // @[system.scala 92:16]
  wire  rules_12_io_ShrSet_out_0; // @[system.scala 92:16]
  wire  rules_12_io_ShrSet_out_1; // @[system.scala 92:16]
  wire  rules_12_io_ShrSet_out_2; // @[system.scala 92:16]
  wire  rules_12_io_ExGntd_in; // @[system.scala 92:16]
  wire  rules_12_io_ExGntd_out; // @[system.scala 92:16]
  wire [2:0] rules_12_io_CurCmd_in; // @[system.scala 92:16]
  wire [2:0] rules_12_io_CurCmd_out; // @[system.scala 92:16]
  wire [1:0] rules_12_io_CurPtr_in; // @[system.scala 92:16]
  wire [1:0] rules_12_io_CurPtr_out; // @[system.scala 92:16]
  wire [1:0] rules_12_io_MemData_in; // @[system.scala 92:16]
  wire [1:0] rules_12_io_MemData_out; // @[system.scala 92:16]
  wire [1:0] rules_12_io_AuxData_in; // @[system.scala 92:16]
  wire [1:0] rules_12_io_AuxData_out; // @[system.scala 92:16]
  wire  rules_13_io_en_r; // @[system.scala 92:16]
  wire [1:0] rules_13_io_Cache_in_0_State; // @[system.scala 92:16]
  wire [1:0] rules_13_io_Cache_in_0_Data; // @[system.scala 92:16]
  wire [1:0] rules_13_io_Cache_in_1_State; // @[system.scala 92:16]
  wire [1:0] rules_13_io_Cache_in_1_Data; // @[system.scala 92:16]
  wire [1:0] rules_13_io_Cache_in_2_State; // @[system.scala 92:16]
  wire [1:0] rules_13_io_Cache_in_2_Data; // @[system.scala 92:16]
  wire [1:0] rules_13_io_Cache_out_0_State; // @[system.scala 92:16]
  wire [1:0] rules_13_io_Cache_out_0_Data; // @[system.scala 92:16]
  wire [1:0] rules_13_io_Cache_out_1_State; // @[system.scala 92:16]
  wire [1:0] rules_13_io_Cache_out_1_Data; // @[system.scala 92:16]
  wire [1:0] rules_13_io_Cache_out_2_State; // @[system.scala 92:16]
  wire [1:0] rules_13_io_Cache_out_2_Data; // @[system.scala 92:16]
  wire [2:0] rules_13_io_Chan1_in_0_Cmd; // @[system.scala 92:16]
  wire [1:0] rules_13_io_Chan1_in_0_Data; // @[system.scala 92:16]
  wire [2:0] rules_13_io_Chan1_in_1_Cmd; // @[system.scala 92:16]
  wire [1:0] rules_13_io_Chan1_in_1_Data; // @[system.scala 92:16]
  wire [2:0] rules_13_io_Chan1_in_2_Cmd; // @[system.scala 92:16]
  wire [1:0] rules_13_io_Chan1_in_2_Data; // @[system.scala 92:16]
  wire [2:0] rules_13_io_Chan1_out_0_Cmd; // @[system.scala 92:16]
  wire [1:0] rules_13_io_Chan1_out_0_Data; // @[system.scala 92:16]
  wire [2:0] rules_13_io_Chan1_out_1_Cmd; // @[system.scala 92:16]
  wire [1:0] rules_13_io_Chan1_out_1_Data; // @[system.scala 92:16]
  wire [2:0] rules_13_io_Chan1_out_2_Cmd; // @[system.scala 92:16]
  wire [1:0] rules_13_io_Chan1_out_2_Data; // @[system.scala 92:16]
  wire [2:0] rules_13_io_Chan2_in_0_Cmd; // @[system.scala 92:16]
  wire [1:0] rules_13_io_Chan2_in_0_Data; // @[system.scala 92:16]
  wire [2:0] rules_13_io_Chan2_in_1_Cmd; // @[system.scala 92:16]
  wire [1:0] rules_13_io_Chan2_in_1_Data; // @[system.scala 92:16]
  wire [2:0] rules_13_io_Chan2_in_2_Cmd; // @[system.scala 92:16]
  wire [1:0] rules_13_io_Chan2_in_2_Data; // @[system.scala 92:16]
  wire [2:0] rules_13_io_Chan2_out_0_Cmd; // @[system.scala 92:16]
  wire [1:0] rules_13_io_Chan2_out_0_Data; // @[system.scala 92:16]
  wire [2:0] rules_13_io_Chan2_out_1_Cmd; // @[system.scala 92:16]
  wire [1:0] rules_13_io_Chan2_out_1_Data; // @[system.scala 92:16]
  wire [2:0] rules_13_io_Chan2_out_2_Cmd; // @[system.scala 92:16]
  wire [1:0] rules_13_io_Chan2_out_2_Data; // @[system.scala 92:16]
  wire [2:0] rules_13_io_Chan3_in_0_Cmd; // @[system.scala 92:16]
  wire [1:0] rules_13_io_Chan3_in_0_Data; // @[system.scala 92:16]
  wire [2:0] rules_13_io_Chan3_in_1_Cmd; // @[system.scala 92:16]
  wire [1:0] rules_13_io_Chan3_in_1_Data; // @[system.scala 92:16]
  wire [2:0] rules_13_io_Chan3_in_2_Cmd; // @[system.scala 92:16]
  wire [1:0] rules_13_io_Chan3_in_2_Data; // @[system.scala 92:16]
  wire [2:0] rules_13_io_Chan3_out_0_Cmd; // @[system.scala 92:16]
  wire [1:0] rules_13_io_Chan3_out_0_Data; // @[system.scala 92:16]
  wire [2:0] rules_13_io_Chan3_out_1_Cmd; // @[system.scala 92:16]
  wire [1:0] rules_13_io_Chan3_out_1_Data; // @[system.scala 92:16]
  wire [2:0] rules_13_io_Chan3_out_2_Cmd; // @[system.scala 92:16]
  wire [1:0] rules_13_io_Chan3_out_2_Data; // @[system.scala 92:16]
  wire  rules_13_io_InvSet_in_0; // @[system.scala 92:16]
  wire  rules_13_io_InvSet_in_1; // @[system.scala 92:16]
  wire  rules_13_io_InvSet_in_2; // @[system.scala 92:16]
  wire  rules_13_io_InvSet_out_0; // @[system.scala 92:16]
  wire  rules_13_io_InvSet_out_1; // @[system.scala 92:16]
  wire  rules_13_io_InvSet_out_2; // @[system.scala 92:16]
  wire  rules_13_io_ShrSet_in_0; // @[system.scala 92:16]
  wire  rules_13_io_ShrSet_in_1; // @[system.scala 92:16]
  wire  rules_13_io_ShrSet_in_2; // @[system.scala 92:16]
  wire  rules_13_io_ShrSet_out_0; // @[system.scala 92:16]
  wire  rules_13_io_ShrSet_out_1; // @[system.scala 92:16]
  wire  rules_13_io_ShrSet_out_2; // @[system.scala 92:16]
  wire  rules_13_io_ExGntd_in; // @[system.scala 92:16]
  wire  rules_13_io_ExGntd_out; // @[system.scala 92:16]
  wire [2:0] rules_13_io_CurCmd_in; // @[system.scala 92:16]
  wire [2:0] rules_13_io_CurCmd_out; // @[system.scala 92:16]
  wire [1:0] rules_13_io_CurPtr_in; // @[system.scala 92:16]
  wire [1:0] rules_13_io_CurPtr_out; // @[system.scala 92:16]
  wire [1:0] rules_13_io_MemData_in; // @[system.scala 92:16]
  wire [1:0] rules_13_io_MemData_out; // @[system.scala 92:16]
  wire [1:0] rules_13_io_AuxData_in; // @[system.scala 92:16]
  wire [1:0] rules_13_io_AuxData_out; // @[system.scala 92:16]
  wire  rules_14_io_en_r; // @[system.scala 95:16]
  wire [1:0] rules_14_io_Cache_in_0_State; // @[system.scala 95:16]
  wire [1:0] rules_14_io_Cache_in_0_Data; // @[system.scala 95:16]
  wire [1:0] rules_14_io_Cache_in_1_State; // @[system.scala 95:16]
  wire [1:0] rules_14_io_Cache_in_1_Data; // @[system.scala 95:16]
  wire [1:0] rules_14_io_Cache_in_2_State; // @[system.scala 95:16]
  wire [1:0] rules_14_io_Cache_in_2_Data; // @[system.scala 95:16]
  wire [1:0] rules_14_io_Cache_out_0_State; // @[system.scala 95:16]
  wire [1:0] rules_14_io_Cache_out_0_Data; // @[system.scala 95:16]
  wire [1:0] rules_14_io_Cache_out_1_State; // @[system.scala 95:16]
  wire [1:0] rules_14_io_Cache_out_1_Data; // @[system.scala 95:16]
  wire [1:0] rules_14_io_Cache_out_2_State; // @[system.scala 95:16]
  wire [1:0] rules_14_io_Cache_out_2_Data; // @[system.scala 95:16]
  wire [2:0] rules_14_io_Chan1_in_0_Cmd; // @[system.scala 95:16]
  wire [1:0] rules_14_io_Chan1_in_0_Data; // @[system.scala 95:16]
  wire [2:0] rules_14_io_Chan1_in_1_Cmd; // @[system.scala 95:16]
  wire [1:0] rules_14_io_Chan1_in_1_Data; // @[system.scala 95:16]
  wire [2:0] rules_14_io_Chan1_in_2_Cmd; // @[system.scala 95:16]
  wire [1:0] rules_14_io_Chan1_in_2_Data; // @[system.scala 95:16]
  wire [2:0] rules_14_io_Chan1_out_0_Cmd; // @[system.scala 95:16]
  wire [1:0] rules_14_io_Chan1_out_0_Data; // @[system.scala 95:16]
  wire [2:0] rules_14_io_Chan1_out_1_Cmd; // @[system.scala 95:16]
  wire [1:0] rules_14_io_Chan1_out_1_Data; // @[system.scala 95:16]
  wire [2:0] rules_14_io_Chan1_out_2_Cmd; // @[system.scala 95:16]
  wire [1:0] rules_14_io_Chan1_out_2_Data; // @[system.scala 95:16]
  wire [2:0] rules_14_io_Chan2_in_0_Cmd; // @[system.scala 95:16]
  wire [1:0] rules_14_io_Chan2_in_0_Data; // @[system.scala 95:16]
  wire [2:0] rules_14_io_Chan2_in_1_Cmd; // @[system.scala 95:16]
  wire [1:0] rules_14_io_Chan2_in_1_Data; // @[system.scala 95:16]
  wire [2:0] rules_14_io_Chan2_in_2_Cmd; // @[system.scala 95:16]
  wire [1:0] rules_14_io_Chan2_in_2_Data; // @[system.scala 95:16]
  wire [2:0] rules_14_io_Chan2_out_0_Cmd; // @[system.scala 95:16]
  wire [1:0] rules_14_io_Chan2_out_0_Data; // @[system.scala 95:16]
  wire [2:0] rules_14_io_Chan2_out_1_Cmd; // @[system.scala 95:16]
  wire [1:0] rules_14_io_Chan2_out_1_Data; // @[system.scala 95:16]
  wire [2:0] rules_14_io_Chan2_out_2_Cmd; // @[system.scala 95:16]
  wire [1:0] rules_14_io_Chan2_out_2_Data; // @[system.scala 95:16]
  wire [2:0] rules_14_io_Chan3_in_0_Cmd; // @[system.scala 95:16]
  wire [1:0] rules_14_io_Chan3_in_0_Data; // @[system.scala 95:16]
  wire [2:0] rules_14_io_Chan3_in_1_Cmd; // @[system.scala 95:16]
  wire [1:0] rules_14_io_Chan3_in_1_Data; // @[system.scala 95:16]
  wire [2:0] rules_14_io_Chan3_in_2_Cmd; // @[system.scala 95:16]
  wire [1:0] rules_14_io_Chan3_in_2_Data; // @[system.scala 95:16]
  wire [2:0] rules_14_io_Chan3_out_0_Cmd; // @[system.scala 95:16]
  wire [1:0] rules_14_io_Chan3_out_0_Data; // @[system.scala 95:16]
  wire [2:0] rules_14_io_Chan3_out_1_Cmd; // @[system.scala 95:16]
  wire [1:0] rules_14_io_Chan3_out_1_Data; // @[system.scala 95:16]
  wire [2:0] rules_14_io_Chan3_out_2_Cmd; // @[system.scala 95:16]
  wire [1:0] rules_14_io_Chan3_out_2_Data; // @[system.scala 95:16]
  wire  rules_14_io_InvSet_in_0; // @[system.scala 95:16]
  wire  rules_14_io_InvSet_in_1; // @[system.scala 95:16]
  wire  rules_14_io_InvSet_in_2; // @[system.scala 95:16]
  wire  rules_14_io_InvSet_out_0; // @[system.scala 95:16]
  wire  rules_14_io_InvSet_out_1; // @[system.scala 95:16]
  wire  rules_14_io_InvSet_out_2; // @[system.scala 95:16]
  wire  rules_14_io_ShrSet_in_0; // @[system.scala 95:16]
  wire  rules_14_io_ShrSet_in_1; // @[system.scala 95:16]
  wire  rules_14_io_ShrSet_in_2; // @[system.scala 95:16]
  wire  rules_14_io_ShrSet_out_0; // @[system.scala 95:16]
  wire  rules_14_io_ShrSet_out_1; // @[system.scala 95:16]
  wire  rules_14_io_ShrSet_out_2; // @[system.scala 95:16]
  wire  rules_14_io_ExGntd_in; // @[system.scala 95:16]
  wire  rules_14_io_ExGntd_out; // @[system.scala 95:16]
  wire [2:0] rules_14_io_CurCmd_in; // @[system.scala 95:16]
  wire [2:0] rules_14_io_CurCmd_out; // @[system.scala 95:16]
  wire [1:0] rules_14_io_CurPtr_in; // @[system.scala 95:16]
  wire [1:0] rules_14_io_CurPtr_out; // @[system.scala 95:16]
  wire [1:0] rules_14_io_MemData_in; // @[system.scala 95:16]
  wire [1:0] rules_14_io_MemData_out; // @[system.scala 95:16]
  wire [1:0] rules_14_io_AuxData_in; // @[system.scala 95:16]
  wire [1:0] rules_14_io_AuxData_out; // @[system.scala 95:16]
  wire  rules_15_io_en_r; // @[system.scala 95:16]
  wire [1:0] rules_15_io_Cache_in_0_State; // @[system.scala 95:16]
  wire [1:0] rules_15_io_Cache_in_0_Data; // @[system.scala 95:16]
  wire [1:0] rules_15_io_Cache_in_1_State; // @[system.scala 95:16]
  wire [1:0] rules_15_io_Cache_in_1_Data; // @[system.scala 95:16]
  wire [1:0] rules_15_io_Cache_in_2_State; // @[system.scala 95:16]
  wire [1:0] rules_15_io_Cache_in_2_Data; // @[system.scala 95:16]
  wire [1:0] rules_15_io_Cache_out_0_State; // @[system.scala 95:16]
  wire [1:0] rules_15_io_Cache_out_0_Data; // @[system.scala 95:16]
  wire [1:0] rules_15_io_Cache_out_1_State; // @[system.scala 95:16]
  wire [1:0] rules_15_io_Cache_out_1_Data; // @[system.scala 95:16]
  wire [1:0] rules_15_io_Cache_out_2_State; // @[system.scala 95:16]
  wire [1:0] rules_15_io_Cache_out_2_Data; // @[system.scala 95:16]
  wire [2:0] rules_15_io_Chan1_in_0_Cmd; // @[system.scala 95:16]
  wire [1:0] rules_15_io_Chan1_in_0_Data; // @[system.scala 95:16]
  wire [2:0] rules_15_io_Chan1_in_1_Cmd; // @[system.scala 95:16]
  wire [1:0] rules_15_io_Chan1_in_1_Data; // @[system.scala 95:16]
  wire [2:0] rules_15_io_Chan1_in_2_Cmd; // @[system.scala 95:16]
  wire [1:0] rules_15_io_Chan1_in_2_Data; // @[system.scala 95:16]
  wire [2:0] rules_15_io_Chan1_out_0_Cmd; // @[system.scala 95:16]
  wire [1:0] rules_15_io_Chan1_out_0_Data; // @[system.scala 95:16]
  wire [2:0] rules_15_io_Chan1_out_1_Cmd; // @[system.scala 95:16]
  wire [1:0] rules_15_io_Chan1_out_1_Data; // @[system.scala 95:16]
  wire [2:0] rules_15_io_Chan1_out_2_Cmd; // @[system.scala 95:16]
  wire [1:0] rules_15_io_Chan1_out_2_Data; // @[system.scala 95:16]
  wire [2:0] rules_15_io_Chan2_in_0_Cmd; // @[system.scala 95:16]
  wire [1:0] rules_15_io_Chan2_in_0_Data; // @[system.scala 95:16]
  wire [2:0] rules_15_io_Chan2_in_1_Cmd; // @[system.scala 95:16]
  wire [1:0] rules_15_io_Chan2_in_1_Data; // @[system.scala 95:16]
  wire [2:0] rules_15_io_Chan2_in_2_Cmd; // @[system.scala 95:16]
  wire [1:0] rules_15_io_Chan2_in_2_Data; // @[system.scala 95:16]
  wire [2:0] rules_15_io_Chan2_out_0_Cmd; // @[system.scala 95:16]
  wire [1:0] rules_15_io_Chan2_out_0_Data; // @[system.scala 95:16]
  wire [2:0] rules_15_io_Chan2_out_1_Cmd; // @[system.scala 95:16]
  wire [1:0] rules_15_io_Chan2_out_1_Data; // @[system.scala 95:16]
  wire [2:0] rules_15_io_Chan2_out_2_Cmd; // @[system.scala 95:16]
  wire [1:0] rules_15_io_Chan2_out_2_Data; // @[system.scala 95:16]
  wire [2:0] rules_15_io_Chan3_in_0_Cmd; // @[system.scala 95:16]
  wire [1:0] rules_15_io_Chan3_in_0_Data; // @[system.scala 95:16]
  wire [2:0] rules_15_io_Chan3_in_1_Cmd; // @[system.scala 95:16]
  wire [1:0] rules_15_io_Chan3_in_1_Data; // @[system.scala 95:16]
  wire [2:0] rules_15_io_Chan3_in_2_Cmd; // @[system.scala 95:16]
  wire [1:0] rules_15_io_Chan3_in_2_Data; // @[system.scala 95:16]
  wire [2:0] rules_15_io_Chan3_out_0_Cmd; // @[system.scala 95:16]
  wire [1:0] rules_15_io_Chan3_out_0_Data; // @[system.scala 95:16]
  wire [2:0] rules_15_io_Chan3_out_1_Cmd; // @[system.scala 95:16]
  wire [1:0] rules_15_io_Chan3_out_1_Data; // @[system.scala 95:16]
  wire [2:0] rules_15_io_Chan3_out_2_Cmd; // @[system.scala 95:16]
  wire [1:0] rules_15_io_Chan3_out_2_Data; // @[system.scala 95:16]
  wire  rules_15_io_InvSet_in_0; // @[system.scala 95:16]
  wire  rules_15_io_InvSet_in_1; // @[system.scala 95:16]
  wire  rules_15_io_InvSet_in_2; // @[system.scala 95:16]
  wire  rules_15_io_InvSet_out_0; // @[system.scala 95:16]
  wire  rules_15_io_InvSet_out_1; // @[system.scala 95:16]
  wire  rules_15_io_InvSet_out_2; // @[system.scala 95:16]
  wire  rules_15_io_ShrSet_in_0; // @[system.scala 95:16]
  wire  rules_15_io_ShrSet_in_1; // @[system.scala 95:16]
  wire  rules_15_io_ShrSet_in_2; // @[system.scala 95:16]
  wire  rules_15_io_ShrSet_out_0; // @[system.scala 95:16]
  wire  rules_15_io_ShrSet_out_1; // @[system.scala 95:16]
  wire  rules_15_io_ShrSet_out_2; // @[system.scala 95:16]
  wire  rules_15_io_ExGntd_in; // @[system.scala 95:16]
  wire  rules_15_io_ExGntd_out; // @[system.scala 95:16]
  wire [2:0] rules_15_io_CurCmd_in; // @[system.scala 95:16]
  wire [2:0] rules_15_io_CurCmd_out; // @[system.scala 95:16]
  wire [1:0] rules_15_io_CurPtr_in; // @[system.scala 95:16]
  wire [1:0] rules_15_io_CurPtr_out; // @[system.scala 95:16]
  wire [1:0] rules_15_io_MemData_in; // @[system.scala 95:16]
  wire [1:0] rules_15_io_MemData_out; // @[system.scala 95:16]
  wire [1:0] rules_15_io_AuxData_in; // @[system.scala 95:16]
  wire [1:0] rules_15_io_AuxData_out; // @[system.scala 95:16]
  wire [1:0] rules_16_io_Cache_in_0_State; // @[system.scala 98:16]
  wire [1:0] rules_16_io_Cache_in_0_Data; // @[system.scala 98:16]
  wire [1:0] rules_16_io_Cache_in_1_State; // @[system.scala 98:16]
  wire [1:0] rules_16_io_Cache_in_1_Data; // @[system.scala 98:16]
  wire [1:0] rules_16_io_Cache_in_2_State; // @[system.scala 98:16]
  wire [1:0] rules_16_io_Cache_in_2_Data; // @[system.scala 98:16]
  wire [1:0] rules_16_io_Cache_out_0_State; // @[system.scala 98:16]
  wire [1:0] rules_16_io_Cache_out_0_Data; // @[system.scala 98:16]
  wire [1:0] rules_16_io_Cache_out_1_State; // @[system.scala 98:16]
  wire [1:0] rules_16_io_Cache_out_1_Data; // @[system.scala 98:16]
  wire [1:0] rules_16_io_Cache_out_2_State; // @[system.scala 98:16]
  wire [1:0] rules_16_io_Cache_out_2_Data; // @[system.scala 98:16]
  wire [2:0] rules_16_io_Chan1_in_0_Cmd; // @[system.scala 98:16]
  wire [1:0] rules_16_io_Chan1_in_0_Data; // @[system.scala 98:16]
  wire [2:0] rules_16_io_Chan1_in_1_Cmd; // @[system.scala 98:16]
  wire [1:0] rules_16_io_Chan1_in_1_Data; // @[system.scala 98:16]
  wire [2:0] rules_16_io_Chan1_in_2_Cmd; // @[system.scala 98:16]
  wire [1:0] rules_16_io_Chan1_in_2_Data; // @[system.scala 98:16]
  wire [2:0] rules_16_io_Chan1_out_0_Cmd; // @[system.scala 98:16]
  wire [1:0] rules_16_io_Chan1_out_0_Data; // @[system.scala 98:16]
  wire [2:0] rules_16_io_Chan1_out_1_Cmd; // @[system.scala 98:16]
  wire [1:0] rules_16_io_Chan1_out_1_Data; // @[system.scala 98:16]
  wire [2:0] rules_16_io_Chan1_out_2_Cmd; // @[system.scala 98:16]
  wire [1:0] rules_16_io_Chan1_out_2_Data; // @[system.scala 98:16]
  wire [2:0] rules_16_io_Chan2_in_0_Cmd; // @[system.scala 98:16]
  wire [1:0] rules_16_io_Chan2_in_0_Data; // @[system.scala 98:16]
  wire [2:0] rules_16_io_Chan2_in_1_Cmd; // @[system.scala 98:16]
  wire [1:0] rules_16_io_Chan2_in_1_Data; // @[system.scala 98:16]
  wire [2:0] rules_16_io_Chan2_in_2_Cmd; // @[system.scala 98:16]
  wire [1:0] rules_16_io_Chan2_in_2_Data; // @[system.scala 98:16]
  wire [2:0] rules_16_io_Chan2_out_0_Cmd; // @[system.scala 98:16]
  wire [1:0] rules_16_io_Chan2_out_0_Data; // @[system.scala 98:16]
  wire [2:0] rules_16_io_Chan2_out_1_Cmd; // @[system.scala 98:16]
  wire [1:0] rules_16_io_Chan2_out_1_Data; // @[system.scala 98:16]
  wire [2:0] rules_16_io_Chan2_out_2_Cmd; // @[system.scala 98:16]
  wire [1:0] rules_16_io_Chan2_out_2_Data; // @[system.scala 98:16]
  wire [2:0] rules_16_io_Chan3_in_0_Cmd; // @[system.scala 98:16]
  wire [1:0] rules_16_io_Chan3_in_0_Data; // @[system.scala 98:16]
  wire [2:0] rules_16_io_Chan3_in_1_Cmd; // @[system.scala 98:16]
  wire [1:0] rules_16_io_Chan3_in_1_Data; // @[system.scala 98:16]
  wire [2:0] rules_16_io_Chan3_in_2_Cmd; // @[system.scala 98:16]
  wire [1:0] rules_16_io_Chan3_in_2_Data; // @[system.scala 98:16]
  wire [2:0] rules_16_io_Chan3_out_0_Cmd; // @[system.scala 98:16]
  wire [1:0] rules_16_io_Chan3_out_0_Data; // @[system.scala 98:16]
  wire [2:0] rules_16_io_Chan3_out_1_Cmd; // @[system.scala 98:16]
  wire [1:0] rules_16_io_Chan3_out_1_Data; // @[system.scala 98:16]
  wire [2:0] rules_16_io_Chan3_out_2_Cmd; // @[system.scala 98:16]
  wire [1:0] rules_16_io_Chan3_out_2_Data; // @[system.scala 98:16]
  wire  rules_16_io_InvSet_in_0; // @[system.scala 98:16]
  wire  rules_16_io_InvSet_in_1; // @[system.scala 98:16]
  wire  rules_16_io_InvSet_in_2; // @[system.scala 98:16]
  wire  rules_16_io_InvSet_out_0; // @[system.scala 98:16]
  wire  rules_16_io_InvSet_out_1; // @[system.scala 98:16]
  wire  rules_16_io_InvSet_out_2; // @[system.scala 98:16]
  wire  rules_16_io_ShrSet_in_0; // @[system.scala 98:16]
  wire  rules_16_io_ShrSet_in_1; // @[system.scala 98:16]
  wire  rules_16_io_ShrSet_in_2; // @[system.scala 98:16]
  wire  rules_16_io_ShrSet_out_0; // @[system.scala 98:16]
  wire  rules_16_io_ShrSet_out_1; // @[system.scala 98:16]
  wire  rules_16_io_ShrSet_out_2; // @[system.scala 98:16]
  wire  rules_16_io_ExGntd_in; // @[system.scala 98:16]
  wire  rules_16_io_ExGntd_out; // @[system.scala 98:16]
  wire [2:0] rules_16_io_CurCmd_in; // @[system.scala 98:16]
  wire [2:0] rules_16_io_CurCmd_out; // @[system.scala 98:16]
  wire [1:0] rules_16_io_CurPtr_in; // @[system.scala 98:16]
  wire [1:0] rules_16_io_CurPtr_out; // @[system.scala 98:16]
  wire [1:0] rules_16_io_MemData_in; // @[system.scala 98:16]
  wire [1:0] rules_16_io_MemData_out; // @[system.scala 98:16]
  wire [1:0] rules_16_io_AuxData_in; // @[system.scala 98:16]
  wire [1:0] rules_16_io_AuxData_out; // @[system.scala 98:16]
  wire [1:0] rules_17_io_Cache_in_0_State; // @[system.scala 98:16]
  wire [1:0] rules_17_io_Cache_in_0_Data; // @[system.scala 98:16]
  wire [1:0] rules_17_io_Cache_in_1_State; // @[system.scala 98:16]
  wire [1:0] rules_17_io_Cache_in_1_Data; // @[system.scala 98:16]
  wire [1:0] rules_17_io_Cache_in_2_State; // @[system.scala 98:16]
  wire [1:0] rules_17_io_Cache_in_2_Data; // @[system.scala 98:16]
  wire [1:0] rules_17_io_Cache_out_0_State; // @[system.scala 98:16]
  wire [1:0] rules_17_io_Cache_out_0_Data; // @[system.scala 98:16]
  wire [1:0] rules_17_io_Cache_out_1_State; // @[system.scala 98:16]
  wire [1:0] rules_17_io_Cache_out_1_Data; // @[system.scala 98:16]
  wire [1:0] rules_17_io_Cache_out_2_State; // @[system.scala 98:16]
  wire [1:0] rules_17_io_Cache_out_2_Data; // @[system.scala 98:16]
  wire [2:0] rules_17_io_Chan1_in_0_Cmd; // @[system.scala 98:16]
  wire [1:0] rules_17_io_Chan1_in_0_Data; // @[system.scala 98:16]
  wire [2:0] rules_17_io_Chan1_in_1_Cmd; // @[system.scala 98:16]
  wire [1:0] rules_17_io_Chan1_in_1_Data; // @[system.scala 98:16]
  wire [2:0] rules_17_io_Chan1_in_2_Cmd; // @[system.scala 98:16]
  wire [1:0] rules_17_io_Chan1_in_2_Data; // @[system.scala 98:16]
  wire [2:0] rules_17_io_Chan1_out_0_Cmd; // @[system.scala 98:16]
  wire [1:0] rules_17_io_Chan1_out_0_Data; // @[system.scala 98:16]
  wire [2:0] rules_17_io_Chan1_out_1_Cmd; // @[system.scala 98:16]
  wire [1:0] rules_17_io_Chan1_out_1_Data; // @[system.scala 98:16]
  wire [2:0] rules_17_io_Chan1_out_2_Cmd; // @[system.scala 98:16]
  wire [1:0] rules_17_io_Chan1_out_2_Data; // @[system.scala 98:16]
  wire [2:0] rules_17_io_Chan2_in_0_Cmd; // @[system.scala 98:16]
  wire [1:0] rules_17_io_Chan2_in_0_Data; // @[system.scala 98:16]
  wire [2:0] rules_17_io_Chan2_in_1_Cmd; // @[system.scala 98:16]
  wire [1:0] rules_17_io_Chan2_in_1_Data; // @[system.scala 98:16]
  wire [2:0] rules_17_io_Chan2_in_2_Cmd; // @[system.scala 98:16]
  wire [1:0] rules_17_io_Chan2_in_2_Data; // @[system.scala 98:16]
  wire [2:0] rules_17_io_Chan2_out_0_Cmd; // @[system.scala 98:16]
  wire [1:0] rules_17_io_Chan2_out_0_Data; // @[system.scala 98:16]
  wire [2:0] rules_17_io_Chan2_out_1_Cmd; // @[system.scala 98:16]
  wire [1:0] rules_17_io_Chan2_out_1_Data; // @[system.scala 98:16]
  wire [2:0] rules_17_io_Chan2_out_2_Cmd; // @[system.scala 98:16]
  wire [1:0] rules_17_io_Chan2_out_2_Data; // @[system.scala 98:16]
  wire [2:0] rules_17_io_Chan3_in_0_Cmd; // @[system.scala 98:16]
  wire [1:0] rules_17_io_Chan3_in_0_Data; // @[system.scala 98:16]
  wire [2:0] rules_17_io_Chan3_in_1_Cmd; // @[system.scala 98:16]
  wire [1:0] rules_17_io_Chan3_in_1_Data; // @[system.scala 98:16]
  wire [2:0] rules_17_io_Chan3_in_2_Cmd; // @[system.scala 98:16]
  wire [1:0] rules_17_io_Chan3_in_2_Data; // @[system.scala 98:16]
  wire [2:0] rules_17_io_Chan3_out_0_Cmd; // @[system.scala 98:16]
  wire [1:0] rules_17_io_Chan3_out_0_Data; // @[system.scala 98:16]
  wire [2:0] rules_17_io_Chan3_out_1_Cmd; // @[system.scala 98:16]
  wire [1:0] rules_17_io_Chan3_out_1_Data; // @[system.scala 98:16]
  wire [2:0] rules_17_io_Chan3_out_2_Cmd; // @[system.scala 98:16]
  wire [1:0] rules_17_io_Chan3_out_2_Data; // @[system.scala 98:16]
  wire  rules_17_io_InvSet_in_0; // @[system.scala 98:16]
  wire  rules_17_io_InvSet_in_1; // @[system.scala 98:16]
  wire  rules_17_io_InvSet_in_2; // @[system.scala 98:16]
  wire  rules_17_io_InvSet_out_0; // @[system.scala 98:16]
  wire  rules_17_io_InvSet_out_1; // @[system.scala 98:16]
  wire  rules_17_io_InvSet_out_2; // @[system.scala 98:16]
  wire  rules_17_io_ShrSet_in_0; // @[system.scala 98:16]
  wire  rules_17_io_ShrSet_in_1; // @[system.scala 98:16]
  wire  rules_17_io_ShrSet_in_2; // @[system.scala 98:16]
  wire  rules_17_io_ShrSet_out_0; // @[system.scala 98:16]
  wire  rules_17_io_ShrSet_out_1; // @[system.scala 98:16]
  wire  rules_17_io_ShrSet_out_2; // @[system.scala 98:16]
  wire  rules_17_io_ExGntd_in; // @[system.scala 98:16]
  wire  rules_17_io_ExGntd_out; // @[system.scala 98:16]
  wire [2:0] rules_17_io_CurCmd_in; // @[system.scala 98:16]
  wire [2:0] rules_17_io_CurCmd_out; // @[system.scala 98:16]
  wire [1:0] rules_17_io_CurPtr_in; // @[system.scala 98:16]
  wire [1:0] rules_17_io_CurPtr_out; // @[system.scala 98:16]
  wire [1:0] rules_17_io_MemData_in; // @[system.scala 98:16]
  wire [1:0] rules_17_io_MemData_out; // @[system.scala 98:16]
  wire [1:0] rules_17_io_AuxData_in; // @[system.scala 98:16]
  wire [1:0] rules_17_io_AuxData_out; // @[system.scala 98:16]
  wire  rules_18_io_en_r; // @[system.scala 101:16]
  wire [1:0] rules_18_io_Cache_in_0_State; // @[system.scala 101:16]
  wire [1:0] rules_18_io_Cache_in_0_Data; // @[system.scala 101:16]
  wire [1:0] rules_18_io_Cache_in_1_State; // @[system.scala 101:16]
  wire [1:0] rules_18_io_Cache_in_1_Data; // @[system.scala 101:16]
  wire [1:0] rules_18_io_Cache_in_2_State; // @[system.scala 101:16]
  wire [1:0] rules_18_io_Cache_in_2_Data; // @[system.scala 101:16]
  wire [1:0] rules_18_io_Cache_out_0_State; // @[system.scala 101:16]
  wire [1:0] rules_18_io_Cache_out_0_Data; // @[system.scala 101:16]
  wire [1:0] rules_18_io_Cache_out_1_State; // @[system.scala 101:16]
  wire [1:0] rules_18_io_Cache_out_1_Data; // @[system.scala 101:16]
  wire [1:0] rules_18_io_Cache_out_2_State; // @[system.scala 101:16]
  wire [1:0] rules_18_io_Cache_out_2_Data; // @[system.scala 101:16]
  wire [2:0] rules_18_io_Chan1_in_0_Cmd; // @[system.scala 101:16]
  wire [1:0] rules_18_io_Chan1_in_0_Data; // @[system.scala 101:16]
  wire [2:0] rules_18_io_Chan1_in_1_Cmd; // @[system.scala 101:16]
  wire [1:0] rules_18_io_Chan1_in_1_Data; // @[system.scala 101:16]
  wire [2:0] rules_18_io_Chan1_in_2_Cmd; // @[system.scala 101:16]
  wire [1:0] rules_18_io_Chan1_in_2_Data; // @[system.scala 101:16]
  wire [2:0] rules_18_io_Chan1_out_0_Cmd; // @[system.scala 101:16]
  wire [1:0] rules_18_io_Chan1_out_0_Data; // @[system.scala 101:16]
  wire [2:0] rules_18_io_Chan1_out_1_Cmd; // @[system.scala 101:16]
  wire [1:0] rules_18_io_Chan1_out_1_Data; // @[system.scala 101:16]
  wire [2:0] rules_18_io_Chan1_out_2_Cmd; // @[system.scala 101:16]
  wire [1:0] rules_18_io_Chan1_out_2_Data; // @[system.scala 101:16]
  wire [2:0] rules_18_io_Chan2_in_0_Cmd; // @[system.scala 101:16]
  wire [1:0] rules_18_io_Chan2_in_0_Data; // @[system.scala 101:16]
  wire [2:0] rules_18_io_Chan2_in_1_Cmd; // @[system.scala 101:16]
  wire [1:0] rules_18_io_Chan2_in_1_Data; // @[system.scala 101:16]
  wire [2:0] rules_18_io_Chan2_in_2_Cmd; // @[system.scala 101:16]
  wire [1:0] rules_18_io_Chan2_in_2_Data; // @[system.scala 101:16]
  wire [2:0] rules_18_io_Chan2_out_0_Cmd; // @[system.scala 101:16]
  wire [1:0] rules_18_io_Chan2_out_0_Data; // @[system.scala 101:16]
  wire [2:0] rules_18_io_Chan2_out_1_Cmd; // @[system.scala 101:16]
  wire [1:0] rules_18_io_Chan2_out_1_Data; // @[system.scala 101:16]
  wire [2:0] rules_18_io_Chan2_out_2_Cmd; // @[system.scala 101:16]
  wire [1:0] rules_18_io_Chan2_out_2_Data; // @[system.scala 101:16]
  wire [2:0] rules_18_io_Chan3_in_0_Cmd; // @[system.scala 101:16]
  wire [1:0] rules_18_io_Chan3_in_0_Data; // @[system.scala 101:16]
  wire [2:0] rules_18_io_Chan3_in_1_Cmd; // @[system.scala 101:16]
  wire [1:0] rules_18_io_Chan3_in_1_Data; // @[system.scala 101:16]
  wire [2:0] rules_18_io_Chan3_in_2_Cmd; // @[system.scala 101:16]
  wire [1:0] rules_18_io_Chan3_in_2_Data; // @[system.scala 101:16]
  wire [2:0] rules_18_io_Chan3_out_0_Cmd; // @[system.scala 101:16]
  wire [1:0] rules_18_io_Chan3_out_0_Data; // @[system.scala 101:16]
  wire [2:0] rules_18_io_Chan3_out_1_Cmd; // @[system.scala 101:16]
  wire [1:0] rules_18_io_Chan3_out_1_Data; // @[system.scala 101:16]
  wire [2:0] rules_18_io_Chan3_out_2_Cmd; // @[system.scala 101:16]
  wire [1:0] rules_18_io_Chan3_out_2_Data; // @[system.scala 101:16]
  wire  rules_18_io_InvSet_in_0; // @[system.scala 101:16]
  wire  rules_18_io_InvSet_in_1; // @[system.scala 101:16]
  wire  rules_18_io_InvSet_in_2; // @[system.scala 101:16]
  wire  rules_18_io_InvSet_out_0; // @[system.scala 101:16]
  wire  rules_18_io_InvSet_out_1; // @[system.scala 101:16]
  wire  rules_18_io_InvSet_out_2; // @[system.scala 101:16]
  wire  rules_18_io_ShrSet_in_0; // @[system.scala 101:16]
  wire  rules_18_io_ShrSet_in_1; // @[system.scala 101:16]
  wire  rules_18_io_ShrSet_in_2; // @[system.scala 101:16]
  wire  rules_18_io_ShrSet_out_0; // @[system.scala 101:16]
  wire  rules_18_io_ShrSet_out_1; // @[system.scala 101:16]
  wire  rules_18_io_ShrSet_out_2; // @[system.scala 101:16]
  wire  rules_18_io_ExGntd_in; // @[system.scala 101:16]
  wire  rules_18_io_ExGntd_out; // @[system.scala 101:16]
  wire [2:0] rules_18_io_CurCmd_in; // @[system.scala 101:16]
  wire [2:0] rules_18_io_CurCmd_out; // @[system.scala 101:16]
  wire [1:0] rules_18_io_CurPtr_in; // @[system.scala 101:16]
  wire [1:0] rules_18_io_CurPtr_out; // @[system.scala 101:16]
  wire [1:0] rules_18_io_MemData_in; // @[system.scala 101:16]
  wire [1:0] rules_18_io_MemData_out; // @[system.scala 101:16]
  wire [1:0] rules_18_io_AuxData_in; // @[system.scala 101:16]
  wire [1:0] rules_18_io_AuxData_out; // @[system.scala 101:16]
  wire  rules_19_io_en_r; // @[system.scala 101:16]
  wire [1:0] rules_19_io_Cache_in_0_State; // @[system.scala 101:16]
  wire [1:0] rules_19_io_Cache_in_0_Data; // @[system.scala 101:16]
  wire [1:0] rules_19_io_Cache_in_1_State; // @[system.scala 101:16]
  wire [1:0] rules_19_io_Cache_in_1_Data; // @[system.scala 101:16]
  wire [1:0] rules_19_io_Cache_in_2_State; // @[system.scala 101:16]
  wire [1:0] rules_19_io_Cache_in_2_Data; // @[system.scala 101:16]
  wire [1:0] rules_19_io_Cache_out_0_State; // @[system.scala 101:16]
  wire [1:0] rules_19_io_Cache_out_0_Data; // @[system.scala 101:16]
  wire [1:0] rules_19_io_Cache_out_1_State; // @[system.scala 101:16]
  wire [1:0] rules_19_io_Cache_out_1_Data; // @[system.scala 101:16]
  wire [1:0] rules_19_io_Cache_out_2_State; // @[system.scala 101:16]
  wire [1:0] rules_19_io_Cache_out_2_Data; // @[system.scala 101:16]
  wire [2:0] rules_19_io_Chan1_in_0_Cmd; // @[system.scala 101:16]
  wire [1:0] rules_19_io_Chan1_in_0_Data; // @[system.scala 101:16]
  wire [2:0] rules_19_io_Chan1_in_1_Cmd; // @[system.scala 101:16]
  wire [1:0] rules_19_io_Chan1_in_1_Data; // @[system.scala 101:16]
  wire [2:0] rules_19_io_Chan1_in_2_Cmd; // @[system.scala 101:16]
  wire [1:0] rules_19_io_Chan1_in_2_Data; // @[system.scala 101:16]
  wire [2:0] rules_19_io_Chan1_out_0_Cmd; // @[system.scala 101:16]
  wire [1:0] rules_19_io_Chan1_out_0_Data; // @[system.scala 101:16]
  wire [2:0] rules_19_io_Chan1_out_1_Cmd; // @[system.scala 101:16]
  wire [1:0] rules_19_io_Chan1_out_1_Data; // @[system.scala 101:16]
  wire [2:0] rules_19_io_Chan1_out_2_Cmd; // @[system.scala 101:16]
  wire [1:0] rules_19_io_Chan1_out_2_Data; // @[system.scala 101:16]
  wire [2:0] rules_19_io_Chan2_in_0_Cmd; // @[system.scala 101:16]
  wire [1:0] rules_19_io_Chan2_in_0_Data; // @[system.scala 101:16]
  wire [2:0] rules_19_io_Chan2_in_1_Cmd; // @[system.scala 101:16]
  wire [1:0] rules_19_io_Chan2_in_1_Data; // @[system.scala 101:16]
  wire [2:0] rules_19_io_Chan2_in_2_Cmd; // @[system.scala 101:16]
  wire [1:0] rules_19_io_Chan2_in_2_Data; // @[system.scala 101:16]
  wire [2:0] rules_19_io_Chan2_out_0_Cmd; // @[system.scala 101:16]
  wire [1:0] rules_19_io_Chan2_out_0_Data; // @[system.scala 101:16]
  wire [2:0] rules_19_io_Chan2_out_1_Cmd; // @[system.scala 101:16]
  wire [1:0] rules_19_io_Chan2_out_1_Data; // @[system.scala 101:16]
  wire [2:0] rules_19_io_Chan2_out_2_Cmd; // @[system.scala 101:16]
  wire [1:0] rules_19_io_Chan2_out_2_Data; // @[system.scala 101:16]
  wire [2:0] rules_19_io_Chan3_in_0_Cmd; // @[system.scala 101:16]
  wire [1:0] rules_19_io_Chan3_in_0_Data; // @[system.scala 101:16]
  wire [2:0] rules_19_io_Chan3_in_1_Cmd; // @[system.scala 101:16]
  wire [1:0] rules_19_io_Chan3_in_1_Data; // @[system.scala 101:16]
  wire [2:0] rules_19_io_Chan3_in_2_Cmd; // @[system.scala 101:16]
  wire [1:0] rules_19_io_Chan3_in_2_Data; // @[system.scala 101:16]
  wire [2:0] rules_19_io_Chan3_out_0_Cmd; // @[system.scala 101:16]
  wire [1:0] rules_19_io_Chan3_out_0_Data; // @[system.scala 101:16]
  wire [2:0] rules_19_io_Chan3_out_1_Cmd; // @[system.scala 101:16]
  wire [1:0] rules_19_io_Chan3_out_1_Data; // @[system.scala 101:16]
  wire [2:0] rules_19_io_Chan3_out_2_Cmd; // @[system.scala 101:16]
  wire [1:0] rules_19_io_Chan3_out_2_Data; // @[system.scala 101:16]
  wire  rules_19_io_InvSet_in_0; // @[system.scala 101:16]
  wire  rules_19_io_InvSet_in_1; // @[system.scala 101:16]
  wire  rules_19_io_InvSet_in_2; // @[system.scala 101:16]
  wire  rules_19_io_InvSet_out_0; // @[system.scala 101:16]
  wire  rules_19_io_InvSet_out_1; // @[system.scala 101:16]
  wire  rules_19_io_InvSet_out_2; // @[system.scala 101:16]
  wire  rules_19_io_ShrSet_in_0; // @[system.scala 101:16]
  wire  rules_19_io_ShrSet_in_1; // @[system.scala 101:16]
  wire  rules_19_io_ShrSet_in_2; // @[system.scala 101:16]
  wire  rules_19_io_ShrSet_out_0; // @[system.scala 101:16]
  wire  rules_19_io_ShrSet_out_1; // @[system.scala 101:16]
  wire  rules_19_io_ShrSet_out_2; // @[system.scala 101:16]
  wire  rules_19_io_ExGntd_in; // @[system.scala 101:16]
  wire  rules_19_io_ExGntd_out; // @[system.scala 101:16]
  wire [2:0] rules_19_io_CurCmd_in; // @[system.scala 101:16]
  wire [2:0] rules_19_io_CurCmd_out; // @[system.scala 101:16]
  wire [1:0] rules_19_io_CurPtr_in; // @[system.scala 101:16]
  wire [1:0] rules_19_io_CurPtr_out; // @[system.scala 101:16]
  wire [1:0] rules_19_io_MemData_in; // @[system.scala 101:16]
  wire [1:0] rules_19_io_MemData_out; // @[system.scala 101:16]
  wire [1:0] rules_19_io_AuxData_in; // @[system.scala 101:16]
  wire [1:0] rules_19_io_AuxData_out; // @[system.scala 101:16]
  wire  rules_20_io_en_r; // @[system.scala 104:16]
  wire [1:0] rules_20_io_Cache_in_0_State; // @[system.scala 104:16]
  wire [1:0] rules_20_io_Cache_in_0_Data; // @[system.scala 104:16]
  wire [1:0] rules_20_io_Cache_in_1_State; // @[system.scala 104:16]
  wire [1:0] rules_20_io_Cache_in_1_Data; // @[system.scala 104:16]
  wire [1:0] rules_20_io_Cache_in_2_State; // @[system.scala 104:16]
  wire [1:0] rules_20_io_Cache_in_2_Data; // @[system.scala 104:16]
  wire [1:0] rules_20_io_Cache_out_0_State; // @[system.scala 104:16]
  wire [1:0] rules_20_io_Cache_out_0_Data; // @[system.scala 104:16]
  wire [1:0] rules_20_io_Cache_out_1_State; // @[system.scala 104:16]
  wire [1:0] rules_20_io_Cache_out_1_Data; // @[system.scala 104:16]
  wire [1:0] rules_20_io_Cache_out_2_State; // @[system.scala 104:16]
  wire [1:0] rules_20_io_Cache_out_2_Data; // @[system.scala 104:16]
  wire [2:0] rules_20_io_Chan1_in_0_Cmd; // @[system.scala 104:16]
  wire [1:0] rules_20_io_Chan1_in_0_Data; // @[system.scala 104:16]
  wire [2:0] rules_20_io_Chan1_in_1_Cmd; // @[system.scala 104:16]
  wire [1:0] rules_20_io_Chan1_in_1_Data; // @[system.scala 104:16]
  wire [2:0] rules_20_io_Chan1_in_2_Cmd; // @[system.scala 104:16]
  wire [1:0] rules_20_io_Chan1_in_2_Data; // @[system.scala 104:16]
  wire [2:0] rules_20_io_Chan1_out_0_Cmd; // @[system.scala 104:16]
  wire [1:0] rules_20_io_Chan1_out_0_Data; // @[system.scala 104:16]
  wire [2:0] rules_20_io_Chan1_out_1_Cmd; // @[system.scala 104:16]
  wire [1:0] rules_20_io_Chan1_out_1_Data; // @[system.scala 104:16]
  wire [2:0] rules_20_io_Chan1_out_2_Cmd; // @[system.scala 104:16]
  wire [1:0] rules_20_io_Chan1_out_2_Data; // @[system.scala 104:16]
  wire [2:0] rules_20_io_Chan2_in_0_Cmd; // @[system.scala 104:16]
  wire [1:0] rules_20_io_Chan2_in_0_Data; // @[system.scala 104:16]
  wire [2:0] rules_20_io_Chan2_in_1_Cmd; // @[system.scala 104:16]
  wire [1:0] rules_20_io_Chan2_in_1_Data; // @[system.scala 104:16]
  wire [2:0] rules_20_io_Chan2_in_2_Cmd; // @[system.scala 104:16]
  wire [1:0] rules_20_io_Chan2_in_2_Data; // @[system.scala 104:16]
  wire [2:0] rules_20_io_Chan2_out_0_Cmd; // @[system.scala 104:16]
  wire [1:0] rules_20_io_Chan2_out_0_Data; // @[system.scala 104:16]
  wire [2:0] rules_20_io_Chan2_out_1_Cmd; // @[system.scala 104:16]
  wire [1:0] rules_20_io_Chan2_out_1_Data; // @[system.scala 104:16]
  wire [2:0] rules_20_io_Chan2_out_2_Cmd; // @[system.scala 104:16]
  wire [1:0] rules_20_io_Chan2_out_2_Data; // @[system.scala 104:16]
  wire [2:0] rules_20_io_Chan3_in_0_Cmd; // @[system.scala 104:16]
  wire [1:0] rules_20_io_Chan3_in_0_Data; // @[system.scala 104:16]
  wire [2:0] rules_20_io_Chan3_in_1_Cmd; // @[system.scala 104:16]
  wire [1:0] rules_20_io_Chan3_in_1_Data; // @[system.scala 104:16]
  wire [2:0] rules_20_io_Chan3_in_2_Cmd; // @[system.scala 104:16]
  wire [1:0] rules_20_io_Chan3_in_2_Data; // @[system.scala 104:16]
  wire [2:0] rules_20_io_Chan3_out_0_Cmd; // @[system.scala 104:16]
  wire [1:0] rules_20_io_Chan3_out_0_Data; // @[system.scala 104:16]
  wire [2:0] rules_20_io_Chan3_out_1_Cmd; // @[system.scala 104:16]
  wire [1:0] rules_20_io_Chan3_out_1_Data; // @[system.scala 104:16]
  wire [2:0] rules_20_io_Chan3_out_2_Cmd; // @[system.scala 104:16]
  wire [1:0] rules_20_io_Chan3_out_2_Data; // @[system.scala 104:16]
  wire  rules_20_io_InvSet_in_0; // @[system.scala 104:16]
  wire  rules_20_io_InvSet_in_1; // @[system.scala 104:16]
  wire  rules_20_io_InvSet_in_2; // @[system.scala 104:16]
  wire  rules_20_io_InvSet_out_0; // @[system.scala 104:16]
  wire  rules_20_io_InvSet_out_1; // @[system.scala 104:16]
  wire  rules_20_io_InvSet_out_2; // @[system.scala 104:16]
  wire  rules_20_io_ShrSet_in_0; // @[system.scala 104:16]
  wire  rules_20_io_ShrSet_in_1; // @[system.scala 104:16]
  wire  rules_20_io_ShrSet_in_2; // @[system.scala 104:16]
  wire  rules_20_io_ShrSet_out_0; // @[system.scala 104:16]
  wire  rules_20_io_ShrSet_out_1; // @[system.scala 104:16]
  wire  rules_20_io_ShrSet_out_2; // @[system.scala 104:16]
  wire  rules_20_io_ExGntd_in; // @[system.scala 104:16]
  wire  rules_20_io_ExGntd_out; // @[system.scala 104:16]
  wire [2:0] rules_20_io_CurCmd_in; // @[system.scala 104:16]
  wire [2:0] rules_20_io_CurCmd_out; // @[system.scala 104:16]
  wire [1:0] rules_20_io_CurPtr_in; // @[system.scala 104:16]
  wire [1:0] rules_20_io_CurPtr_out; // @[system.scala 104:16]
  wire [1:0] rules_20_io_MemData_in; // @[system.scala 104:16]
  wire [1:0] rules_20_io_MemData_out; // @[system.scala 104:16]
  wire [1:0] rules_20_io_AuxData_in; // @[system.scala 104:16]
  wire [1:0] rules_20_io_AuxData_out; // @[system.scala 104:16]
  wire  rules_21_io_en_r; // @[system.scala 104:16]
  wire [1:0] rules_21_io_Cache_in_0_State; // @[system.scala 104:16]
  wire [1:0] rules_21_io_Cache_in_0_Data; // @[system.scala 104:16]
  wire [1:0] rules_21_io_Cache_in_1_State; // @[system.scala 104:16]
  wire [1:0] rules_21_io_Cache_in_1_Data; // @[system.scala 104:16]
  wire [1:0] rules_21_io_Cache_in_2_State; // @[system.scala 104:16]
  wire [1:0] rules_21_io_Cache_in_2_Data; // @[system.scala 104:16]
  wire [1:0] rules_21_io_Cache_out_0_State; // @[system.scala 104:16]
  wire [1:0] rules_21_io_Cache_out_0_Data; // @[system.scala 104:16]
  wire [1:0] rules_21_io_Cache_out_1_State; // @[system.scala 104:16]
  wire [1:0] rules_21_io_Cache_out_1_Data; // @[system.scala 104:16]
  wire [1:0] rules_21_io_Cache_out_2_State; // @[system.scala 104:16]
  wire [1:0] rules_21_io_Cache_out_2_Data; // @[system.scala 104:16]
  wire [2:0] rules_21_io_Chan1_in_0_Cmd; // @[system.scala 104:16]
  wire [1:0] rules_21_io_Chan1_in_0_Data; // @[system.scala 104:16]
  wire [2:0] rules_21_io_Chan1_in_1_Cmd; // @[system.scala 104:16]
  wire [1:0] rules_21_io_Chan1_in_1_Data; // @[system.scala 104:16]
  wire [2:0] rules_21_io_Chan1_in_2_Cmd; // @[system.scala 104:16]
  wire [1:0] rules_21_io_Chan1_in_2_Data; // @[system.scala 104:16]
  wire [2:0] rules_21_io_Chan1_out_0_Cmd; // @[system.scala 104:16]
  wire [1:0] rules_21_io_Chan1_out_0_Data; // @[system.scala 104:16]
  wire [2:0] rules_21_io_Chan1_out_1_Cmd; // @[system.scala 104:16]
  wire [1:0] rules_21_io_Chan1_out_1_Data; // @[system.scala 104:16]
  wire [2:0] rules_21_io_Chan1_out_2_Cmd; // @[system.scala 104:16]
  wire [1:0] rules_21_io_Chan1_out_2_Data; // @[system.scala 104:16]
  wire [2:0] rules_21_io_Chan2_in_0_Cmd; // @[system.scala 104:16]
  wire [1:0] rules_21_io_Chan2_in_0_Data; // @[system.scala 104:16]
  wire [2:0] rules_21_io_Chan2_in_1_Cmd; // @[system.scala 104:16]
  wire [1:0] rules_21_io_Chan2_in_1_Data; // @[system.scala 104:16]
  wire [2:0] rules_21_io_Chan2_in_2_Cmd; // @[system.scala 104:16]
  wire [1:0] rules_21_io_Chan2_in_2_Data; // @[system.scala 104:16]
  wire [2:0] rules_21_io_Chan2_out_0_Cmd; // @[system.scala 104:16]
  wire [1:0] rules_21_io_Chan2_out_0_Data; // @[system.scala 104:16]
  wire [2:0] rules_21_io_Chan2_out_1_Cmd; // @[system.scala 104:16]
  wire [1:0] rules_21_io_Chan2_out_1_Data; // @[system.scala 104:16]
  wire [2:0] rules_21_io_Chan2_out_2_Cmd; // @[system.scala 104:16]
  wire [1:0] rules_21_io_Chan2_out_2_Data; // @[system.scala 104:16]
  wire [2:0] rules_21_io_Chan3_in_0_Cmd; // @[system.scala 104:16]
  wire [1:0] rules_21_io_Chan3_in_0_Data; // @[system.scala 104:16]
  wire [2:0] rules_21_io_Chan3_in_1_Cmd; // @[system.scala 104:16]
  wire [1:0] rules_21_io_Chan3_in_1_Data; // @[system.scala 104:16]
  wire [2:0] rules_21_io_Chan3_in_2_Cmd; // @[system.scala 104:16]
  wire [1:0] rules_21_io_Chan3_in_2_Data; // @[system.scala 104:16]
  wire [2:0] rules_21_io_Chan3_out_0_Cmd; // @[system.scala 104:16]
  wire [1:0] rules_21_io_Chan3_out_0_Data; // @[system.scala 104:16]
  wire [2:0] rules_21_io_Chan3_out_1_Cmd; // @[system.scala 104:16]
  wire [1:0] rules_21_io_Chan3_out_1_Data; // @[system.scala 104:16]
  wire [2:0] rules_21_io_Chan3_out_2_Cmd; // @[system.scala 104:16]
  wire [1:0] rules_21_io_Chan3_out_2_Data; // @[system.scala 104:16]
  wire  rules_21_io_InvSet_in_0; // @[system.scala 104:16]
  wire  rules_21_io_InvSet_in_1; // @[system.scala 104:16]
  wire  rules_21_io_InvSet_in_2; // @[system.scala 104:16]
  wire  rules_21_io_InvSet_out_0; // @[system.scala 104:16]
  wire  rules_21_io_InvSet_out_1; // @[system.scala 104:16]
  wire  rules_21_io_InvSet_out_2; // @[system.scala 104:16]
  wire  rules_21_io_ShrSet_in_0; // @[system.scala 104:16]
  wire  rules_21_io_ShrSet_in_1; // @[system.scala 104:16]
  wire  rules_21_io_ShrSet_in_2; // @[system.scala 104:16]
  wire  rules_21_io_ShrSet_out_0; // @[system.scala 104:16]
  wire  rules_21_io_ShrSet_out_1; // @[system.scala 104:16]
  wire  rules_21_io_ShrSet_out_2; // @[system.scala 104:16]
  wire  rules_21_io_ExGntd_in; // @[system.scala 104:16]
  wire  rules_21_io_ExGntd_out; // @[system.scala 104:16]
  wire [2:0] rules_21_io_CurCmd_in; // @[system.scala 104:16]
  wire [2:0] rules_21_io_CurCmd_out; // @[system.scala 104:16]
  wire [1:0] rules_21_io_CurPtr_in; // @[system.scala 104:16]
  wire [1:0] rules_21_io_CurPtr_out; // @[system.scala 104:16]
  wire [1:0] rules_21_io_MemData_in; // @[system.scala 104:16]
  wire [1:0] rules_21_io_MemData_out; // @[system.scala 104:16]
  wire [1:0] rules_21_io_AuxData_in; // @[system.scala 104:16]
  wire [1:0] rules_21_io_AuxData_out; // @[system.scala 104:16]
  wire  rules_22_io_en_r; // @[system.scala 107:16]
  wire [1:0] rules_22_io_Cache_in_0_State; // @[system.scala 107:16]
  wire [1:0] rules_22_io_Cache_in_0_Data; // @[system.scala 107:16]
  wire [1:0] rules_22_io_Cache_in_1_State; // @[system.scala 107:16]
  wire [1:0] rules_22_io_Cache_in_1_Data; // @[system.scala 107:16]
  wire [1:0] rules_22_io_Cache_in_2_State; // @[system.scala 107:16]
  wire [1:0] rules_22_io_Cache_in_2_Data; // @[system.scala 107:16]
  wire [1:0] rules_22_io_Cache_out_0_State; // @[system.scala 107:16]
  wire [1:0] rules_22_io_Cache_out_0_Data; // @[system.scala 107:16]
  wire [1:0] rules_22_io_Cache_out_1_State; // @[system.scala 107:16]
  wire [1:0] rules_22_io_Cache_out_1_Data; // @[system.scala 107:16]
  wire [1:0] rules_22_io_Cache_out_2_State; // @[system.scala 107:16]
  wire [1:0] rules_22_io_Cache_out_2_Data; // @[system.scala 107:16]
  wire [2:0] rules_22_io_Chan1_in_0_Cmd; // @[system.scala 107:16]
  wire [1:0] rules_22_io_Chan1_in_0_Data; // @[system.scala 107:16]
  wire [2:0] rules_22_io_Chan1_in_1_Cmd; // @[system.scala 107:16]
  wire [1:0] rules_22_io_Chan1_in_1_Data; // @[system.scala 107:16]
  wire [2:0] rules_22_io_Chan1_in_2_Cmd; // @[system.scala 107:16]
  wire [1:0] rules_22_io_Chan1_in_2_Data; // @[system.scala 107:16]
  wire [2:0] rules_22_io_Chan1_out_0_Cmd; // @[system.scala 107:16]
  wire [1:0] rules_22_io_Chan1_out_0_Data; // @[system.scala 107:16]
  wire [2:0] rules_22_io_Chan1_out_1_Cmd; // @[system.scala 107:16]
  wire [1:0] rules_22_io_Chan1_out_1_Data; // @[system.scala 107:16]
  wire [2:0] rules_22_io_Chan1_out_2_Cmd; // @[system.scala 107:16]
  wire [1:0] rules_22_io_Chan1_out_2_Data; // @[system.scala 107:16]
  wire [2:0] rules_22_io_Chan2_in_0_Cmd; // @[system.scala 107:16]
  wire [1:0] rules_22_io_Chan2_in_0_Data; // @[system.scala 107:16]
  wire [2:0] rules_22_io_Chan2_in_1_Cmd; // @[system.scala 107:16]
  wire [1:0] rules_22_io_Chan2_in_1_Data; // @[system.scala 107:16]
  wire [2:0] rules_22_io_Chan2_in_2_Cmd; // @[system.scala 107:16]
  wire [1:0] rules_22_io_Chan2_in_2_Data; // @[system.scala 107:16]
  wire [2:0] rules_22_io_Chan2_out_0_Cmd; // @[system.scala 107:16]
  wire [1:0] rules_22_io_Chan2_out_0_Data; // @[system.scala 107:16]
  wire [2:0] rules_22_io_Chan2_out_1_Cmd; // @[system.scala 107:16]
  wire [1:0] rules_22_io_Chan2_out_1_Data; // @[system.scala 107:16]
  wire [2:0] rules_22_io_Chan2_out_2_Cmd; // @[system.scala 107:16]
  wire [1:0] rules_22_io_Chan2_out_2_Data; // @[system.scala 107:16]
  wire [2:0] rules_22_io_Chan3_in_0_Cmd; // @[system.scala 107:16]
  wire [1:0] rules_22_io_Chan3_in_0_Data; // @[system.scala 107:16]
  wire [2:0] rules_22_io_Chan3_in_1_Cmd; // @[system.scala 107:16]
  wire [1:0] rules_22_io_Chan3_in_1_Data; // @[system.scala 107:16]
  wire [2:0] rules_22_io_Chan3_in_2_Cmd; // @[system.scala 107:16]
  wire [1:0] rules_22_io_Chan3_in_2_Data; // @[system.scala 107:16]
  wire [2:0] rules_22_io_Chan3_out_0_Cmd; // @[system.scala 107:16]
  wire [1:0] rules_22_io_Chan3_out_0_Data; // @[system.scala 107:16]
  wire [2:0] rules_22_io_Chan3_out_1_Cmd; // @[system.scala 107:16]
  wire [1:0] rules_22_io_Chan3_out_1_Data; // @[system.scala 107:16]
  wire [2:0] rules_22_io_Chan3_out_2_Cmd; // @[system.scala 107:16]
  wire [1:0] rules_22_io_Chan3_out_2_Data; // @[system.scala 107:16]
  wire  rules_22_io_InvSet_in_0; // @[system.scala 107:16]
  wire  rules_22_io_InvSet_in_1; // @[system.scala 107:16]
  wire  rules_22_io_InvSet_in_2; // @[system.scala 107:16]
  wire  rules_22_io_InvSet_out_0; // @[system.scala 107:16]
  wire  rules_22_io_InvSet_out_1; // @[system.scala 107:16]
  wire  rules_22_io_InvSet_out_2; // @[system.scala 107:16]
  wire  rules_22_io_ShrSet_in_0; // @[system.scala 107:16]
  wire  rules_22_io_ShrSet_in_1; // @[system.scala 107:16]
  wire  rules_22_io_ShrSet_in_2; // @[system.scala 107:16]
  wire  rules_22_io_ShrSet_out_0; // @[system.scala 107:16]
  wire  rules_22_io_ShrSet_out_1; // @[system.scala 107:16]
  wire  rules_22_io_ShrSet_out_2; // @[system.scala 107:16]
  wire  rules_22_io_ExGntd_in; // @[system.scala 107:16]
  wire  rules_22_io_ExGntd_out; // @[system.scala 107:16]
  wire [2:0] rules_22_io_CurCmd_in; // @[system.scala 107:16]
  wire [2:0] rules_22_io_CurCmd_out; // @[system.scala 107:16]
  wire [1:0] rules_22_io_CurPtr_in; // @[system.scala 107:16]
  wire [1:0] rules_22_io_CurPtr_out; // @[system.scala 107:16]
  wire [1:0] rules_22_io_MemData_in; // @[system.scala 107:16]
  wire [1:0] rules_22_io_MemData_out; // @[system.scala 107:16]
  wire [1:0] rules_22_io_AuxData_in; // @[system.scala 107:16]
  wire [1:0] rules_22_io_AuxData_out; // @[system.scala 107:16]
  wire  rules_23_io_en_r; // @[system.scala 107:16]
  wire [1:0] rules_23_io_Cache_in_0_State; // @[system.scala 107:16]
  wire [1:0] rules_23_io_Cache_in_0_Data; // @[system.scala 107:16]
  wire [1:0] rules_23_io_Cache_in_1_State; // @[system.scala 107:16]
  wire [1:0] rules_23_io_Cache_in_1_Data; // @[system.scala 107:16]
  wire [1:0] rules_23_io_Cache_in_2_State; // @[system.scala 107:16]
  wire [1:0] rules_23_io_Cache_in_2_Data; // @[system.scala 107:16]
  wire [1:0] rules_23_io_Cache_out_0_State; // @[system.scala 107:16]
  wire [1:0] rules_23_io_Cache_out_0_Data; // @[system.scala 107:16]
  wire [1:0] rules_23_io_Cache_out_1_State; // @[system.scala 107:16]
  wire [1:0] rules_23_io_Cache_out_1_Data; // @[system.scala 107:16]
  wire [1:0] rules_23_io_Cache_out_2_State; // @[system.scala 107:16]
  wire [1:0] rules_23_io_Cache_out_2_Data; // @[system.scala 107:16]
  wire [2:0] rules_23_io_Chan1_in_0_Cmd; // @[system.scala 107:16]
  wire [1:0] rules_23_io_Chan1_in_0_Data; // @[system.scala 107:16]
  wire [2:0] rules_23_io_Chan1_in_1_Cmd; // @[system.scala 107:16]
  wire [1:0] rules_23_io_Chan1_in_1_Data; // @[system.scala 107:16]
  wire [2:0] rules_23_io_Chan1_in_2_Cmd; // @[system.scala 107:16]
  wire [1:0] rules_23_io_Chan1_in_2_Data; // @[system.scala 107:16]
  wire [2:0] rules_23_io_Chan1_out_0_Cmd; // @[system.scala 107:16]
  wire [1:0] rules_23_io_Chan1_out_0_Data; // @[system.scala 107:16]
  wire [2:0] rules_23_io_Chan1_out_1_Cmd; // @[system.scala 107:16]
  wire [1:0] rules_23_io_Chan1_out_1_Data; // @[system.scala 107:16]
  wire [2:0] rules_23_io_Chan1_out_2_Cmd; // @[system.scala 107:16]
  wire [1:0] rules_23_io_Chan1_out_2_Data; // @[system.scala 107:16]
  wire [2:0] rules_23_io_Chan2_in_0_Cmd; // @[system.scala 107:16]
  wire [1:0] rules_23_io_Chan2_in_0_Data; // @[system.scala 107:16]
  wire [2:0] rules_23_io_Chan2_in_1_Cmd; // @[system.scala 107:16]
  wire [1:0] rules_23_io_Chan2_in_1_Data; // @[system.scala 107:16]
  wire [2:0] rules_23_io_Chan2_in_2_Cmd; // @[system.scala 107:16]
  wire [1:0] rules_23_io_Chan2_in_2_Data; // @[system.scala 107:16]
  wire [2:0] rules_23_io_Chan2_out_0_Cmd; // @[system.scala 107:16]
  wire [1:0] rules_23_io_Chan2_out_0_Data; // @[system.scala 107:16]
  wire [2:0] rules_23_io_Chan2_out_1_Cmd; // @[system.scala 107:16]
  wire [1:0] rules_23_io_Chan2_out_1_Data; // @[system.scala 107:16]
  wire [2:0] rules_23_io_Chan2_out_2_Cmd; // @[system.scala 107:16]
  wire [1:0] rules_23_io_Chan2_out_2_Data; // @[system.scala 107:16]
  wire [2:0] rules_23_io_Chan3_in_0_Cmd; // @[system.scala 107:16]
  wire [1:0] rules_23_io_Chan3_in_0_Data; // @[system.scala 107:16]
  wire [2:0] rules_23_io_Chan3_in_1_Cmd; // @[system.scala 107:16]
  wire [1:0] rules_23_io_Chan3_in_1_Data; // @[system.scala 107:16]
  wire [2:0] rules_23_io_Chan3_in_2_Cmd; // @[system.scala 107:16]
  wire [1:0] rules_23_io_Chan3_in_2_Data; // @[system.scala 107:16]
  wire [2:0] rules_23_io_Chan3_out_0_Cmd; // @[system.scala 107:16]
  wire [1:0] rules_23_io_Chan3_out_0_Data; // @[system.scala 107:16]
  wire [2:0] rules_23_io_Chan3_out_1_Cmd; // @[system.scala 107:16]
  wire [1:0] rules_23_io_Chan3_out_1_Data; // @[system.scala 107:16]
  wire [2:0] rules_23_io_Chan3_out_2_Cmd; // @[system.scala 107:16]
  wire [1:0] rules_23_io_Chan3_out_2_Data; // @[system.scala 107:16]
  wire  rules_23_io_InvSet_in_0; // @[system.scala 107:16]
  wire  rules_23_io_InvSet_in_1; // @[system.scala 107:16]
  wire  rules_23_io_InvSet_in_2; // @[system.scala 107:16]
  wire  rules_23_io_InvSet_out_0; // @[system.scala 107:16]
  wire  rules_23_io_InvSet_out_1; // @[system.scala 107:16]
  wire  rules_23_io_InvSet_out_2; // @[system.scala 107:16]
  wire  rules_23_io_ShrSet_in_0; // @[system.scala 107:16]
  wire  rules_23_io_ShrSet_in_1; // @[system.scala 107:16]
  wire  rules_23_io_ShrSet_in_2; // @[system.scala 107:16]
  wire  rules_23_io_ShrSet_out_0; // @[system.scala 107:16]
  wire  rules_23_io_ShrSet_out_1; // @[system.scala 107:16]
  wire  rules_23_io_ShrSet_out_2; // @[system.scala 107:16]
  wire  rules_23_io_ExGntd_in; // @[system.scala 107:16]
  wire  rules_23_io_ExGntd_out; // @[system.scala 107:16]
  wire [2:0] rules_23_io_CurCmd_in; // @[system.scala 107:16]
  wire [2:0] rules_23_io_CurCmd_out; // @[system.scala 107:16]
  wire [1:0] rules_23_io_CurPtr_in; // @[system.scala 107:16]
  wire [1:0] rules_23_io_CurPtr_out; // @[system.scala 107:16]
  wire [1:0] rules_23_io_MemData_in; // @[system.scala 107:16]
  wire [1:0] rules_23_io_MemData_out; // @[system.scala 107:16]
  wire [1:0] rules_23_io_AuxData_in; // @[system.scala 107:16]
  wire [1:0] rules_23_io_AuxData_out; // @[system.scala 107:16]
  wire  rules_24_io_en_r; // @[system.scala 110:16]
  wire [1:0] rules_24_io_Cache_in_0_State; // @[system.scala 110:16]
  wire [1:0] rules_24_io_Cache_in_0_Data; // @[system.scala 110:16]
  wire [1:0] rules_24_io_Cache_in_1_State; // @[system.scala 110:16]
  wire [1:0] rules_24_io_Cache_in_1_Data; // @[system.scala 110:16]
  wire [1:0] rules_24_io_Cache_in_2_State; // @[system.scala 110:16]
  wire [1:0] rules_24_io_Cache_in_2_Data; // @[system.scala 110:16]
  wire [1:0] rules_24_io_Cache_out_0_State; // @[system.scala 110:16]
  wire [1:0] rules_24_io_Cache_out_0_Data; // @[system.scala 110:16]
  wire [1:0] rules_24_io_Cache_out_1_State; // @[system.scala 110:16]
  wire [1:0] rules_24_io_Cache_out_1_Data; // @[system.scala 110:16]
  wire [1:0] rules_24_io_Cache_out_2_State; // @[system.scala 110:16]
  wire [1:0] rules_24_io_Cache_out_2_Data; // @[system.scala 110:16]
  wire [2:0] rules_24_io_Chan1_in_0_Cmd; // @[system.scala 110:16]
  wire [1:0] rules_24_io_Chan1_in_0_Data; // @[system.scala 110:16]
  wire [2:0] rules_24_io_Chan1_in_1_Cmd; // @[system.scala 110:16]
  wire [1:0] rules_24_io_Chan1_in_1_Data; // @[system.scala 110:16]
  wire [2:0] rules_24_io_Chan1_in_2_Cmd; // @[system.scala 110:16]
  wire [1:0] rules_24_io_Chan1_in_2_Data; // @[system.scala 110:16]
  wire [2:0] rules_24_io_Chan1_out_0_Cmd; // @[system.scala 110:16]
  wire [1:0] rules_24_io_Chan1_out_0_Data; // @[system.scala 110:16]
  wire [2:0] rules_24_io_Chan1_out_1_Cmd; // @[system.scala 110:16]
  wire [1:0] rules_24_io_Chan1_out_1_Data; // @[system.scala 110:16]
  wire [2:0] rules_24_io_Chan1_out_2_Cmd; // @[system.scala 110:16]
  wire [1:0] rules_24_io_Chan1_out_2_Data; // @[system.scala 110:16]
  wire [2:0] rules_24_io_Chan2_in_0_Cmd; // @[system.scala 110:16]
  wire [1:0] rules_24_io_Chan2_in_0_Data; // @[system.scala 110:16]
  wire [2:0] rules_24_io_Chan2_in_1_Cmd; // @[system.scala 110:16]
  wire [1:0] rules_24_io_Chan2_in_1_Data; // @[system.scala 110:16]
  wire [2:0] rules_24_io_Chan2_in_2_Cmd; // @[system.scala 110:16]
  wire [1:0] rules_24_io_Chan2_in_2_Data; // @[system.scala 110:16]
  wire [2:0] rules_24_io_Chan2_out_0_Cmd; // @[system.scala 110:16]
  wire [1:0] rules_24_io_Chan2_out_0_Data; // @[system.scala 110:16]
  wire [2:0] rules_24_io_Chan2_out_1_Cmd; // @[system.scala 110:16]
  wire [1:0] rules_24_io_Chan2_out_1_Data; // @[system.scala 110:16]
  wire [2:0] rules_24_io_Chan2_out_2_Cmd; // @[system.scala 110:16]
  wire [1:0] rules_24_io_Chan2_out_2_Data; // @[system.scala 110:16]
  wire [2:0] rules_24_io_Chan3_in_0_Cmd; // @[system.scala 110:16]
  wire [1:0] rules_24_io_Chan3_in_0_Data; // @[system.scala 110:16]
  wire [2:0] rules_24_io_Chan3_in_1_Cmd; // @[system.scala 110:16]
  wire [1:0] rules_24_io_Chan3_in_1_Data; // @[system.scala 110:16]
  wire [2:0] rules_24_io_Chan3_in_2_Cmd; // @[system.scala 110:16]
  wire [1:0] rules_24_io_Chan3_in_2_Data; // @[system.scala 110:16]
  wire [2:0] rules_24_io_Chan3_out_0_Cmd; // @[system.scala 110:16]
  wire [1:0] rules_24_io_Chan3_out_0_Data; // @[system.scala 110:16]
  wire [2:0] rules_24_io_Chan3_out_1_Cmd; // @[system.scala 110:16]
  wire [1:0] rules_24_io_Chan3_out_1_Data; // @[system.scala 110:16]
  wire [2:0] rules_24_io_Chan3_out_2_Cmd; // @[system.scala 110:16]
  wire [1:0] rules_24_io_Chan3_out_2_Data; // @[system.scala 110:16]
  wire  rules_24_io_InvSet_in_0; // @[system.scala 110:16]
  wire  rules_24_io_InvSet_in_1; // @[system.scala 110:16]
  wire  rules_24_io_InvSet_in_2; // @[system.scala 110:16]
  wire  rules_24_io_InvSet_out_0; // @[system.scala 110:16]
  wire  rules_24_io_InvSet_out_1; // @[system.scala 110:16]
  wire  rules_24_io_InvSet_out_2; // @[system.scala 110:16]
  wire  rules_24_io_ShrSet_in_0; // @[system.scala 110:16]
  wire  rules_24_io_ShrSet_in_1; // @[system.scala 110:16]
  wire  rules_24_io_ShrSet_in_2; // @[system.scala 110:16]
  wire  rules_24_io_ShrSet_out_0; // @[system.scala 110:16]
  wire  rules_24_io_ShrSet_out_1; // @[system.scala 110:16]
  wire  rules_24_io_ShrSet_out_2; // @[system.scala 110:16]
  wire  rules_24_io_ExGntd_in; // @[system.scala 110:16]
  wire  rules_24_io_ExGntd_out; // @[system.scala 110:16]
  wire [2:0] rules_24_io_CurCmd_in; // @[system.scala 110:16]
  wire [2:0] rules_24_io_CurCmd_out; // @[system.scala 110:16]
  wire [1:0] rules_24_io_CurPtr_in; // @[system.scala 110:16]
  wire [1:0] rules_24_io_CurPtr_out; // @[system.scala 110:16]
  wire [1:0] rules_24_io_MemData_in; // @[system.scala 110:16]
  wire [1:0] rules_24_io_MemData_out; // @[system.scala 110:16]
  wire [1:0] rules_24_io_AuxData_in; // @[system.scala 110:16]
  wire [1:0] rules_24_io_AuxData_out; // @[system.scala 110:16]
  wire  rules_25_io_en_r; // @[system.scala 110:16]
  wire [1:0] rules_25_io_Cache_in_0_State; // @[system.scala 110:16]
  wire [1:0] rules_25_io_Cache_in_0_Data; // @[system.scala 110:16]
  wire [1:0] rules_25_io_Cache_in_1_State; // @[system.scala 110:16]
  wire [1:0] rules_25_io_Cache_in_1_Data; // @[system.scala 110:16]
  wire [1:0] rules_25_io_Cache_in_2_State; // @[system.scala 110:16]
  wire [1:0] rules_25_io_Cache_in_2_Data; // @[system.scala 110:16]
  wire [1:0] rules_25_io_Cache_out_0_State; // @[system.scala 110:16]
  wire [1:0] rules_25_io_Cache_out_0_Data; // @[system.scala 110:16]
  wire [1:0] rules_25_io_Cache_out_1_State; // @[system.scala 110:16]
  wire [1:0] rules_25_io_Cache_out_1_Data; // @[system.scala 110:16]
  wire [1:0] rules_25_io_Cache_out_2_State; // @[system.scala 110:16]
  wire [1:0] rules_25_io_Cache_out_2_Data; // @[system.scala 110:16]
  wire [2:0] rules_25_io_Chan1_in_0_Cmd; // @[system.scala 110:16]
  wire [1:0] rules_25_io_Chan1_in_0_Data; // @[system.scala 110:16]
  wire [2:0] rules_25_io_Chan1_in_1_Cmd; // @[system.scala 110:16]
  wire [1:0] rules_25_io_Chan1_in_1_Data; // @[system.scala 110:16]
  wire [2:0] rules_25_io_Chan1_in_2_Cmd; // @[system.scala 110:16]
  wire [1:0] rules_25_io_Chan1_in_2_Data; // @[system.scala 110:16]
  wire [2:0] rules_25_io_Chan1_out_0_Cmd; // @[system.scala 110:16]
  wire [1:0] rules_25_io_Chan1_out_0_Data; // @[system.scala 110:16]
  wire [2:0] rules_25_io_Chan1_out_1_Cmd; // @[system.scala 110:16]
  wire [1:0] rules_25_io_Chan1_out_1_Data; // @[system.scala 110:16]
  wire [2:0] rules_25_io_Chan1_out_2_Cmd; // @[system.scala 110:16]
  wire [1:0] rules_25_io_Chan1_out_2_Data; // @[system.scala 110:16]
  wire [2:0] rules_25_io_Chan2_in_0_Cmd; // @[system.scala 110:16]
  wire [1:0] rules_25_io_Chan2_in_0_Data; // @[system.scala 110:16]
  wire [2:0] rules_25_io_Chan2_in_1_Cmd; // @[system.scala 110:16]
  wire [1:0] rules_25_io_Chan2_in_1_Data; // @[system.scala 110:16]
  wire [2:0] rules_25_io_Chan2_in_2_Cmd; // @[system.scala 110:16]
  wire [1:0] rules_25_io_Chan2_in_2_Data; // @[system.scala 110:16]
  wire [2:0] rules_25_io_Chan2_out_0_Cmd; // @[system.scala 110:16]
  wire [1:0] rules_25_io_Chan2_out_0_Data; // @[system.scala 110:16]
  wire [2:0] rules_25_io_Chan2_out_1_Cmd; // @[system.scala 110:16]
  wire [1:0] rules_25_io_Chan2_out_1_Data; // @[system.scala 110:16]
  wire [2:0] rules_25_io_Chan2_out_2_Cmd; // @[system.scala 110:16]
  wire [1:0] rules_25_io_Chan2_out_2_Data; // @[system.scala 110:16]
  wire [2:0] rules_25_io_Chan3_in_0_Cmd; // @[system.scala 110:16]
  wire [1:0] rules_25_io_Chan3_in_0_Data; // @[system.scala 110:16]
  wire [2:0] rules_25_io_Chan3_in_1_Cmd; // @[system.scala 110:16]
  wire [1:0] rules_25_io_Chan3_in_1_Data; // @[system.scala 110:16]
  wire [2:0] rules_25_io_Chan3_in_2_Cmd; // @[system.scala 110:16]
  wire [1:0] rules_25_io_Chan3_in_2_Data; // @[system.scala 110:16]
  wire [2:0] rules_25_io_Chan3_out_0_Cmd; // @[system.scala 110:16]
  wire [1:0] rules_25_io_Chan3_out_0_Data; // @[system.scala 110:16]
  wire [2:0] rules_25_io_Chan3_out_1_Cmd; // @[system.scala 110:16]
  wire [1:0] rules_25_io_Chan3_out_1_Data; // @[system.scala 110:16]
  wire [2:0] rules_25_io_Chan3_out_2_Cmd; // @[system.scala 110:16]
  wire [1:0] rules_25_io_Chan3_out_2_Data; // @[system.scala 110:16]
  wire  rules_25_io_InvSet_in_0; // @[system.scala 110:16]
  wire  rules_25_io_InvSet_in_1; // @[system.scala 110:16]
  wire  rules_25_io_InvSet_in_2; // @[system.scala 110:16]
  wire  rules_25_io_InvSet_out_0; // @[system.scala 110:16]
  wire  rules_25_io_InvSet_out_1; // @[system.scala 110:16]
  wire  rules_25_io_InvSet_out_2; // @[system.scala 110:16]
  wire  rules_25_io_ShrSet_in_0; // @[system.scala 110:16]
  wire  rules_25_io_ShrSet_in_1; // @[system.scala 110:16]
  wire  rules_25_io_ShrSet_in_2; // @[system.scala 110:16]
  wire  rules_25_io_ShrSet_out_0; // @[system.scala 110:16]
  wire  rules_25_io_ShrSet_out_1; // @[system.scala 110:16]
  wire  rules_25_io_ShrSet_out_2; // @[system.scala 110:16]
  wire  rules_25_io_ExGntd_in; // @[system.scala 110:16]
  wire  rules_25_io_ExGntd_out; // @[system.scala 110:16]
  wire [2:0] rules_25_io_CurCmd_in; // @[system.scala 110:16]
  wire [2:0] rules_25_io_CurCmd_out; // @[system.scala 110:16]
  wire [1:0] rules_25_io_CurPtr_in; // @[system.scala 110:16]
  wire [1:0] rules_25_io_CurPtr_out; // @[system.scala 110:16]
  wire [1:0] rules_25_io_MemData_in; // @[system.scala 110:16]
  wire [1:0] rules_25_io_MemData_out; // @[system.scala 110:16]
  wire [1:0] rules_25_io_AuxData_in; // @[system.scala 110:16]
  wire [1:0] rules_25_io_AuxData_out; // @[system.scala 110:16]
  reg [1:0] Cache_reg_0_State; // @[system.scala 23:24]
  reg [1:0] Cache_reg_0_Data; // @[system.scala 23:24]
  reg [1:0] Cache_reg_1_State; // @[system.scala 23:24]
  reg [1:0] Cache_reg_1_Data; // @[system.scala 23:24]
  reg [1:0] Cache_reg_2_State; // @[system.scala 23:24]
  reg [1:0] Cache_reg_2_Data; // @[system.scala 23:24]
  reg [2:0] Chan1_reg_0_Cmd; // @[system.scala 26:24]
  reg [1:0] Chan1_reg_0_Data; // @[system.scala 26:24]
  reg [2:0] Chan1_reg_1_Cmd; // @[system.scala 26:24]
  reg [1:0] Chan1_reg_1_Data; // @[system.scala 26:24]
  reg [2:0] Chan1_reg_2_Cmd; // @[system.scala 26:24]
  reg [1:0] Chan1_reg_2_Data; // @[system.scala 26:24]
  reg [2:0] Chan2_reg_0_Cmd; // @[system.scala 29:24]
  reg [1:0] Chan2_reg_0_Data; // @[system.scala 29:24]
  reg [2:0] Chan2_reg_1_Cmd; // @[system.scala 29:24]
  reg [1:0] Chan2_reg_1_Data; // @[system.scala 29:24]
  reg [2:0] Chan2_reg_2_Cmd; // @[system.scala 29:24]
  reg [1:0] Chan2_reg_2_Data; // @[system.scala 29:24]
  reg [2:0] Chan3_reg_0_Cmd; // @[system.scala 32:24]
  reg [1:0] Chan3_reg_0_Data; // @[system.scala 32:24]
  reg [2:0] Chan3_reg_1_Cmd; // @[system.scala 32:24]
  reg [1:0] Chan3_reg_1_Data; // @[system.scala 32:24]
  reg [2:0] Chan3_reg_2_Cmd; // @[system.scala 32:24]
  reg [1:0] Chan3_reg_2_Data; // @[system.scala 32:24]
  reg  InvSet_reg_0; // @[system.scala 35:25]
  reg  InvSet_reg_1; // @[system.scala 35:25]
  reg  InvSet_reg_2; // @[system.scala 35:25]
  reg  ShrSet_reg_0; // @[system.scala 38:25]
  reg  ShrSet_reg_1; // @[system.scala 38:25]
  reg  ShrSet_reg_2; // @[system.scala 38:25]
  reg  ExGntd_reg; // @[system.scala 41:25]
  reg [2:0] CurCmd_reg; // @[system.scala 44:25]
  reg [1:0] CurPtr_reg; // @[system.scala 47:25]
  reg [1:0] MemData_reg; // @[system.scala 50:26]
  reg [1:0] AuxData_reg; // @[system.scala 53:26]
  wire  _T = io_en_a == 5'h0; // @[system.scala 124:27]
  wire [1:0] _GEN_0 = _T ? rules_0_io_Cache_out_0_State : Cache_reg_0_State; // @[system.scala 125:21 126:11 23:24]
  wire [1:0] _GEN_1 = _T ? rules_0_io_Cache_out_0_Data : Cache_reg_0_Data; // @[system.scala 125:21 126:11 23:24]
  wire [1:0] _GEN_2 = _T ? rules_0_io_Cache_out_1_State : Cache_reg_1_State; // @[system.scala 125:21 126:11 23:24]
  wire [1:0] _GEN_3 = _T ? rules_0_io_Cache_out_1_Data : Cache_reg_1_Data; // @[system.scala 125:21 126:11 23:24]
  wire [1:0] _GEN_4 = _T ? rules_0_io_Cache_out_2_State : Cache_reg_2_State; // @[system.scala 125:21 126:11 23:24]
  wire [1:0] _GEN_5 = _T ? rules_0_io_Cache_out_2_Data : Cache_reg_2_Data; // @[system.scala 125:21 126:11 23:24]
  wire [2:0] _GEN_6 = _T ? rules_0_io_Chan1_out_0_Cmd : Chan1_reg_0_Cmd; // @[system.scala 125:21 127:11 26:24]
  wire [1:0] _GEN_7 = _T ? rules_0_io_Chan1_out_0_Data : Chan1_reg_0_Data; // @[system.scala 125:21 127:11 26:24]
  wire [2:0] _GEN_8 = _T ? rules_0_io_Chan1_out_1_Cmd : Chan1_reg_1_Cmd; // @[system.scala 125:21 127:11 26:24]
  wire [1:0] _GEN_9 = _T ? rules_0_io_Chan1_out_1_Data : Chan1_reg_1_Data; // @[system.scala 125:21 127:11 26:24]
  wire [2:0] _GEN_10 = _T ? rules_0_io_Chan1_out_2_Cmd : Chan1_reg_2_Cmd; // @[system.scala 125:21 127:11 26:24]
  wire [1:0] _GEN_11 = _T ? rules_0_io_Chan1_out_2_Data : Chan1_reg_2_Data; // @[system.scala 125:21 127:11 26:24]
  wire [2:0] _GEN_12 = _T ? rules_0_io_Chan2_out_0_Cmd : Chan2_reg_0_Cmd; // @[system.scala 125:21 128:11 29:24]
  wire [1:0] _GEN_13 = _T ? rules_0_io_Chan2_out_0_Data : Chan2_reg_0_Data; // @[system.scala 125:21 128:11 29:24]
  wire [2:0] _GEN_14 = _T ? rules_0_io_Chan2_out_1_Cmd : Chan2_reg_1_Cmd; // @[system.scala 125:21 128:11 29:24]
  wire [1:0] _GEN_15 = _T ? rules_0_io_Chan2_out_1_Data : Chan2_reg_1_Data; // @[system.scala 125:21 128:11 29:24]
  wire [2:0] _GEN_16 = _T ? rules_0_io_Chan2_out_2_Cmd : Chan2_reg_2_Cmd; // @[system.scala 125:21 128:11 29:24]
  wire [1:0] _GEN_17 = _T ? rules_0_io_Chan2_out_2_Data : Chan2_reg_2_Data; // @[system.scala 125:21 128:11 29:24]
  wire [2:0] _GEN_18 = _T ? rules_0_io_Chan3_out_0_Cmd : Chan3_reg_0_Cmd; // @[system.scala 125:21 129:11 32:24]
  wire [1:0] _GEN_19 = _T ? rules_0_io_Chan3_out_0_Data : Chan3_reg_0_Data; // @[system.scala 125:21 129:11 32:24]
  wire [2:0] _GEN_20 = _T ? rules_0_io_Chan3_out_1_Cmd : Chan3_reg_1_Cmd; // @[system.scala 125:21 129:11 32:24]
  wire [1:0] _GEN_21 = _T ? rules_0_io_Chan3_out_1_Data : Chan3_reg_1_Data; // @[system.scala 125:21 129:11 32:24]
  wire [2:0] _GEN_22 = _T ? rules_0_io_Chan3_out_2_Cmd : Chan3_reg_2_Cmd; // @[system.scala 125:21 129:11 32:24]
  wire [1:0] _GEN_23 = _T ? rules_0_io_Chan3_out_2_Data : Chan3_reg_2_Data; // @[system.scala 125:21 129:11 32:24]
  wire  _GEN_24 = _T ? rules_0_io_InvSet_out_0 : InvSet_reg_0; // @[system.scala 125:21 130:12 35:25]
  wire  _GEN_25 = _T ? rules_0_io_InvSet_out_1 : InvSet_reg_1; // @[system.scala 125:21 130:12 35:25]
  wire  _GEN_26 = _T ? rules_0_io_InvSet_out_2 : InvSet_reg_2; // @[system.scala 125:21 130:12 35:25]
  wire  _GEN_27 = _T ? rules_0_io_ShrSet_out_0 : ShrSet_reg_0; // @[system.scala 125:21 131:12 38:25]
  wire  _GEN_28 = _T ? rules_0_io_ShrSet_out_1 : ShrSet_reg_1; // @[system.scala 125:21 131:12 38:25]
  wire  _GEN_29 = _T ? rules_0_io_ShrSet_out_2 : ShrSet_reg_2; // @[system.scala 125:21 131:12 38:25]
  wire  _GEN_30 = _T ? rules_0_io_ExGntd_out : ExGntd_reg; // @[system.scala 125:21 132:12 41:25]
  wire [2:0] _GEN_31 = _T ? rules_0_io_CurCmd_out : CurCmd_reg; // @[system.scala 125:21 133:12 44:25]
  wire [1:0] _GEN_32 = _T ? rules_0_io_CurPtr_out : CurPtr_reg; // @[system.scala 125:21 134:12 47:25]
  wire [1:0] _GEN_33 = _T ? rules_0_io_MemData_out : MemData_reg; // @[system.scala 125:21 135:13 50:26]
  wire [1:0] _GEN_34 = _T ? rules_0_io_AuxData_out : AuxData_reg; // @[system.scala 125:21 136:13 53:26]
  wire  _T_2 = io_en_a == 5'h1; // @[system.scala 124:27]
  wire [1:0] _GEN_35 = _T_2 ? rules_1_io_Cache_out_0_State : _GEN_0; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_36 = _T_2 ? rules_1_io_Cache_out_0_Data : _GEN_1; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_37 = _T_2 ? rules_1_io_Cache_out_1_State : _GEN_2; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_38 = _T_2 ? rules_1_io_Cache_out_1_Data : _GEN_3; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_39 = _T_2 ? rules_1_io_Cache_out_2_State : _GEN_4; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_40 = _T_2 ? rules_1_io_Cache_out_2_Data : _GEN_5; // @[system.scala 125:21 126:11]
  wire [2:0] _GEN_41 = _T_2 ? rules_1_io_Chan1_out_0_Cmd : _GEN_6; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_42 = _T_2 ? rules_1_io_Chan1_out_0_Data : _GEN_7; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_43 = _T_2 ? rules_1_io_Chan1_out_1_Cmd : _GEN_8; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_44 = _T_2 ? rules_1_io_Chan1_out_1_Data : _GEN_9; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_45 = _T_2 ? rules_1_io_Chan1_out_2_Cmd : _GEN_10; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_46 = _T_2 ? rules_1_io_Chan1_out_2_Data : _GEN_11; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_47 = _T_2 ? rules_1_io_Chan2_out_0_Cmd : _GEN_12; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_48 = _T_2 ? rules_1_io_Chan2_out_0_Data : _GEN_13; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_49 = _T_2 ? rules_1_io_Chan2_out_1_Cmd : _GEN_14; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_50 = _T_2 ? rules_1_io_Chan2_out_1_Data : _GEN_15; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_51 = _T_2 ? rules_1_io_Chan2_out_2_Cmd : _GEN_16; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_52 = _T_2 ? rules_1_io_Chan2_out_2_Data : _GEN_17; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_53 = _T_2 ? rules_1_io_Chan3_out_0_Cmd : _GEN_18; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_54 = _T_2 ? rules_1_io_Chan3_out_0_Data : _GEN_19; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_55 = _T_2 ? rules_1_io_Chan3_out_1_Cmd : _GEN_20; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_56 = _T_2 ? rules_1_io_Chan3_out_1_Data : _GEN_21; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_57 = _T_2 ? rules_1_io_Chan3_out_2_Cmd : _GEN_22; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_58 = _T_2 ? rules_1_io_Chan3_out_2_Data : _GEN_23; // @[system.scala 125:21 129:11]
  wire  _GEN_59 = _T_2 ? rules_1_io_InvSet_out_0 : _GEN_24; // @[system.scala 125:21 130:12]
  wire  _GEN_60 = _T_2 ? rules_1_io_InvSet_out_1 : _GEN_25; // @[system.scala 125:21 130:12]
  wire  _GEN_61 = _T_2 ? rules_1_io_InvSet_out_2 : _GEN_26; // @[system.scala 125:21 130:12]
  wire  _GEN_62 = _T_2 ? rules_1_io_ShrSet_out_0 : _GEN_27; // @[system.scala 125:21 131:12]
  wire  _GEN_63 = _T_2 ? rules_1_io_ShrSet_out_1 : _GEN_28; // @[system.scala 125:21 131:12]
  wire  _GEN_64 = _T_2 ? rules_1_io_ShrSet_out_2 : _GEN_29; // @[system.scala 125:21 131:12]
  wire  _GEN_65 = _T_2 ? rules_1_io_ExGntd_out : _GEN_30; // @[system.scala 125:21 132:12]
  wire [2:0] _GEN_66 = _T_2 ? rules_1_io_CurCmd_out : _GEN_31; // @[system.scala 125:21 133:12]
  wire [1:0] _GEN_67 = _T_2 ? rules_1_io_CurPtr_out : _GEN_32; // @[system.scala 125:21 134:12]
  wire [1:0] _GEN_68 = _T_2 ? rules_1_io_MemData_out : _GEN_33; // @[system.scala 125:21 135:13]
  wire [1:0] _GEN_69 = _T_2 ? rules_1_io_AuxData_out : _GEN_34; // @[system.scala 125:21 136:13]
  wire  _T_4 = io_en_a == 5'h2; // @[system.scala 124:27]
  wire [1:0] _GEN_70 = _T_4 ? rules_2_io_Cache_out_0_State : _GEN_35; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_71 = _T_4 ? rules_2_io_Cache_out_0_Data : _GEN_36; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_72 = _T_4 ? rules_2_io_Cache_out_1_State : _GEN_37; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_73 = _T_4 ? rules_2_io_Cache_out_1_Data : _GEN_38; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_74 = _T_4 ? rules_2_io_Cache_out_2_State : _GEN_39; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_75 = _T_4 ? rules_2_io_Cache_out_2_Data : _GEN_40; // @[system.scala 125:21 126:11]
  wire [2:0] _GEN_76 = _T_4 ? rules_2_io_Chan1_out_0_Cmd : _GEN_41; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_77 = _T_4 ? rules_2_io_Chan1_out_0_Data : _GEN_42; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_78 = _T_4 ? rules_2_io_Chan1_out_1_Cmd : _GEN_43; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_79 = _T_4 ? rules_2_io_Chan1_out_1_Data : _GEN_44; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_80 = _T_4 ? rules_2_io_Chan1_out_2_Cmd : _GEN_45; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_81 = _T_4 ? rules_2_io_Chan1_out_2_Data : _GEN_46; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_82 = _T_4 ? rules_2_io_Chan2_out_0_Cmd : _GEN_47; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_83 = _T_4 ? rules_2_io_Chan2_out_0_Data : _GEN_48; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_84 = _T_4 ? rules_2_io_Chan2_out_1_Cmd : _GEN_49; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_85 = _T_4 ? rules_2_io_Chan2_out_1_Data : _GEN_50; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_86 = _T_4 ? rules_2_io_Chan2_out_2_Cmd : _GEN_51; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_87 = _T_4 ? rules_2_io_Chan2_out_2_Data : _GEN_52; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_88 = _T_4 ? rules_2_io_Chan3_out_0_Cmd : _GEN_53; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_89 = _T_4 ? rules_2_io_Chan3_out_0_Data : _GEN_54; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_90 = _T_4 ? rules_2_io_Chan3_out_1_Cmd : _GEN_55; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_91 = _T_4 ? rules_2_io_Chan3_out_1_Data : _GEN_56; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_92 = _T_4 ? rules_2_io_Chan3_out_2_Cmd : _GEN_57; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_93 = _T_4 ? rules_2_io_Chan3_out_2_Data : _GEN_58; // @[system.scala 125:21 129:11]
  wire  _GEN_94 = _T_4 ? rules_2_io_InvSet_out_0 : _GEN_59; // @[system.scala 125:21 130:12]
  wire  _GEN_95 = _T_4 ? rules_2_io_InvSet_out_1 : _GEN_60; // @[system.scala 125:21 130:12]
  wire  _GEN_96 = _T_4 ? rules_2_io_InvSet_out_2 : _GEN_61; // @[system.scala 125:21 130:12]
  wire  _GEN_97 = _T_4 ? rules_2_io_ShrSet_out_0 : _GEN_62; // @[system.scala 125:21 131:12]
  wire  _GEN_98 = _T_4 ? rules_2_io_ShrSet_out_1 : _GEN_63; // @[system.scala 125:21 131:12]
  wire  _GEN_99 = _T_4 ? rules_2_io_ShrSet_out_2 : _GEN_64; // @[system.scala 125:21 131:12]
  wire  _GEN_100 = _T_4 ? rules_2_io_ExGntd_out : _GEN_65; // @[system.scala 125:21 132:12]
  wire [2:0] _GEN_101 = _T_4 ? rules_2_io_CurCmd_out : _GEN_66; // @[system.scala 125:21 133:12]
  wire [1:0] _GEN_102 = _T_4 ? rules_2_io_CurPtr_out : _GEN_67; // @[system.scala 125:21 134:12]
  wire [1:0] _GEN_103 = _T_4 ? rules_2_io_MemData_out : _GEN_68; // @[system.scala 125:21 135:13]
  wire [1:0] _GEN_104 = _T_4 ? rules_2_io_AuxData_out : _GEN_69; // @[system.scala 125:21 136:13]
  wire  _T_6 = io_en_a == 5'h3; // @[system.scala 124:27]
  wire [1:0] _GEN_105 = _T_6 ? rules_3_io_Cache_out_0_State : _GEN_70; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_106 = _T_6 ? rules_3_io_Cache_out_0_Data : _GEN_71; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_107 = _T_6 ? rules_3_io_Cache_out_1_State : _GEN_72; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_108 = _T_6 ? rules_3_io_Cache_out_1_Data : _GEN_73; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_109 = _T_6 ? rules_3_io_Cache_out_2_State : _GEN_74; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_110 = _T_6 ? rules_3_io_Cache_out_2_Data : _GEN_75; // @[system.scala 125:21 126:11]
  wire [2:0] _GEN_111 = _T_6 ? rules_3_io_Chan1_out_0_Cmd : _GEN_76; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_112 = _T_6 ? rules_3_io_Chan1_out_0_Data : _GEN_77; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_113 = _T_6 ? rules_3_io_Chan1_out_1_Cmd : _GEN_78; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_114 = _T_6 ? rules_3_io_Chan1_out_1_Data : _GEN_79; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_115 = _T_6 ? rules_3_io_Chan1_out_2_Cmd : _GEN_80; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_116 = _T_6 ? rules_3_io_Chan1_out_2_Data : _GEN_81; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_117 = _T_6 ? rules_3_io_Chan2_out_0_Cmd : _GEN_82; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_118 = _T_6 ? rules_3_io_Chan2_out_0_Data : _GEN_83; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_119 = _T_6 ? rules_3_io_Chan2_out_1_Cmd : _GEN_84; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_120 = _T_6 ? rules_3_io_Chan2_out_1_Data : _GEN_85; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_121 = _T_6 ? rules_3_io_Chan2_out_2_Cmd : _GEN_86; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_122 = _T_6 ? rules_3_io_Chan2_out_2_Data : _GEN_87; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_123 = _T_6 ? rules_3_io_Chan3_out_0_Cmd : _GEN_88; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_124 = _T_6 ? rules_3_io_Chan3_out_0_Data : _GEN_89; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_125 = _T_6 ? rules_3_io_Chan3_out_1_Cmd : _GEN_90; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_126 = _T_6 ? rules_3_io_Chan3_out_1_Data : _GEN_91; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_127 = _T_6 ? rules_3_io_Chan3_out_2_Cmd : _GEN_92; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_128 = _T_6 ? rules_3_io_Chan3_out_2_Data : _GEN_93; // @[system.scala 125:21 129:11]
  wire  _GEN_129 = _T_6 ? rules_3_io_InvSet_out_0 : _GEN_94; // @[system.scala 125:21 130:12]
  wire  _GEN_130 = _T_6 ? rules_3_io_InvSet_out_1 : _GEN_95; // @[system.scala 125:21 130:12]
  wire  _GEN_131 = _T_6 ? rules_3_io_InvSet_out_2 : _GEN_96; // @[system.scala 125:21 130:12]
  wire  _GEN_132 = _T_6 ? rules_3_io_ShrSet_out_0 : _GEN_97; // @[system.scala 125:21 131:12]
  wire  _GEN_133 = _T_6 ? rules_3_io_ShrSet_out_1 : _GEN_98; // @[system.scala 125:21 131:12]
  wire  _GEN_134 = _T_6 ? rules_3_io_ShrSet_out_2 : _GEN_99; // @[system.scala 125:21 131:12]
  wire  _GEN_135 = _T_6 ? rules_3_io_ExGntd_out : _GEN_100; // @[system.scala 125:21 132:12]
  wire [2:0] _GEN_136 = _T_6 ? rules_3_io_CurCmd_out : _GEN_101; // @[system.scala 125:21 133:12]
  wire [1:0] _GEN_137 = _T_6 ? rules_3_io_CurPtr_out : _GEN_102; // @[system.scala 125:21 134:12]
  wire [1:0] _GEN_138 = _T_6 ? rules_3_io_MemData_out : _GEN_103; // @[system.scala 125:21 135:13]
  wire [1:0] _GEN_139 = _T_6 ? rules_3_io_AuxData_out : _GEN_104; // @[system.scala 125:21 136:13]
  wire  _T_8 = io_en_a == 5'h4; // @[system.scala 124:27]
  wire [1:0] _GEN_140 = _T_8 ? rules_4_io_Cache_out_0_State : _GEN_105; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_141 = _T_8 ? rules_4_io_Cache_out_0_Data : _GEN_106; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_142 = _T_8 ? rules_4_io_Cache_out_1_State : _GEN_107; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_143 = _T_8 ? rules_4_io_Cache_out_1_Data : _GEN_108; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_144 = _T_8 ? rules_4_io_Cache_out_2_State : _GEN_109; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_145 = _T_8 ? rules_4_io_Cache_out_2_Data : _GEN_110; // @[system.scala 125:21 126:11]
  wire [2:0] _GEN_146 = _T_8 ? rules_4_io_Chan1_out_0_Cmd : _GEN_111; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_147 = _T_8 ? rules_4_io_Chan1_out_0_Data : _GEN_112; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_148 = _T_8 ? rules_4_io_Chan1_out_1_Cmd : _GEN_113; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_149 = _T_8 ? rules_4_io_Chan1_out_1_Data : _GEN_114; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_150 = _T_8 ? rules_4_io_Chan1_out_2_Cmd : _GEN_115; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_151 = _T_8 ? rules_4_io_Chan1_out_2_Data : _GEN_116; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_152 = _T_8 ? rules_4_io_Chan2_out_0_Cmd : _GEN_117; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_153 = _T_8 ? rules_4_io_Chan2_out_0_Data : _GEN_118; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_154 = _T_8 ? rules_4_io_Chan2_out_1_Cmd : _GEN_119; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_155 = _T_8 ? rules_4_io_Chan2_out_1_Data : _GEN_120; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_156 = _T_8 ? rules_4_io_Chan2_out_2_Cmd : _GEN_121; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_157 = _T_8 ? rules_4_io_Chan2_out_2_Data : _GEN_122; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_158 = _T_8 ? rules_4_io_Chan3_out_0_Cmd : _GEN_123; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_159 = _T_8 ? rules_4_io_Chan3_out_0_Data : _GEN_124; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_160 = _T_8 ? rules_4_io_Chan3_out_1_Cmd : _GEN_125; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_161 = _T_8 ? rules_4_io_Chan3_out_1_Data : _GEN_126; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_162 = _T_8 ? rules_4_io_Chan3_out_2_Cmd : _GEN_127; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_163 = _T_8 ? rules_4_io_Chan3_out_2_Data : _GEN_128; // @[system.scala 125:21 129:11]
  wire  _GEN_164 = _T_8 ? rules_4_io_InvSet_out_0 : _GEN_129; // @[system.scala 125:21 130:12]
  wire  _GEN_165 = _T_8 ? rules_4_io_InvSet_out_1 : _GEN_130; // @[system.scala 125:21 130:12]
  wire  _GEN_166 = _T_8 ? rules_4_io_InvSet_out_2 : _GEN_131; // @[system.scala 125:21 130:12]
  wire  _GEN_167 = _T_8 ? rules_4_io_ShrSet_out_0 : _GEN_132; // @[system.scala 125:21 131:12]
  wire  _GEN_168 = _T_8 ? rules_4_io_ShrSet_out_1 : _GEN_133; // @[system.scala 125:21 131:12]
  wire  _GEN_169 = _T_8 ? rules_4_io_ShrSet_out_2 : _GEN_134; // @[system.scala 125:21 131:12]
  wire  _GEN_170 = _T_8 ? rules_4_io_ExGntd_out : _GEN_135; // @[system.scala 125:21 132:12]
  wire [2:0] _GEN_171 = _T_8 ? rules_4_io_CurCmd_out : _GEN_136; // @[system.scala 125:21 133:12]
  wire [1:0] _GEN_172 = _T_8 ? rules_4_io_CurPtr_out : _GEN_137; // @[system.scala 125:21 134:12]
  wire [1:0] _GEN_173 = _T_8 ? rules_4_io_MemData_out : _GEN_138; // @[system.scala 125:21 135:13]
  wire [1:0] _GEN_174 = _T_8 ? rules_4_io_AuxData_out : _GEN_139; // @[system.scala 125:21 136:13]
  wire  _T_10 = io_en_a == 5'h5; // @[system.scala 124:27]
  wire [1:0] _GEN_175 = _T_10 ? rules_5_io_Cache_out_0_State : _GEN_140; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_176 = _T_10 ? rules_5_io_Cache_out_0_Data : _GEN_141; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_177 = _T_10 ? rules_5_io_Cache_out_1_State : _GEN_142; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_178 = _T_10 ? rules_5_io_Cache_out_1_Data : _GEN_143; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_179 = _T_10 ? rules_5_io_Cache_out_2_State : _GEN_144; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_180 = _T_10 ? rules_5_io_Cache_out_2_Data : _GEN_145; // @[system.scala 125:21 126:11]
  wire [2:0] _GEN_181 = _T_10 ? rules_5_io_Chan1_out_0_Cmd : _GEN_146; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_182 = _T_10 ? rules_5_io_Chan1_out_0_Data : _GEN_147; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_183 = _T_10 ? rules_5_io_Chan1_out_1_Cmd : _GEN_148; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_184 = _T_10 ? rules_5_io_Chan1_out_1_Data : _GEN_149; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_185 = _T_10 ? rules_5_io_Chan1_out_2_Cmd : _GEN_150; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_186 = _T_10 ? rules_5_io_Chan1_out_2_Data : _GEN_151; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_187 = _T_10 ? rules_5_io_Chan2_out_0_Cmd : _GEN_152; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_188 = _T_10 ? rules_5_io_Chan2_out_0_Data : _GEN_153; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_189 = _T_10 ? rules_5_io_Chan2_out_1_Cmd : _GEN_154; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_190 = _T_10 ? rules_5_io_Chan2_out_1_Data : _GEN_155; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_191 = _T_10 ? rules_5_io_Chan2_out_2_Cmd : _GEN_156; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_192 = _T_10 ? rules_5_io_Chan2_out_2_Data : _GEN_157; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_193 = _T_10 ? rules_5_io_Chan3_out_0_Cmd : _GEN_158; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_194 = _T_10 ? rules_5_io_Chan3_out_0_Data : _GEN_159; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_195 = _T_10 ? rules_5_io_Chan3_out_1_Cmd : _GEN_160; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_196 = _T_10 ? rules_5_io_Chan3_out_1_Data : _GEN_161; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_197 = _T_10 ? rules_5_io_Chan3_out_2_Cmd : _GEN_162; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_198 = _T_10 ? rules_5_io_Chan3_out_2_Data : _GEN_163; // @[system.scala 125:21 129:11]
  wire  _GEN_199 = _T_10 ? rules_5_io_InvSet_out_0 : _GEN_164; // @[system.scala 125:21 130:12]
  wire  _GEN_200 = _T_10 ? rules_5_io_InvSet_out_1 : _GEN_165; // @[system.scala 125:21 130:12]
  wire  _GEN_201 = _T_10 ? rules_5_io_InvSet_out_2 : _GEN_166; // @[system.scala 125:21 130:12]
  wire  _GEN_202 = _T_10 ? rules_5_io_ShrSet_out_0 : _GEN_167; // @[system.scala 125:21 131:12]
  wire  _GEN_203 = _T_10 ? rules_5_io_ShrSet_out_1 : _GEN_168; // @[system.scala 125:21 131:12]
  wire  _GEN_204 = _T_10 ? rules_5_io_ShrSet_out_2 : _GEN_169; // @[system.scala 125:21 131:12]
  wire  _GEN_205 = _T_10 ? rules_5_io_ExGntd_out : _GEN_170; // @[system.scala 125:21 132:12]
  wire [2:0] _GEN_206 = _T_10 ? rules_5_io_CurCmd_out : _GEN_171; // @[system.scala 125:21 133:12]
  wire [1:0] _GEN_207 = _T_10 ? rules_5_io_CurPtr_out : _GEN_172; // @[system.scala 125:21 134:12]
  wire [1:0] _GEN_208 = _T_10 ? rules_5_io_MemData_out : _GEN_173; // @[system.scala 125:21 135:13]
  wire [1:0] _GEN_209 = _T_10 ? rules_5_io_AuxData_out : _GEN_174; // @[system.scala 125:21 136:13]
  wire  _T_12 = io_en_a == 5'h6; // @[system.scala 124:27]
  wire [1:0] _GEN_210 = _T_12 ? rules_6_io_Cache_out_0_State : _GEN_175; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_211 = _T_12 ? rules_6_io_Cache_out_0_Data : _GEN_176; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_212 = _T_12 ? rules_6_io_Cache_out_1_State : _GEN_177; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_213 = _T_12 ? rules_6_io_Cache_out_1_Data : _GEN_178; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_214 = _T_12 ? rules_6_io_Cache_out_2_State : _GEN_179; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_215 = _T_12 ? rules_6_io_Cache_out_2_Data : _GEN_180; // @[system.scala 125:21 126:11]
  wire [2:0] _GEN_216 = _T_12 ? rules_6_io_Chan1_out_0_Cmd : _GEN_181; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_217 = _T_12 ? rules_6_io_Chan1_out_0_Data : _GEN_182; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_218 = _T_12 ? rules_6_io_Chan1_out_1_Cmd : _GEN_183; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_219 = _T_12 ? rules_6_io_Chan1_out_1_Data : _GEN_184; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_220 = _T_12 ? rules_6_io_Chan1_out_2_Cmd : _GEN_185; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_221 = _T_12 ? rules_6_io_Chan1_out_2_Data : _GEN_186; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_222 = _T_12 ? rules_6_io_Chan2_out_0_Cmd : _GEN_187; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_223 = _T_12 ? rules_6_io_Chan2_out_0_Data : _GEN_188; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_224 = _T_12 ? rules_6_io_Chan2_out_1_Cmd : _GEN_189; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_225 = _T_12 ? rules_6_io_Chan2_out_1_Data : _GEN_190; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_226 = _T_12 ? rules_6_io_Chan2_out_2_Cmd : _GEN_191; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_227 = _T_12 ? rules_6_io_Chan2_out_2_Data : _GEN_192; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_228 = _T_12 ? rules_6_io_Chan3_out_0_Cmd : _GEN_193; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_229 = _T_12 ? rules_6_io_Chan3_out_0_Data : _GEN_194; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_230 = _T_12 ? rules_6_io_Chan3_out_1_Cmd : _GEN_195; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_231 = _T_12 ? rules_6_io_Chan3_out_1_Data : _GEN_196; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_232 = _T_12 ? rules_6_io_Chan3_out_2_Cmd : _GEN_197; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_233 = _T_12 ? rules_6_io_Chan3_out_2_Data : _GEN_198; // @[system.scala 125:21 129:11]
  wire  _GEN_234 = _T_12 ? rules_6_io_InvSet_out_0 : _GEN_199; // @[system.scala 125:21 130:12]
  wire  _GEN_235 = _T_12 ? rules_6_io_InvSet_out_1 : _GEN_200; // @[system.scala 125:21 130:12]
  wire  _GEN_236 = _T_12 ? rules_6_io_InvSet_out_2 : _GEN_201; // @[system.scala 125:21 130:12]
  wire  _GEN_237 = _T_12 ? rules_6_io_ShrSet_out_0 : _GEN_202; // @[system.scala 125:21 131:12]
  wire  _GEN_238 = _T_12 ? rules_6_io_ShrSet_out_1 : _GEN_203; // @[system.scala 125:21 131:12]
  wire  _GEN_239 = _T_12 ? rules_6_io_ShrSet_out_2 : _GEN_204; // @[system.scala 125:21 131:12]
  wire  _GEN_240 = _T_12 ? rules_6_io_ExGntd_out : _GEN_205; // @[system.scala 125:21 132:12]
  wire [2:0] _GEN_241 = _T_12 ? rules_6_io_CurCmd_out : _GEN_206; // @[system.scala 125:21 133:12]
  wire [1:0] _GEN_242 = _T_12 ? rules_6_io_CurPtr_out : _GEN_207; // @[system.scala 125:21 134:12]
  wire [1:0] _GEN_243 = _T_12 ? rules_6_io_MemData_out : _GEN_208; // @[system.scala 125:21 135:13]
  wire [1:0] _GEN_244 = _T_12 ? rules_6_io_AuxData_out : _GEN_209; // @[system.scala 125:21 136:13]
  wire  _T_14 = io_en_a == 5'h7; // @[system.scala 124:27]
  wire [1:0] _GEN_245 = _T_14 ? rules_7_io_Cache_out_0_State : _GEN_210; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_246 = _T_14 ? rules_7_io_Cache_out_0_Data : _GEN_211; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_247 = _T_14 ? rules_7_io_Cache_out_1_State : _GEN_212; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_248 = _T_14 ? rules_7_io_Cache_out_1_Data : _GEN_213; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_249 = _T_14 ? rules_7_io_Cache_out_2_State : _GEN_214; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_250 = _T_14 ? rules_7_io_Cache_out_2_Data : _GEN_215; // @[system.scala 125:21 126:11]
  wire [2:0] _GEN_251 = _T_14 ? rules_7_io_Chan1_out_0_Cmd : _GEN_216; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_252 = _T_14 ? rules_7_io_Chan1_out_0_Data : _GEN_217; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_253 = _T_14 ? rules_7_io_Chan1_out_1_Cmd : _GEN_218; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_254 = _T_14 ? rules_7_io_Chan1_out_1_Data : _GEN_219; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_255 = _T_14 ? rules_7_io_Chan1_out_2_Cmd : _GEN_220; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_256 = _T_14 ? rules_7_io_Chan1_out_2_Data : _GEN_221; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_257 = _T_14 ? rules_7_io_Chan2_out_0_Cmd : _GEN_222; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_258 = _T_14 ? rules_7_io_Chan2_out_0_Data : _GEN_223; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_259 = _T_14 ? rules_7_io_Chan2_out_1_Cmd : _GEN_224; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_260 = _T_14 ? rules_7_io_Chan2_out_1_Data : _GEN_225; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_261 = _T_14 ? rules_7_io_Chan2_out_2_Cmd : _GEN_226; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_262 = _T_14 ? rules_7_io_Chan2_out_2_Data : _GEN_227; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_263 = _T_14 ? rules_7_io_Chan3_out_0_Cmd : _GEN_228; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_264 = _T_14 ? rules_7_io_Chan3_out_0_Data : _GEN_229; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_265 = _T_14 ? rules_7_io_Chan3_out_1_Cmd : _GEN_230; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_266 = _T_14 ? rules_7_io_Chan3_out_1_Data : _GEN_231; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_267 = _T_14 ? rules_7_io_Chan3_out_2_Cmd : _GEN_232; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_268 = _T_14 ? rules_7_io_Chan3_out_2_Data : _GEN_233; // @[system.scala 125:21 129:11]
  wire  _GEN_269 = _T_14 ? rules_7_io_InvSet_out_0 : _GEN_234; // @[system.scala 125:21 130:12]
  wire  _GEN_270 = _T_14 ? rules_7_io_InvSet_out_1 : _GEN_235; // @[system.scala 125:21 130:12]
  wire  _GEN_271 = _T_14 ? rules_7_io_InvSet_out_2 : _GEN_236; // @[system.scala 125:21 130:12]
  wire  _GEN_272 = _T_14 ? rules_7_io_ShrSet_out_0 : _GEN_237; // @[system.scala 125:21 131:12]
  wire  _GEN_273 = _T_14 ? rules_7_io_ShrSet_out_1 : _GEN_238; // @[system.scala 125:21 131:12]
  wire  _GEN_274 = _T_14 ? rules_7_io_ShrSet_out_2 : _GEN_239; // @[system.scala 125:21 131:12]
  wire  _GEN_275 = _T_14 ? rules_7_io_ExGntd_out : _GEN_240; // @[system.scala 125:21 132:12]
  wire [2:0] _GEN_276 = _T_14 ? rules_7_io_CurCmd_out : _GEN_241; // @[system.scala 125:21 133:12]
  wire [1:0] _GEN_277 = _T_14 ? rules_7_io_CurPtr_out : _GEN_242; // @[system.scala 125:21 134:12]
  wire [1:0] _GEN_278 = _T_14 ? rules_7_io_MemData_out : _GEN_243; // @[system.scala 125:21 135:13]
  wire [1:0] _GEN_279 = _T_14 ? rules_7_io_AuxData_out : _GEN_244; // @[system.scala 125:21 136:13]
  wire  _T_16 = io_en_a == 5'h8; // @[system.scala 124:27]
  wire [1:0] _GEN_280 = _T_16 ? rules_8_io_Cache_out_0_State : _GEN_245; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_281 = _T_16 ? rules_8_io_Cache_out_0_Data : _GEN_246; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_282 = _T_16 ? rules_8_io_Cache_out_1_State : _GEN_247; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_283 = _T_16 ? rules_8_io_Cache_out_1_Data : _GEN_248; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_284 = _T_16 ? rules_8_io_Cache_out_2_State : _GEN_249; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_285 = _T_16 ? rules_8_io_Cache_out_2_Data : _GEN_250; // @[system.scala 125:21 126:11]
  wire [2:0] _GEN_286 = _T_16 ? rules_8_io_Chan1_out_0_Cmd : _GEN_251; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_287 = _T_16 ? rules_8_io_Chan1_out_0_Data : _GEN_252; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_288 = _T_16 ? rules_8_io_Chan1_out_1_Cmd : _GEN_253; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_289 = _T_16 ? rules_8_io_Chan1_out_1_Data : _GEN_254; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_290 = _T_16 ? rules_8_io_Chan1_out_2_Cmd : _GEN_255; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_291 = _T_16 ? rules_8_io_Chan1_out_2_Data : _GEN_256; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_292 = _T_16 ? rules_8_io_Chan2_out_0_Cmd : _GEN_257; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_293 = _T_16 ? rules_8_io_Chan2_out_0_Data : _GEN_258; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_294 = _T_16 ? rules_8_io_Chan2_out_1_Cmd : _GEN_259; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_295 = _T_16 ? rules_8_io_Chan2_out_1_Data : _GEN_260; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_296 = _T_16 ? rules_8_io_Chan2_out_2_Cmd : _GEN_261; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_297 = _T_16 ? rules_8_io_Chan2_out_2_Data : _GEN_262; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_298 = _T_16 ? rules_8_io_Chan3_out_0_Cmd : _GEN_263; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_299 = _T_16 ? rules_8_io_Chan3_out_0_Data : _GEN_264; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_300 = _T_16 ? rules_8_io_Chan3_out_1_Cmd : _GEN_265; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_301 = _T_16 ? rules_8_io_Chan3_out_1_Data : _GEN_266; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_302 = _T_16 ? rules_8_io_Chan3_out_2_Cmd : _GEN_267; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_303 = _T_16 ? rules_8_io_Chan3_out_2_Data : _GEN_268; // @[system.scala 125:21 129:11]
  wire  _GEN_304 = _T_16 ? rules_8_io_InvSet_out_0 : _GEN_269; // @[system.scala 125:21 130:12]
  wire  _GEN_305 = _T_16 ? rules_8_io_InvSet_out_1 : _GEN_270; // @[system.scala 125:21 130:12]
  wire  _GEN_306 = _T_16 ? rules_8_io_InvSet_out_2 : _GEN_271; // @[system.scala 125:21 130:12]
  wire  _GEN_307 = _T_16 ? rules_8_io_ShrSet_out_0 : _GEN_272; // @[system.scala 125:21 131:12]
  wire  _GEN_308 = _T_16 ? rules_8_io_ShrSet_out_1 : _GEN_273; // @[system.scala 125:21 131:12]
  wire  _GEN_309 = _T_16 ? rules_8_io_ShrSet_out_2 : _GEN_274; // @[system.scala 125:21 131:12]
  wire  _GEN_310 = _T_16 ? rules_8_io_ExGntd_out : _GEN_275; // @[system.scala 125:21 132:12]
  wire [2:0] _GEN_311 = _T_16 ? rules_8_io_CurCmd_out : _GEN_276; // @[system.scala 125:21 133:12]
  wire [1:0] _GEN_312 = _T_16 ? rules_8_io_CurPtr_out : _GEN_277; // @[system.scala 125:21 134:12]
  wire [1:0] _GEN_313 = _T_16 ? rules_8_io_MemData_out : _GEN_278; // @[system.scala 125:21 135:13]
  wire [1:0] _GEN_314 = _T_16 ? rules_8_io_AuxData_out : _GEN_279; // @[system.scala 125:21 136:13]
  wire  _T_18 = io_en_a == 5'h9; // @[system.scala 124:27]
  wire [1:0] _GEN_315 = _T_18 ? rules_9_io_Cache_out_0_State : _GEN_280; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_316 = _T_18 ? rules_9_io_Cache_out_0_Data : _GEN_281; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_317 = _T_18 ? rules_9_io_Cache_out_1_State : _GEN_282; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_318 = _T_18 ? rules_9_io_Cache_out_1_Data : _GEN_283; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_319 = _T_18 ? rules_9_io_Cache_out_2_State : _GEN_284; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_320 = _T_18 ? rules_9_io_Cache_out_2_Data : _GEN_285; // @[system.scala 125:21 126:11]
  wire [2:0] _GEN_321 = _T_18 ? rules_9_io_Chan1_out_0_Cmd : _GEN_286; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_322 = _T_18 ? rules_9_io_Chan1_out_0_Data : _GEN_287; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_323 = _T_18 ? rules_9_io_Chan1_out_1_Cmd : _GEN_288; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_324 = _T_18 ? rules_9_io_Chan1_out_1_Data : _GEN_289; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_325 = _T_18 ? rules_9_io_Chan1_out_2_Cmd : _GEN_290; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_326 = _T_18 ? rules_9_io_Chan1_out_2_Data : _GEN_291; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_327 = _T_18 ? rules_9_io_Chan2_out_0_Cmd : _GEN_292; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_328 = _T_18 ? rules_9_io_Chan2_out_0_Data : _GEN_293; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_329 = _T_18 ? rules_9_io_Chan2_out_1_Cmd : _GEN_294; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_330 = _T_18 ? rules_9_io_Chan2_out_1_Data : _GEN_295; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_331 = _T_18 ? rules_9_io_Chan2_out_2_Cmd : _GEN_296; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_332 = _T_18 ? rules_9_io_Chan2_out_2_Data : _GEN_297; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_333 = _T_18 ? rules_9_io_Chan3_out_0_Cmd : _GEN_298; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_334 = _T_18 ? rules_9_io_Chan3_out_0_Data : _GEN_299; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_335 = _T_18 ? rules_9_io_Chan3_out_1_Cmd : _GEN_300; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_336 = _T_18 ? rules_9_io_Chan3_out_1_Data : _GEN_301; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_337 = _T_18 ? rules_9_io_Chan3_out_2_Cmd : _GEN_302; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_338 = _T_18 ? rules_9_io_Chan3_out_2_Data : _GEN_303; // @[system.scala 125:21 129:11]
  wire  _GEN_339 = _T_18 ? rules_9_io_InvSet_out_0 : _GEN_304; // @[system.scala 125:21 130:12]
  wire  _GEN_340 = _T_18 ? rules_9_io_InvSet_out_1 : _GEN_305; // @[system.scala 125:21 130:12]
  wire  _GEN_341 = _T_18 ? rules_9_io_InvSet_out_2 : _GEN_306; // @[system.scala 125:21 130:12]
  wire  _GEN_342 = _T_18 ? rules_9_io_ShrSet_out_0 : _GEN_307; // @[system.scala 125:21 131:12]
  wire  _GEN_343 = _T_18 ? rules_9_io_ShrSet_out_1 : _GEN_308; // @[system.scala 125:21 131:12]
  wire  _GEN_344 = _T_18 ? rules_9_io_ShrSet_out_2 : _GEN_309; // @[system.scala 125:21 131:12]
  wire  _GEN_345 = _T_18 ? rules_9_io_ExGntd_out : _GEN_310; // @[system.scala 125:21 132:12]
  wire [2:0] _GEN_346 = _T_18 ? rules_9_io_CurCmd_out : _GEN_311; // @[system.scala 125:21 133:12]
  wire [1:0] _GEN_347 = _T_18 ? rules_9_io_CurPtr_out : _GEN_312; // @[system.scala 125:21 134:12]
  wire [1:0] _GEN_348 = _T_18 ? rules_9_io_MemData_out : _GEN_313; // @[system.scala 125:21 135:13]
  wire [1:0] _GEN_349 = _T_18 ? rules_9_io_AuxData_out : _GEN_314; // @[system.scala 125:21 136:13]
  wire  _T_20 = io_en_a == 5'ha; // @[system.scala 124:27]
  wire [1:0] _GEN_350 = _T_20 ? rules_10_io_Cache_out_0_State : _GEN_315; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_351 = _T_20 ? rules_10_io_Cache_out_0_Data : _GEN_316; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_352 = _T_20 ? rules_10_io_Cache_out_1_State : _GEN_317; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_353 = _T_20 ? rules_10_io_Cache_out_1_Data : _GEN_318; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_354 = _T_20 ? rules_10_io_Cache_out_2_State : _GEN_319; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_355 = _T_20 ? rules_10_io_Cache_out_2_Data : _GEN_320; // @[system.scala 125:21 126:11]
  wire [2:0] _GEN_356 = _T_20 ? rules_10_io_Chan1_out_0_Cmd : _GEN_321; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_357 = _T_20 ? rules_10_io_Chan1_out_0_Data : _GEN_322; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_358 = _T_20 ? rules_10_io_Chan1_out_1_Cmd : _GEN_323; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_359 = _T_20 ? rules_10_io_Chan1_out_1_Data : _GEN_324; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_360 = _T_20 ? rules_10_io_Chan1_out_2_Cmd : _GEN_325; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_361 = _T_20 ? rules_10_io_Chan1_out_2_Data : _GEN_326; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_362 = _T_20 ? rules_10_io_Chan2_out_0_Cmd : _GEN_327; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_363 = _T_20 ? rules_10_io_Chan2_out_0_Data : _GEN_328; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_364 = _T_20 ? rules_10_io_Chan2_out_1_Cmd : _GEN_329; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_365 = _T_20 ? rules_10_io_Chan2_out_1_Data : _GEN_330; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_366 = _T_20 ? rules_10_io_Chan2_out_2_Cmd : _GEN_331; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_367 = _T_20 ? rules_10_io_Chan2_out_2_Data : _GEN_332; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_368 = _T_20 ? rules_10_io_Chan3_out_0_Cmd : _GEN_333; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_369 = _T_20 ? rules_10_io_Chan3_out_0_Data : _GEN_334; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_370 = _T_20 ? rules_10_io_Chan3_out_1_Cmd : _GEN_335; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_371 = _T_20 ? rules_10_io_Chan3_out_1_Data : _GEN_336; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_372 = _T_20 ? rules_10_io_Chan3_out_2_Cmd : _GEN_337; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_373 = _T_20 ? rules_10_io_Chan3_out_2_Data : _GEN_338; // @[system.scala 125:21 129:11]
  wire  _GEN_374 = _T_20 ? rules_10_io_InvSet_out_0 : _GEN_339; // @[system.scala 125:21 130:12]
  wire  _GEN_375 = _T_20 ? rules_10_io_InvSet_out_1 : _GEN_340; // @[system.scala 125:21 130:12]
  wire  _GEN_376 = _T_20 ? rules_10_io_InvSet_out_2 : _GEN_341; // @[system.scala 125:21 130:12]
  wire  _GEN_377 = _T_20 ? rules_10_io_ShrSet_out_0 : _GEN_342; // @[system.scala 125:21 131:12]
  wire  _GEN_378 = _T_20 ? rules_10_io_ShrSet_out_1 : _GEN_343; // @[system.scala 125:21 131:12]
  wire  _GEN_379 = _T_20 ? rules_10_io_ShrSet_out_2 : _GEN_344; // @[system.scala 125:21 131:12]
  wire  _GEN_380 = _T_20 ? rules_10_io_ExGntd_out : _GEN_345; // @[system.scala 125:21 132:12]
  wire [2:0] _GEN_381 = _T_20 ? rules_10_io_CurCmd_out : _GEN_346; // @[system.scala 125:21 133:12]
  wire [1:0] _GEN_382 = _T_20 ? rules_10_io_CurPtr_out : _GEN_347; // @[system.scala 125:21 134:12]
  wire [1:0] _GEN_383 = _T_20 ? rules_10_io_MemData_out : _GEN_348; // @[system.scala 125:21 135:13]
  wire [1:0] _GEN_384 = _T_20 ? rules_10_io_AuxData_out : _GEN_349; // @[system.scala 125:21 136:13]
  wire  _T_22 = io_en_a == 5'hb; // @[system.scala 124:27]
  wire [1:0] _GEN_385 = _T_22 ? rules_11_io_Cache_out_0_State : _GEN_350; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_386 = _T_22 ? rules_11_io_Cache_out_0_Data : _GEN_351; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_387 = _T_22 ? rules_11_io_Cache_out_1_State : _GEN_352; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_388 = _T_22 ? rules_11_io_Cache_out_1_Data : _GEN_353; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_389 = _T_22 ? rules_11_io_Cache_out_2_State : _GEN_354; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_390 = _T_22 ? rules_11_io_Cache_out_2_Data : _GEN_355; // @[system.scala 125:21 126:11]
  wire [2:0] _GEN_391 = _T_22 ? rules_11_io_Chan1_out_0_Cmd : _GEN_356; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_392 = _T_22 ? rules_11_io_Chan1_out_0_Data : _GEN_357; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_393 = _T_22 ? rules_11_io_Chan1_out_1_Cmd : _GEN_358; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_394 = _T_22 ? rules_11_io_Chan1_out_1_Data : _GEN_359; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_395 = _T_22 ? rules_11_io_Chan1_out_2_Cmd : _GEN_360; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_396 = _T_22 ? rules_11_io_Chan1_out_2_Data : _GEN_361; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_397 = _T_22 ? rules_11_io_Chan2_out_0_Cmd : _GEN_362; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_398 = _T_22 ? rules_11_io_Chan2_out_0_Data : _GEN_363; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_399 = _T_22 ? rules_11_io_Chan2_out_1_Cmd : _GEN_364; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_400 = _T_22 ? rules_11_io_Chan2_out_1_Data : _GEN_365; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_401 = _T_22 ? rules_11_io_Chan2_out_2_Cmd : _GEN_366; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_402 = _T_22 ? rules_11_io_Chan2_out_2_Data : _GEN_367; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_403 = _T_22 ? rules_11_io_Chan3_out_0_Cmd : _GEN_368; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_404 = _T_22 ? rules_11_io_Chan3_out_0_Data : _GEN_369; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_405 = _T_22 ? rules_11_io_Chan3_out_1_Cmd : _GEN_370; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_406 = _T_22 ? rules_11_io_Chan3_out_1_Data : _GEN_371; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_407 = _T_22 ? rules_11_io_Chan3_out_2_Cmd : _GEN_372; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_408 = _T_22 ? rules_11_io_Chan3_out_2_Data : _GEN_373; // @[system.scala 125:21 129:11]
  wire  _GEN_409 = _T_22 ? rules_11_io_InvSet_out_0 : _GEN_374; // @[system.scala 125:21 130:12]
  wire  _GEN_410 = _T_22 ? rules_11_io_InvSet_out_1 : _GEN_375; // @[system.scala 125:21 130:12]
  wire  _GEN_411 = _T_22 ? rules_11_io_InvSet_out_2 : _GEN_376; // @[system.scala 125:21 130:12]
  wire  _GEN_412 = _T_22 ? rules_11_io_ShrSet_out_0 : _GEN_377; // @[system.scala 125:21 131:12]
  wire  _GEN_413 = _T_22 ? rules_11_io_ShrSet_out_1 : _GEN_378; // @[system.scala 125:21 131:12]
  wire  _GEN_414 = _T_22 ? rules_11_io_ShrSet_out_2 : _GEN_379; // @[system.scala 125:21 131:12]
  wire  _GEN_415 = _T_22 ? rules_11_io_ExGntd_out : _GEN_380; // @[system.scala 125:21 132:12]
  wire [2:0] _GEN_416 = _T_22 ? rules_11_io_CurCmd_out : _GEN_381; // @[system.scala 125:21 133:12]
  wire [1:0] _GEN_417 = _T_22 ? rules_11_io_CurPtr_out : _GEN_382; // @[system.scala 125:21 134:12]
  wire [1:0] _GEN_418 = _T_22 ? rules_11_io_MemData_out : _GEN_383; // @[system.scala 125:21 135:13]
  wire [1:0] _GEN_419 = _T_22 ? rules_11_io_AuxData_out : _GEN_384; // @[system.scala 125:21 136:13]
  wire  _T_24 = io_en_a == 5'hc; // @[system.scala 124:27]
  wire [1:0] _GEN_420 = _T_24 ? rules_12_io_Cache_out_0_State : _GEN_385; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_421 = _T_24 ? rules_12_io_Cache_out_0_Data : _GEN_386; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_422 = _T_24 ? rules_12_io_Cache_out_1_State : _GEN_387; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_423 = _T_24 ? rules_12_io_Cache_out_1_Data : _GEN_388; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_424 = _T_24 ? rules_12_io_Cache_out_2_State : _GEN_389; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_425 = _T_24 ? rules_12_io_Cache_out_2_Data : _GEN_390; // @[system.scala 125:21 126:11]
  wire [2:0] _GEN_426 = _T_24 ? rules_12_io_Chan1_out_0_Cmd : _GEN_391; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_427 = _T_24 ? rules_12_io_Chan1_out_0_Data : _GEN_392; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_428 = _T_24 ? rules_12_io_Chan1_out_1_Cmd : _GEN_393; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_429 = _T_24 ? rules_12_io_Chan1_out_1_Data : _GEN_394; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_430 = _T_24 ? rules_12_io_Chan1_out_2_Cmd : _GEN_395; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_431 = _T_24 ? rules_12_io_Chan1_out_2_Data : _GEN_396; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_432 = _T_24 ? rules_12_io_Chan2_out_0_Cmd : _GEN_397; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_433 = _T_24 ? rules_12_io_Chan2_out_0_Data : _GEN_398; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_434 = _T_24 ? rules_12_io_Chan2_out_1_Cmd : _GEN_399; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_435 = _T_24 ? rules_12_io_Chan2_out_1_Data : _GEN_400; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_436 = _T_24 ? rules_12_io_Chan2_out_2_Cmd : _GEN_401; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_437 = _T_24 ? rules_12_io_Chan2_out_2_Data : _GEN_402; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_438 = _T_24 ? rules_12_io_Chan3_out_0_Cmd : _GEN_403; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_439 = _T_24 ? rules_12_io_Chan3_out_0_Data : _GEN_404; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_440 = _T_24 ? rules_12_io_Chan3_out_1_Cmd : _GEN_405; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_441 = _T_24 ? rules_12_io_Chan3_out_1_Data : _GEN_406; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_442 = _T_24 ? rules_12_io_Chan3_out_2_Cmd : _GEN_407; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_443 = _T_24 ? rules_12_io_Chan3_out_2_Data : _GEN_408; // @[system.scala 125:21 129:11]
  wire  _GEN_444 = _T_24 ? rules_12_io_InvSet_out_0 : _GEN_409; // @[system.scala 125:21 130:12]
  wire  _GEN_445 = _T_24 ? rules_12_io_InvSet_out_1 : _GEN_410; // @[system.scala 125:21 130:12]
  wire  _GEN_446 = _T_24 ? rules_12_io_InvSet_out_2 : _GEN_411; // @[system.scala 125:21 130:12]
  wire  _GEN_447 = _T_24 ? rules_12_io_ShrSet_out_0 : _GEN_412; // @[system.scala 125:21 131:12]
  wire  _GEN_448 = _T_24 ? rules_12_io_ShrSet_out_1 : _GEN_413; // @[system.scala 125:21 131:12]
  wire  _GEN_449 = _T_24 ? rules_12_io_ShrSet_out_2 : _GEN_414; // @[system.scala 125:21 131:12]
  wire  _GEN_450 = _T_24 ? rules_12_io_ExGntd_out : _GEN_415; // @[system.scala 125:21 132:12]
  wire [2:0] _GEN_451 = _T_24 ? rules_12_io_CurCmd_out : _GEN_416; // @[system.scala 125:21 133:12]
  wire [1:0] _GEN_452 = _T_24 ? rules_12_io_CurPtr_out : _GEN_417; // @[system.scala 125:21 134:12]
  wire [1:0] _GEN_453 = _T_24 ? rules_12_io_MemData_out : _GEN_418; // @[system.scala 125:21 135:13]
  wire [1:0] _GEN_454 = _T_24 ? rules_12_io_AuxData_out : _GEN_419; // @[system.scala 125:21 136:13]
  wire  _T_26 = io_en_a == 5'hd; // @[system.scala 124:27]
  wire [1:0] _GEN_455 = _T_26 ? rules_13_io_Cache_out_0_State : _GEN_420; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_456 = _T_26 ? rules_13_io_Cache_out_0_Data : _GEN_421; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_457 = _T_26 ? rules_13_io_Cache_out_1_State : _GEN_422; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_458 = _T_26 ? rules_13_io_Cache_out_1_Data : _GEN_423; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_459 = _T_26 ? rules_13_io_Cache_out_2_State : _GEN_424; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_460 = _T_26 ? rules_13_io_Cache_out_2_Data : _GEN_425; // @[system.scala 125:21 126:11]
  wire [2:0] _GEN_461 = _T_26 ? rules_13_io_Chan1_out_0_Cmd : _GEN_426; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_462 = _T_26 ? rules_13_io_Chan1_out_0_Data : _GEN_427; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_463 = _T_26 ? rules_13_io_Chan1_out_1_Cmd : _GEN_428; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_464 = _T_26 ? rules_13_io_Chan1_out_1_Data : _GEN_429; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_465 = _T_26 ? rules_13_io_Chan1_out_2_Cmd : _GEN_430; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_466 = _T_26 ? rules_13_io_Chan1_out_2_Data : _GEN_431; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_467 = _T_26 ? rules_13_io_Chan2_out_0_Cmd : _GEN_432; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_468 = _T_26 ? rules_13_io_Chan2_out_0_Data : _GEN_433; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_469 = _T_26 ? rules_13_io_Chan2_out_1_Cmd : _GEN_434; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_470 = _T_26 ? rules_13_io_Chan2_out_1_Data : _GEN_435; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_471 = _T_26 ? rules_13_io_Chan2_out_2_Cmd : _GEN_436; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_472 = _T_26 ? rules_13_io_Chan2_out_2_Data : _GEN_437; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_473 = _T_26 ? rules_13_io_Chan3_out_0_Cmd : _GEN_438; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_474 = _T_26 ? rules_13_io_Chan3_out_0_Data : _GEN_439; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_475 = _T_26 ? rules_13_io_Chan3_out_1_Cmd : _GEN_440; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_476 = _T_26 ? rules_13_io_Chan3_out_1_Data : _GEN_441; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_477 = _T_26 ? rules_13_io_Chan3_out_2_Cmd : _GEN_442; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_478 = _T_26 ? rules_13_io_Chan3_out_2_Data : _GEN_443; // @[system.scala 125:21 129:11]
  wire  _GEN_479 = _T_26 ? rules_13_io_InvSet_out_0 : _GEN_444; // @[system.scala 125:21 130:12]
  wire  _GEN_480 = _T_26 ? rules_13_io_InvSet_out_1 : _GEN_445; // @[system.scala 125:21 130:12]
  wire  _GEN_481 = _T_26 ? rules_13_io_InvSet_out_2 : _GEN_446; // @[system.scala 125:21 130:12]
  wire  _GEN_482 = _T_26 ? rules_13_io_ShrSet_out_0 : _GEN_447; // @[system.scala 125:21 131:12]
  wire  _GEN_483 = _T_26 ? rules_13_io_ShrSet_out_1 : _GEN_448; // @[system.scala 125:21 131:12]
  wire  _GEN_484 = _T_26 ? rules_13_io_ShrSet_out_2 : _GEN_449; // @[system.scala 125:21 131:12]
  wire  _GEN_485 = _T_26 ? rules_13_io_ExGntd_out : _GEN_450; // @[system.scala 125:21 132:12]
  wire [2:0] _GEN_486 = _T_26 ? rules_13_io_CurCmd_out : _GEN_451; // @[system.scala 125:21 133:12]
  wire [1:0] _GEN_487 = _T_26 ? rules_13_io_CurPtr_out : _GEN_452; // @[system.scala 125:21 134:12]
  wire [1:0] _GEN_488 = _T_26 ? rules_13_io_MemData_out : _GEN_453; // @[system.scala 125:21 135:13]
  wire [1:0] _GEN_489 = _T_26 ? rules_13_io_AuxData_out : _GEN_454; // @[system.scala 125:21 136:13]
  wire  _T_28 = io_en_a == 5'he; // @[system.scala 124:27]
  wire [1:0] _GEN_490 = _T_28 ? rules_14_io_Cache_out_0_State : _GEN_455; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_491 = _T_28 ? rules_14_io_Cache_out_0_Data : _GEN_456; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_492 = _T_28 ? rules_14_io_Cache_out_1_State : _GEN_457; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_493 = _T_28 ? rules_14_io_Cache_out_1_Data : _GEN_458; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_494 = _T_28 ? rules_14_io_Cache_out_2_State : _GEN_459; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_495 = _T_28 ? rules_14_io_Cache_out_2_Data : _GEN_460; // @[system.scala 125:21 126:11]
  wire [2:0] _GEN_496 = _T_28 ? rules_14_io_Chan1_out_0_Cmd : _GEN_461; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_497 = _T_28 ? rules_14_io_Chan1_out_0_Data : _GEN_462; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_498 = _T_28 ? rules_14_io_Chan1_out_1_Cmd : _GEN_463; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_499 = _T_28 ? rules_14_io_Chan1_out_1_Data : _GEN_464; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_500 = _T_28 ? rules_14_io_Chan1_out_2_Cmd : _GEN_465; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_501 = _T_28 ? rules_14_io_Chan1_out_2_Data : _GEN_466; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_502 = _T_28 ? rules_14_io_Chan2_out_0_Cmd : _GEN_467; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_503 = _T_28 ? rules_14_io_Chan2_out_0_Data : _GEN_468; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_504 = _T_28 ? rules_14_io_Chan2_out_1_Cmd : _GEN_469; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_505 = _T_28 ? rules_14_io_Chan2_out_1_Data : _GEN_470; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_506 = _T_28 ? rules_14_io_Chan2_out_2_Cmd : _GEN_471; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_507 = _T_28 ? rules_14_io_Chan2_out_2_Data : _GEN_472; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_508 = _T_28 ? rules_14_io_Chan3_out_0_Cmd : _GEN_473; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_509 = _T_28 ? rules_14_io_Chan3_out_0_Data : _GEN_474; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_510 = _T_28 ? rules_14_io_Chan3_out_1_Cmd : _GEN_475; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_511 = _T_28 ? rules_14_io_Chan3_out_1_Data : _GEN_476; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_512 = _T_28 ? rules_14_io_Chan3_out_2_Cmd : _GEN_477; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_513 = _T_28 ? rules_14_io_Chan3_out_2_Data : _GEN_478; // @[system.scala 125:21 129:11]
  wire  _GEN_514 = _T_28 ? rules_14_io_InvSet_out_0 : _GEN_479; // @[system.scala 125:21 130:12]
  wire  _GEN_515 = _T_28 ? rules_14_io_InvSet_out_1 : _GEN_480; // @[system.scala 125:21 130:12]
  wire  _GEN_516 = _T_28 ? rules_14_io_InvSet_out_2 : _GEN_481; // @[system.scala 125:21 130:12]
  wire  _GEN_517 = _T_28 ? rules_14_io_ShrSet_out_0 : _GEN_482; // @[system.scala 125:21 131:12]
  wire  _GEN_518 = _T_28 ? rules_14_io_ShrSet_out_1 : _GEN_483; // @[system.scala 125:21 131:12]
  wire  _GEN_519 = _T_28 ? rules_14_io_ShrSet_out_2 : _GEN_484; // @[system.scala 125:21 131:12]
  wire  _GEN_520 = _T_28 ? rules_14_io_ExGntd_out : _GEN_485; // @[system.scala 125:21 132:12]
  wire [2:0] _GEN_521 = _T_28 ? rules_14_io_CurCmd_out : _GEN_486; // @[system.scala 125:21 133:12]
  wire [1:0] _GEN_522 = _T_28 ? rules_14_io_CurPtr_out : _GEN_487; // @[system.scala 125:21 134:12]
  wire [1:0] _GEN_523 = _T_28 ? rules_14_io_MemData_out : _GEN_488; // @[system.scala 125:21 135:13]
  wire [1:0] _GEN_524 = _T_28 ? rules_14_io_AuxData_out : _GEN_489; // @[system.scala 125:21 136:13]
  wire  _T_30 = io_en_a == 5'hf; // @[system.scala 124:27]
  wire [1:0] _GEN_525 = _T_30 ? rules_15_io_Cache_out_0_State : _GEN_490; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_526 = _T_30 ? rules_15_io_Cache_out_0_Data : _GEN_491; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_527 = _T_30 ? rules_15_io_Cache_out_1_State : _GEN_492; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_528 = _T_30 ? rules_15_io_Cache_out_1_Data : _GEN_493; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_529 = _T_30 ? rules_15_io_Cache_out_2_State : _GEN_494; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_530 = _T_30 ? rules_15_io_Cache_out_2_Data : _GEN_495; // @[system.scala 125:21 126:11]
  wire [2:0] _GEN_531 = _T_30 ? rules_15_io_Chan1_out_0_Cmd : _GEN_496; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_532 = _T_30 ? rules_15_io_Chan1_out_0_Data : _GEN_497; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_533 = _T_30 ? rules_15_io_Chan1_out_1_Cmd : _GEN_498; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_534 = _T_30 ? rules_15_io_Chan1_out_1_Data : _GEN_499; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_535 = _T_30 ? rules_15_io_Chan1_out_2_Cmd : _GEN_500; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_536 = _T_30 ? rules_15_io_Chan1_out_2_Data : _GEN_501; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_537 = _T_30 ? rules_15_io_Chan2_out_0_Cmd : _GEN_502; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_538 = _T_30 ? rules_15_io_Chan2_out_0_Data : _GEN_503; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_539 = _T_30 ? rules_15_io_Chan2_out_1_Cmd : _GEN_504; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_540 = _T_30 ? rules_15_io_Chan2_out_1_Data : _GEN_505; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_541 = _T_30 ? rules_15_io_Chan2_out_2_Cmd : _GEN_506; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_542 = _T_30 ? rules_15_io_Chan2_out_2_Data : _GEN_507; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_543 = _T_30 ? rules_15_io_Chan3_out_0_Cmd : _GEN_508; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_544 = _T_30 ? rules_15_io_Chan3_out_0_Data : _GEN_509; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_545 = _T_30 ? rules_15_io_Chan3_out_1_Cmd : _GEN_510; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_546 = _T_30 ? rules_15_io_Chan3_out_1_Data : _GEN_511; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_547 = _T_30 ? rules_15_io_Chan3_out_2_Cmd : _GEN_512; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_548 = _T_30 ? rules_15_io_Chan3_out_2_Data : _GEN_513; // @[system.scala 125:21 129:11]
  wire  _GEN_549 = _T_30 ? rules_15_io_InvSet_out_0 : _GEN_514; // @[system.scala 125:21 130:12]
  wire  _GEN_550 = _T_30 ? rules_15_io_InvSet_out_1 : _GEN_515; // @[system.scala 125:21 130:12]
  wire  _GEN_551 = _T_30 ? rules_15_io_InvSet_out_2 : _GEN_516; // @[system.scala 125:21 130:12]
  wire  _GEN_552 = _T_30 ? rules_15_io_ShrSet_out_0 : _GEN_517; // @[system.scala 125:21 131:12]
  wire  _GEN_553 = _T_30 ? rules_15_io_ShrSet_out_1 : _GEN_518; // @[system.scala 125:21 131:12]
  wire  _GEN_554 = _T_30 ? rules_15_io_ShrSet_out_2 : _GEN_519; // @[system.scala 125:21 131:12]
  wire  _GEN_555 = _T_30 ? rules_15_io_ExGntd_out : _GEN_520; // @[system.scala 125:21 132:12]
  wire [2:0] _GEN_556 = _T_30 ? rules_15_io_CurCmd_out : _GEN_521; // @[system.scala 125:21 133:12]
  wire [1:0] _GEN_557 = _T_30 ? rules_15_io_CurPtr_out : _GEN_522; // @[system.scala 125:21 134:12]
  wire [1:0] _GEN_558 = _T_30 ? rules_15_io_MemData_out : _GEN_523; // @[system.scala 125:21 135:13]
  wire [1:0] _GEN_559 = _T_30 ? rules_15_io_AuxData_out : _GEN_524; // @[system.scala 125:21 136:13]
  wire  _T_32 = io_en_a == 5'h10; // @[system.scala 124:27]
  wire [1:0] _GEN_560 = _T_32 ? rules_16_io_Cache_out_0_State : _GEN_525; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_561 = _T_32 ? rules_16_io_Cache_out_0_Data : _GEN_526; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_562 = _T_32 ? rules_16_io_Cache_out_1_State : _GEN_527; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_563 = _T_32 ? rules_16_io_Cache_out_1_Data : _GEN_528; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_564 = _T_32 ? rules_16_io_Cache_out_2_State : _GEN_529; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_565 = _T_32 ? rules_16_io_Cache_out_2_Data : _GEN_530; // @[system.scala 125:21 126:11]
  wire [2:0] _GEN_566 = _T_32 ? rules_16_io_Chan1_out_0_Cmd : _GEN_531; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_567 = _T_32 ? rules_16_io_Chan1_out_0_Data : _GEN_532; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_568 = _T_32 ? rules_16_io_Chan1_out_1_Cmd : _GEN_533; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_569 = _T_32 ? rules_16_io_Chan1_out_1_Data : _GEN_534; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_570 = _T_32 ? rules_16_io_Chan1_out_2_Cmd : _GEN_535; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_571 = _T_32 ? rules_16_io_Chan1_out_2_Data : _GEN_536; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_572 = _T_32 ? rules_16_io_Chan2_out_0_Cmd : _GEN_537; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_573 = _T_32 ? rules_16_io_Chan2_out_0_Data : _GEN_538; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_574 = _T_32 ? rules_16_io_Chan2_out_1_Cmd : _GEN_539; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_575 = _T_32 ? rules_16_io_Chan2_out_1_Data : _GEN_540; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_576 = _T_32 ? rules_16_io_Chan2_out_2_Cmd : _GEN_541; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_577 = _T_32 ? rules_16_io_Chan2_out_2_Data : _GEN_542; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_578 = _T_32 ? rules_16_io_Chan3_out_0_Cmd : _GEN_543; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_579 = _T_32 ? rules_16_io_Chan3_out_0_Data : _GEN_544; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_580 = _T_32 ? rules_16_io_Chan3_out_1_Cmd : _GEN_545; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_581 = _T_32 ? rules_16_io_Chan3_out_1_Data : _GEN_546; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_582 = _T_32 ? rules_16_io_Chan3_out_2_Cmd : _GEN_547; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_583 = _T_32 ? rules_16_io_Chan3_out_2_Data : _GEN_548; // @[system.scala 125:21 129:11]
  wire  _GEN_584 = _T_32 ? rules_16_io_InvSet_out_0 : _GEN_549; // @[system.scala 125:21 130:12]
  wire  _GEN_585 = _T_32 ? rules_16_io_InvSet_out_1 : _GEN_550; // @[system.scala 125:21 130:12]
  wire  _GEN_586 = _T_32 ? rules_16_io_InvSet_out_2 : _GEN_551; // @[system.scala 125:21 130:12]
  wire  _GEN_587 = _T_32 ? rules_16_io_ShrSet_out_0 : _GEN_552; // @[system.scala 125:21 131:12]
  wire  _GEN_588 = _T_32 ? rules_16_io_ShrSet_out_1 : _GEN_553; // @[system.scala 125:21 131:12]
  wire  _GEN_589 = _T_32 ? rules_16_io_ShrSet_out_2 : _GEN_554; // @[system.scala 125:21 131:12]
  wire  _GEN_590 = _T_32 ? rules_16_io_ExGntd_out : _GEN_555; // @[system.scala 125:21 132:12]
  wire [2:0] _GEN_591 = _T_32 ? rules_16_io_CurCmd_out : _GEN_556; // @[system.scala 125:21 133:12]
  wire [1:0] _GEN_592 = _T_32 ? rules_16_io_CurPtr_out : _GEN_557; // @[system.scala 125:21 134:12]
  wire [1:0] _GEN_593 = _T_32 ? rules_16_io_MemData_out : _GEN_558; // @[system.scala 125:21 135:13]
  wire [1:0] _GEN_594 = _T_32 ? rules_16_io_AuxData_out : _GEN_559; // @[system.scala 125:21 136:13]
  wire  _T_34 = io_en_a == 5'h11; // @[system.scala 124:27]
  wire [1:0] _GEN_595 = _T_34 ? rules_17_io_Cache_out_0_State : _GEN_560; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_596 = _T_34 ? rules_17_io_Cache_out_0_Data : _GEN_561; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_597 = _T_34 ? rules_17_io_Cache_out_1_State : _GEN_562; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_598 = _T_34 ? rules_17_io_Cache_out_1_Data : _GEN_563; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_599 = _T_34 ? rules_17_io_Cache_out_2_State : _GEN_564; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_600 = _T_34 ? rules_17_io_Cache_out_2_Data : _GEN_565; // @[system.scala 125:21 126:11]
  wire [2:0] _GEN_601 = _T_34 ? rules_17_io_Chan1_out_0_Cmd : _GEN_566; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_602 = _T_34 ? rules_17_io_Chan1_out_0_Data : _GEN_567; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_603 = _T_34 ? rules_17_io_Chan1_out_1_Cmd : _GEN_568; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_604 = _T_34 ? rules_17_io_Chan1_out_1_Data : _GEN_569; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_605 = _T_34 ? rules_17_io_Chan1_out_2_Cmd : _GEN_570; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_606 = _T_34 ? rules_17_io_Chan1_out_2_Data : _GEN_571; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_607 = _T_34 ? rules_17_io_Chan2_out_0_Cmd : _GEN_572; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_608 = _T_34 ? rules_17_io_Chan2_out_0_Data : _GEN_573; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_609 = _T_34 ? rules_17_io_Chan2_out_1_Cmd : _GEN_574; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_610 = _T_34 ? rules_17_io_Chan2_out_1_Data : _GEN_575; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_611 = _T_34 ? rules_17_io_Chan2_out_2_Cmd : _GEN_576; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_612 = _T_34 ? rules_17_io_Chan2_out_2_Data : _GEN_577; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_613 = _T_34 ? rules_17_io_Chan3_out_0_Cmd : _GEN_578; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_614 = _T_34 ? rules_17_io_Chan3_out_0_Data : _GEN_579; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_615 = _T_34 ? rules_17_io_Chan3_out_1_Cmd : _GEN_580; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_616 = _T_34 ? rules_17_io_Chan3_out_1_Data : _GEN_581; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_617 = _T_34 ? rules_17_io_Chan3_out_2_Cmd : _GEN_582; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_618 = _T_34 ? rules_17_io_Chan3_out_2_Data : _GEN_583; // @[system.scala 125:21 129:11]
  wire  _GEN_619 = _T_34 ? rules_17_io_InvSet_out_0 : _GEN_584; // @[system.scala 125:21 130:12]
  wire  _GEN_620 = _T_34 ? rules_17_io_InvSet_out_1 : _GEN_585; // @[system.scala 125:21 130:12]
  wire  _GEN_621 = _T_34 ? rules_17_io_InvSet_out_2 : _GEN_586; // @[system.scala 125:21 130:12]
  wire  _GEN_622 = _T_34 ? rules_17_io_ShrSet_out_0 : _GEN_587; // @[system.scala 125:21 131:12]
  wire  _GEN_623 = _T_34 ? rules_17_io_ShrSet_out_1 : _GEN_588; // @[system.scala 125:21 131:12]
  wire  _GEN_624 = _T_34 ? rules_17_io_ShrSet_out_2 : _GEN_589; // @[system.scala 125:21 131:12]
  wire  _GEN_625 = _T_34 ? rules_17_io_ExGntd_out : _GEN_590; // @[system.scala 125:21 132:12]
  wire [2:0] _GEN_626 = _T_34 ? rules_17_io_CurCmd_out : _GEN_591; // @[system.scala 125:21 133:12]
  wire [1:0] _GEN_627 = _T_34 ? rules_17_io_CurPtr_out : _GEN_592; // @[system.scala 125:21 134:12]
  wire [1:0] _GEN_628 = _T_34 ? rules_17_io_MemData_out : _GEN_593; // @[system.scala 125:21 135:13]
  wire [1:0] _GEN_629 = _T_34 ? rules_17_io_AuxData_out : _GEN_594; // @[system.scala 125:21 136:13]
  wire  _T_36 = io_en_a == 5'h12; // @[system.scala 124:27]
  wire [1:0] _GEN_630 = _T_36 ? rules_18_io_Cache_out_0_State : _GEN_595; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_631 = _T_36 ? rules_18_io_Cache_out_0_Data : _GEN_596; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_632 = _T_36 ? rules_18_io_Cache_out_1_State : _GEN_597; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_633 = _T_36 ? rules_18_io_Cache_out_1_Data : _GEN_598; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_634 = _T_36 ? rules_18_io_Cache_out_2_State : _GEN_599; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_635 = _T_36 ? rules_18_io_Cache_out_2_Data : _GEN_600; // @[system.scala 125:21 126:11]
  wire [2:0] _GEN_636 = _T_36 ? rules_18_io_Chan1_out_0_Cmd : _GEN_601; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_637 = _T_36 ? rules_18_io_Chan1_out_0_Data : _GEN_602; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_638 = _T_36 ? rules_18_io_Chan1_out_1_Cmd : _GEN_603; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_639 = _T_36 ? rules_18_io_Chan1_out_1_Data : _GEN_604; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_640 = _T_36 ? rules_18_io_Chan1_out_2_Cmd : _GEN_605; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_641 = _T_36 ? rules_18_io_Chan1_out_2_Data : _GEN_606; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_642 = _T_36 ? rules_18_io_Chan2_out_0_Cmd : _GEN_607; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_643 = _T_36 ? rules_18_io_Chan2_out_0_Data : _GEN_608; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_644 = _T_36 ? rules_18_io_Chan2_out_1_Cmd : _GEN_609; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_645 = _T_36 ? rules_18_io_Chan2_out_1_Data : _GEN_610; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_646 = _T_36 ? rules_18_io_Chan2_out_2_Cmd : _GEN_611; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_647 = _T_36 ? rules_18_io_Chan2_out_2_Data : _GEN_612; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_648 = _T_36 ? rules_18_io_Chan3_out_0_Cmd : _GEN_613; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_649 = _T_36 ? rules_18_io_Chan3_out_0_Data : _GEN_614; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_650 = _T_36 ? rules_18_io_Chan3_out_1_Cmd : _GEN_615; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_651 = _T_36 ? rules_18_io_Chan3_out_1_Data : _GEN_616; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_652 = _T_36 ? rules_18_io_Chan3_out_2_Cmd : _GEN_617; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_653 = _T_36 ? rules_18_io_Chan3_out_2_Data : _GEN_618; // @[system.scala 125:21 129:11]
  wire  _GEN_654 = _T_36 ? rules_18_io_InvSet_out_0 : _GEN_619; // @[system.scala 125:21 130:12]
  wire  _GEN_655 = _T_36 ? rules_18_io_InvSet_out_1 : _GEN_620; // @[system.scala 125:21 130:12]
  wire  _GEN_656 = _T_36 ? rules_18_io_InvSet_out_2 : _GEN_621; // @[system.scala 125:21 130:12]
  wire  _GEN_657 = _T_36 ? rules_18_io_ShrSet_out_0 : _GEN_622; // @[system.scala 125:21 131:12]
  wire  _GEN_658 = _T_36 ? rules_18_io_ShrSet_out_1 : _GEN_623; // @[system.scala 125:21 131:12]
  wire  _GEN_659 = _T_36 ? rules_18_io_ShrSet_out_2 : _GEN_624; // @[system.scala 125:21 131:12]
  wire  _GEN_660 = _T_36 ? rules_18_io_ExGntd_out : _GEN_625; // @[system.scala 125:21 132:12]
  wire [2:0] _GEN_661 = _T_36 ? rules_18_io_CurCmd_out : _GEN_626; // @[system.scala 125:21 133:12]
  wire [1:0] _GEN_662 = _T_36 ? rules_18_io_CurPtr_out : _GEN_627; // @[system.scala 125:21 134:12]
  wire [1:0] _GEN_663 = _T_36 ? rules_18_io_MemData_out : _GEN_628; // @[system.scala 125:21 135:13]
  wire [1:0] _GEN_664 = _T_36 ? rules_18_io_AuxData_out : _GEN_629; // @[system.scala 125:21 136:13]
  wire  _T_38 = io_en_a == 5'h13; // @[system.scala 124:27]
  wire [1:0] _GEN_665 = _T_38 ? rules_19_io_Cache_out_0_State : _GEN_630; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_666 = _T_38 ? rules_19_io_Cache_out_0_Data : _GEN_631; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_667 = _T_38 ? rules_19_io_Cache_out_1_State : _GEN_632; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_668 = _T_38 ? rules_19_io_Cache_out_1_Data : _GEN_633; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_669 = _T_38 ? rules_19_io_Cache_out_2_State : _GEN_634; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_670 = _T_38 ? rules_19_io_Cache_out_2_Data : _GEN_635; // @[system.scala 125:21 126:11]
  wire [2:0] _GEN_671 = _T_38 ? rules_19_io_Chan1_out_0_Cmd : _GEN_636; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_672 = _T_38 ? rules_19_io_Chan1_out_0_Data : _GEN_637; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_673 = _T_38 ? rules_19_io_Chan1_out_1_Cmd : _GEN_638; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_674 = _T_38 ? rules_19_io_Chan1_out_1_Data : _GEN_639; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_675 = _T_38 ? rules_19_io_Chan1_out_2_Cmd : _GEN_640; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_676 = _T_38 ? rules_19_io_Chan1_out_2_Data : _GEN_641; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_677 = _T_38 ? rules_19_io_Chan2_out_0_Cmd : _GEN_642; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_678 = _T_38 ? rules_19_io_Chan2_out_0_Data : _GEN_643; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_679 = _T_38 ? rules_19_io_Chan2_out_1_Cmd : _GEN_644; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_680 = _T_38 ? rules_19_io_Chan2_out_1_Data : _GEN_645; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_681 = _T_38 ? rules_19_io_Chan2_out_2_Cmd : _GEN_646; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_682 = _T_38 ? rules_19_io_Chan2_out_2_Data : _GEN_647; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_683 = _T_38 ? rules_19_io_Chan3_out_0_Cmd : _GEN_648; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_684 = _T_38 ? rules_19_io_Chan3_out_0_Data : _GEN_649; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_685 = _T_38 ? rules_19_io_Chan3_out_1_Cmd : _GEN_650; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_686 = _T_38 ? rules_19_io_Chan3_out_1_Data : _GEN_651; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_687 = _T_38 ? rules_19_io_Chan3_out_2_Cmd : _GEN_652; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_688 = _T_38 ? rules_19_io_Chan3_out_2_Data : _GEN_653; // @[system.scala 125:21 129:11]
  wire  _GEN_689 = _T_38 ? rules_19_io_InvSet_out_0 : _GEN_654; // @[system.scala 125:21 130:12]
  wire  _GEN_690 = _T_38 ? rules_19_io_InvSet_out_1 : _GEN_655; // @[system.scala 125:21 130:12]
  wire  _GEN_691 = _T_38 ? rules_19_io_InvSet_out_2 : _GEN_656; // @[system.scala 125:21 130:12]
  wire  _GEN_692 = _T_38 ? rules_19_io_ShrSet_out_0 : _GEN_657; // @[system.scala 125:21 131:12]
  wire  _GEN_693 = _T_38 ? rules_19_io_ShrSet_out_1 : _GEN_658; // @[system.scala 125:21 131:12]
  wire  _GEN_694 = _T_38 ? rules_19_io_ShrSet_out_2 : _GEN_659; // @[system.scala 125:21 131:12]
  wire  _GEN_695 = _T_38 ? rules_19_io_ExGntd_out : _GEN_660; // @[system.scala 125:21 132:12]
  wire [2:0] _GEN_696 = _T_38 ? rules_19_io_CurCmd_out : _GEN_661; // @[system.scala 125:21 133:12]
  wire [1:0] _GEN_697 = _T_38 ? rules_19_io_CurPtr_out : _GEN_662; // @[system.scala 125:21 134:12]
  wire [1:0] _GEN_698 = _T_38 ? rules_19_io_MemData_out : _GEN_663; // @[system.scala 125:21 135:13]
  wire [1:0] _GEN_699 = _T_38 ? rules_19_io_AuxData_out : _GEN_664; // @[system.scala 125:21 136:13]
  wire  _T_40 = io_en_a == 5'h14; // @[system.scala 124:27]
  wire [1:0] _GEN_700 = _T_40 ? rules_20_io_Cache_out_0_State : _GEN_665; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_701 = _T_40 ? rules_20_io_Cache_out_0_Data : _GEN_666; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_702 = _T_40 ? rules_20_io_Cache_out_1_State : _GEN_667; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_703 = _T_40 ? rules_20_io_Cache_out_1_Data : _GEN_668; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_704 = _T_40 ? rules_20_io_Cache_out_2_State : _GEN_669; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_705 = _T_40 ? rules_20_io_Cache_out_2_Data : _GEN_670; // @[system.scala 125:21 126:11]
  wire [2:0] _GEN_706 = _T_40 ? rules_20_io_Chan1_out_0_Cmd : _GEN_671; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_707 = _T_40 ? rules_20_io_Chan1_out_0_Data : _GEN_672; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_708 = _T_40 ? rules_20_io_Chan1_out_1_Cmd : _GEN_673; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_709 = _T_40 ? rules_20_io_Chan1_out_1_Data : _GEN_674; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_710 = _T_40 ? rules_20_io_Chan1_out_2_Cmd : _GEN_675; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_711 = _T_40 ? rules_20_io_Chan1_out_2_Data : _GEN_676; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_712 = _T_40 ? rules_20_io_Chan2_out_0_Cmd : _GEN_677; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_713 = _T_40 ? rules_20_io_Chan2_out_0_Data : _GEN_678; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_714 = _T_40 ? rules_20_io_Chan2_out_1_Cmd : _GEN_679; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_715 = _T_40 ? rules_20_io_Chan2_out_1_Data : _GEN_680; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_716 = _T_40 ? rules_20_io_Chan2_out_2_Cmd : _GEN_681; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_717 = _T_40 ? rules_20_io_Chan2_out_2_Data : _GEN_682; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_718 = _T_40 ? rules_20_io_Chan3_out_0_Cmd : _GEN_683; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_719 = _T_40 ? rules_20_io_Chan3_out_0_Data : _GEN_684; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_720 = _T_40 ? rules_20_io_Chan3_out_1_Cmd : _GEN_685; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_721 = _T_40 ? rules_20_io_Chan3_out_1_Data : _GEN_686; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_722 = _T_40 ? rules_20_io_Chan3_out_2_Cmd : _GEN_687; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_723 = _T_40 ? rules_20_io_Chan3_out_2_Data : _GEN_688; // @[system.scala 125:21 129:11]
  wire  _GEN_724 = _T_40 ? rules_20_io_InvSet_out_0 : _GEN_689; // @[system.scala 125:21 130:12]
  wire  _GEN_725 = _T_40 ? rules_20_io_InvSet_out_1 : _GEN_690; // @[system.scala 125:21 130:12]
  wire  _GEN_726 = _T_40 ? rules_20_io_InvSet_out_2 : _GEN_691; // @[system.scala 125:21 130:12]
  wire  _GEN_727 = _T_40 ? rules_20_io_ShrSet_out_0 : _GEN_692; // @[system.scala 125:21 131:12]
  wire  _GEN_728 = _T_40 ? rules_20_io_ShrSet_out_1 : _GEN_693; // @[system.scala 125:21 131:12]
  wire  _GEN_729 = _T_40 ? rules_20_io_ShrSet_out_2 : _GEN_694; // @[system.scala 125:21 131:12]
  wire  _GEN_730 = _T_40 ? rules_20_io_ExGntd_out : _GEN_695; // @[system.scala 125:21 132:12]
  wire [2:0] _GEN_731 = _T_40 ? rules_20_io_CurCmd_out : _GEN_696; // @[system.scala 125:21 133:12]
  wire [1:0] _GEN_732 = _T_40 ? rules_20_io_CurPtr_out : _GEN_697; // @[system.scala 125:21 134:12]
  wire [1:0] _GEN_733 = _T_40 ? rules_20_io_MemData_out : _GEN_698; // @[system.scala 125:21 135:13]
  wire [1:0] _GEN_734 = _T_40 ? rules_20_io_AuxData_out : _GEN_699; // @[system.scala 125:21 136:13]
  wire  _T_42 = io_en_a == 5'h15; // @[system.scala 124:27]
  wire [1:0] _GEN_735 = _T_42 ? rules_21_io_Cache_out_0_State : _GEN_700; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_736 = _T_42 ? rules_21_io_Cache_out_0_Data : _GEN_701; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_737 = _T_42 ? rules_21_io_Cache_out_1_State : _GEN_702; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_738 = _T_42 ? rules_21_io_Cache_out_1_Data : _GEN_703; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_739 = _T_42 ? rules_21_io_Cache_out_2_State : _GEN_704; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_740 = _T_42 ? rules_21_io_Cache_out_2_Data : _GEN_705; // @[system.scala 125:21 126:11]
  wire [2:0] _GEN_741 = _T_42 ? rules_21_io_Chan1_out_0_Cmd : _GEN_706; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_742 = _T_42 ? rules_21_io_Chan1_out_0_Data : _GEN_707; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_743 = _T_42 ? rules_21_io_Chan1_out_1_Cmd : _GEN_708; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_744 = _T_42 ? rules_21_io_Chan1_out_1_Data : _GEN_709; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_745 = _T_42 ? rules_21_io_Chan1_out_2_Cmd : _GEN_710; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_746 = _T_42 ? rules_21_io_Chan1_out_2_Data : _GEN_711; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_747 = _T_42 ? rules_21_io_Chan2_out_0_Cmd : _GEN_712; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_748 = _T_42 ? rules_21_io_Chan2_out_0_Data : _GEN_713; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_749 = _T_42 ? rules_21_io_Chan2_out_1_Cmd : _GEN_714; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_750 = _T_42 ? rules_21_io_Chan2_out_1_Data : _GEN_715; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_751 = _T_42 ? rules_21_io_Chan2_out_2_Cmd : _GEN_716; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_752 = _T_42 ? rules_21_io_Chan2_out_2_Data : _GEN_717; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_753 = _T_42 ? rules_21_io_Chan3_out_0_Cmd : _GEN_718; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_754 = _T_42 ? rules_21_io_Chan3_out_0_Data : _GEN_719; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_755 = _T_42 ? rules_21_io_Chan3_out_1_Cmd : _GEN_720; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_756 = _T_42 ? rules_21_io_Chan3_out_1_Data : _GEN_721; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_757 = _T_42 ? rules_21_io_Chan3_out_2_Cmd : _GEN_722; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_758 = _T_42 ? rules_21_io_Chan3_out_2_Data : _GEN_723; // @[system.scala 125:21 129:11]
  wire  _GEN_759 = _T_42 ? rules_21_io_InvSet_out_0 : _GEN_724; // @[system.scala 125:21 130:12]
  wire  _GEN_760 = _T_42 ? rules_21_io_InvSet_out_1 : _GEN_725; // @[system.scala 125:21 130:12]
  wire  _GEN_761 = _T_42 ? rules_21_io_InvSet_out_2 : _GEN_726; // @[system.scala 125:21 130:12]
  wire  _GEN_762 = _T_42 ? rules_21_io_ShrSet_out_0 : _GEN_727; // @[system.scala 125:21 131:12]
  wire  _GEN_763 = _T_42 ? rules_21_io_ShrSet_out_1 : _GEN_728; // @[system.scala 125:21 131:12]
  wire  _GEN_764 = _T_42 ? rules_21_io_ShrSet_out_2 : _GEN_729; // @[system.scala 125:21 131:12]
  wire  _GEN_765 = _T_42 ? rules_21_io_ExGntd_out : _GEN_730; // @[system.scala 125:21 132:12]
  wire [2:0] _GEN_766 = _T_42 ? rules_21_io_CurCmd_out : _GEN_731; // @[system.scala 125:21 133:12]
  wire [1:0] _GEN_767 = _T_42 ? rules_21_io_CurPtr_out : _GEN_732; // @[system.scala 125:21 134:12]
  wire [1:0] _GEN_768 = _T_42 ? rules_21_io_MemData_out : _GEN_733; // @[system.scala 125:21 135:13]
  wire [1:0] _GEN_769 = _T_42 ? rules_21_io_AuxData_out : _GEN_734; // @[system.scala 125:21 136:13]
  wire  _T_44 = io_en_a == 5'h16; // @[system.scala 124:27]
  wire [1:0] _GEN_770 = _T_44 ? rules_22_io_Cache_out_0_State : _GEN_735; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_771 = _T_44 ? rules_22_io_Cache_out_0_Data : _GEN_736; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_772 = _T_44 ? rules_22_io_Cache_out_1_State : _GEN_737; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_773 = _T_44 ? rules_22_io_Cache_out_1_Data : _GEN_738; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_774 = _T_44 ? rules_22_io_Cache_out_2_State : _GEN_739; // @[system.scala 125:21 126:11]
  wire [1:0] _GEN_775 = _T_44 ? rules_22_io_Cache_out_2_Data : _GEN_740; // @[system.scala 125:21 126:11]
  wire [2:0] _GEN_776 = _T_44 ? rules_22_io_Chan1_out_0_Cmd : _GEN_741; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_777 = _T_44 ? rules_22_io_Chan1_out_0_Data : _GEN_742; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_778 = _T_44 ? rules_22_io_Chan1_out_1_Cmd : _GEN_743; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_779 = _T_44 ? rules_22_io_Chan1_out_1_Data : _GEN_744; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_780 = _T_44 ? rules_22_io_Chan1_out_2_Cmd : _GEN_745; // @[system.scala 125:21 127:11]
  wire [1:0] _GEN_781 = _T_44 ? rules_22_io_Chan1_out_2_Data : _GEN_746; // @[system.scala 125:21 127:11]
  wire [2:0] _GEN_782 = _T_44 ? rules_22_io_Chan2_out_0_Cmd : _GEN_747; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_783 = _T_44 ? rules_22_io_Chan2_out_0_Data : _GEN_748; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_784 = _T_44 ? rules_22_io_Chan2_out_1_Cmd : _GEN_749; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_785 = _T_44 ? rules_22_io_Chan2_out_1_Data : _GEN_750; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_786 = _T_44 ? rules_22_io_Chan2_out_2_Cmd : _GEN_751; // @[system.scala 125:21 128:11]
  wire [1:0] _GEN_787 = _T_44 ? rules_22_io_Chan2_out_2_Data : _GEN_752; // @[system.scala 125:21 128:11]
  wire [2:0] _GEN_788 = _T_44 ? rules_22_io_Chan3_out_0_Cmd : _GEN_753; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_789 = _T_44 ? rules_22_io_Chan3_out_0_Data : _GEN_754; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_790 = _T_44 ? rules_22_io_Chan3_out_1_Cmd : _GEN_755; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_791 = _T_44 ? rules_22_io_Chan3_out_1_Data : _GEN_756; // @[system.scala 125:21 129:11]
  wire [2:0] _GEN_792 = _T_44 ? rules_22_io_Chan3_out_2_Cmd : _GEN_757; // @[system.scala 125:21 129:11]
  wire [1:0] _GEN_793 = _T_44 ? rules_22_io_Chan3_out_2_Data : _GEN_758; // @[system.scala 125:21 129:11]
  wire  _GEN_794 = _T_44 ? rules_22_io_InvSet_out_0 : _GEN_759; // @[system.scala 125:21 130:12]
  wire  _GEN_795 = _T_44 ? rules_22_io_InvSet_out_1 : _GEN_760; // @[system.scala 125:21 130:12]
  wire  _GEN_796 = _T_44 ? rules_22_io_InvSet_out_2 : _GEN_761; // @[system.scala 125:21 130:12]
  wire  _GEN_797 = _T_44 ? rules_22_io_ShrSet_out_0 : _GEN_762; // @[system.scala 125:21 131:12]
  wire  _GEN_798 = _T_44 ? rules_22_io_ShrSet_out_1 : _GEN_763; // @[system.scala 125:21 131:12]
  wire  _GEN_799 = _T_44 ? rules_22_io_ShrSet_out_2 : _GEN_764; // @[system.scala 125:21 131:12]
  wire  _GEN_800 = _T_44 ? rules_22_io_ExGntd_out : _GEN_765; // @[system.scala 125:21 132:12]
  wire [2:0] _GEN_801 = _T_44 ? rules_22_io_CurCmd_out : _GEN_766; // @[system.scala 125:21 133:12]
  wire [1:0] _GEN_802 = _T_44 ? rules_22_io_CurPtr_out : _GEN_767; // @[system.scala 125:21 134:12]
  wire [1:0] _GEN_803 = _T_44 ? rules_22_io_MemData_out : _GEN_768; // @[system.scala 125:21 135:13]
  wire [1:0] _GEN_804 = _T_44 ? rules_22_io_AuxData_out : _GEN_769; // @[system.scala 125:21 136:13]
  wire  _T_46 = io_en_a == 5'h17; // @[system.scala 124:27]
  wire  _T_48 = io_en_a == 5'h18; // @[system.scala 124:27]
  wire  _T_50 = io_en_a == 5'h19; // @[system.scala 124:27]
  wire  _T_67 = ~reset; // @[system.scala 141:7]
  Store rules_0 ( // @[system.scala 76:16]
    .io_en_r(rules_0_io_en_r),
    .io_Cache_in_0_State(rules_0_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_0_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_0_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_0_io_Cache_in_1_Data),
    .io_Cache_in_2_State(rules_0_io_Cache_in_2_State),
    .io_Cache_in_2_Data(rules_0_io_Cache_in_2_Data),
    .io_Cache_out_0_State(rules_0_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_0_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_0_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_0_io_Cache_out_1_Data),
    .io_Cache_out_2_State(rules_0_io_Cache_out_2_State),
    .io_Cache_out_2_Data(rules_0_io_Cache_out_2_Data),
    .io_Chan1_in_0_Cmd(rules_0_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_0_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_0_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_0_io_Chan1_in_1_Data),
    .io_Chan1_in_2_Cmd(rules_0_io_Chan1_in_2_Cmd),
    .io_Chan1_in_2_Data(rules_0_io_Chan1_in_2_Data),
    .io_Chan1_out_0_Cmd(rules_0_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_0_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_0_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_0_io_Chan1_out_1_Data),
    .io_Chan1_out_2_Cmd(rules_0_io_Chan1_out_2_Cmd),
    .io_Chan1_out_2_Data(rules_0_io_Chan1_out_2_Data),
    .io_Chan2_in_0_Cmd(rules_0_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_0_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_0_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_0_io_Chan2_in_1_Data),
    .io_Chan2_in_2_Cmd(rules_0_io_Chan2_in_2_Cmd),
    .io_Chan2_in_2_Data(rules_0_io_Chan2_in_2_Data),
    .io_Chan2_out_0_Cmd(rules_0_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_0_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_0_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_0_io_Chan2_out_1_Data),
    .io_Chan2_out_2_Cmd(rules_0_io_Chan2_out_2_Cmd),
    .io_Chan2_out_2_Data(rules_0_io_Chan2_out_2_Data),
    .io_Chan3_in_0_Cmd(rules_0_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_0_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_0_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_0_io_Chan3_in_1_Data),
    .io_Chan3_in_2_Cmd(rules_0_io_Chan3_in_2_Cmd),
    .io_Chan3_in_2_Data(rules_0_io_Chan3_in_2_Data),
    .io_Chan3_out_0_Cmd(rules_0_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_0_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_0_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_0_io_Chan3_out_1_Data),
    .io_Chan3_out_2_Cmd(rules_0_io_Chan3_out_2_Cmd),
    .io_Chan3_out_2_Data(rules_0_io_Chan3_out_2_Data),
    .io_InvSet_in_0(rules_0_io_InvSet_in_0),
    .io_InvSet_in_1(rules_0_io_InvSet_in_1),
    .io_InvSet_in_2(rules_0_io_InvSet_in_2),
    .io_InvSet_out_0(rules_0_io_InvSet_out_0),
    .io_InvSet_out_1(rules_0_io_InvSet_out_1),
    .io_InvSet_out_2(rules_0_io_InvSet_out_2),
    .io_ShrSet_in_0(rules_0_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_0_io_ShrSet_in_1),
    .io_ShrSet_in_2(rules_0_io_ShrSet_in_2),
    .io_ShrSet_out_0(rules_0_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_0_io_ShrSet_out_1),
    .io_ShrSet_out_2(rules_0_io_ShrSet_out_2),
    .io_ExGntd_in(rules_0_io_ExGntd_in),
    .io_ExGntd_out(rules_0_io_ExGntd_out),
    .io_CurCmd_in(rules_0_io_CurCmd_in),
    .io_CurCmd_out(rules_0_io_CurCmd_out),
    .io_CurPtr_in(rules_0_io_CurPtr_in),
    .io_CurPtr_out(rules_0_io_CurPtr_out),
    .io_MemData_in(rules_0_io_MemData_in),
    .io_MemData_out(rules_0_io_MemData_out),
    .io_AuxData_in(rules_0_io_AuxData_in),
    .io_AuxData_out(rules_0_io_AuxData_out)
  );
  Store_1 rules_1 ( // @[system.scala 76:16]
    .io_en_r(rules_1_io_en_r),
    .io_Cache_in_0_State(rules_1_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_1_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_1_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_1_io_Cache_in_1_Data),
    .io_Cache_in_2_State(rules_1_io_Cache_in_2_State),
    .io_Cache_in_2_Data(rules_1_io_Cache_in_2_Data),
    .io_Cache_out_0_State(rules_1_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_1_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_1_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_1_io_Cache_out_1_Data),
    .io_Cache_out_2_State(rules_1_io_Cache_out_2_State),
    .io_Cache_out_2_Data(rules_1_io_Cache_out_2_Data),
    .io_Chan1_in_0_Cmd(rules_1_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_1_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_1_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_1_io_Chan1_in_1_Data),
    .io_Chan1_in_2_Cmd(rules_1_io_Chan1_in_2_Cmd),
    .io_Chan1_in_2_Data(rules_1_io_Chan1_in_2_Data),
    .io_Chan1_out_0_Cmd(rules_1_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_1_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_1_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_1_io_Chan1_out_1_Data),
    .io_Chan1_out_2_Cmd(rules_1_io_Chan1_out_2_Cmd),
    .io_Chan1_out_2_Data(rules_1_io_Chan1_out_2_Data),
    .io_Chan2_in_0_Cmd(rules_1_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_1_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_1_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_1_io_Chan2_in_1_Data),
    .io_Chan2_in_2_Cmd(rules_1_io_Chan2_in_2_Cmd),
    .io_Chan2_in_2_Data(rules_1_io_Chan2_in_2_Data),
    .io_Chan2_out_0_Cmd(rules_1_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_1_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_1_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_1_io_Chan2_out_1_Data),
    .io_Chan2_out_2_Cmd(rules_1_io_Chan2_out_2_Cmd),
    .io_Chan2_out_2_Data(rules_1_io_Chan2_out_2_Data),
    .io_Chan3_in_0_Cmd(rules_1_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_1_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_1_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_1_io_Chan3_in_1_Data),
    .io_Chan3_in_2_Cmd(rules_1_io_Chan3_in_2_Cmd),
    .io_Chan3_in_2_Data(rules_1_io_Chan3_in_2_Data),
    .io_Chan3_out_0_Cmd(rules_1_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_1_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_1_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_1_io_Chan3_out_1_Data),
    .io_Chan3_out_2_Cmd(rules_1_io_Chan3_out_2_Cmd),
    .io_Chan3_out_2_Data(rules_1_io_Chan3_out_2_Data),
    .io_InvSet_in_0(rules_1_io_InvSet_in_0),
    .io_InvSet_in_1(rules_1_io_InvSet_in_1),
    .io_InvSet_in_2(rules_1_io_InvSet_in_2),
    .io_InvSet_out_0(rules_1_io_InvSet_out_0),
    .io_InvSet_out_1(rules_1_io_InvSet_out_1),
    .io_InvSet_out_2(rules_1_io_InvSet_out_2),
    .io_ShrSet_in_0(rules_1_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_1_io_ShrSet_in_1),
    .io_ShrSet_in_2(rules_1_io_ShrSet_in_2),
    .io_ShrSet_out_0(rules_1_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_1_io_ShrSet_out_1),
    .io_ShrSet_out_2(rules_1_io_ShrSet_out_2),
    .io_ExGntd_in(rules_1_io_ExGntd_in),
    .io_ExGntd_out(rules_1_io_ExGntd_out),
    .io_CurCmd_in(rules_1_io_CurCmd_in),
    .io_CurCmd_out(rules_1_io_CurCmd_out),
    .io_CurPtr_in(rules_1_io_CurPtr_in),
    .io_CurPtr_out(rules_1_io_CurPtr_out),
    .io_MemData_in(rules_1_io_MemData_in),
    .io_MemData_out(rules_1_io_MemData_out),
    .io_AuxData_in(rules_1_io_AuxData_in),
    .io_AuxData_out(rules_1_io_AuxData_out)
  );
  Store_2 rules_2 ( // @[system.scala 76:16]
    .io_en_r(rules_2_io_en_r),
    .io_Cache_in_0_State(rules_2_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_2_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_2_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_2_io_Cache_in_1_Data),
    .io_Cache_in_2_State(rules_2_io_Cache_in_2_State),
    .io_Cache_in_2_Data(rules_2_io_Cache_in_2_Data),
    .io_Cache_out_0_State(rules_2_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_2_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_2_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_2_io_Cache_out_1_Data),
    .io_Cache_out_2_State(rules_2_io_Cache_out_2_State),
    .io_Cache_out_2_Data(rules_2_io_Cache_out_2_Data),
    .io_Chan1_in_0_Cmd(rules_2_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_2_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_2_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_2_io_Chan1_in_1_Data),
    .io_Chan1_in_2_Cmd(rules_2_io_Chan1_in_2_Cmd),
    .io_Chan1_in_2_Data(rules_2_io_Chan1_in_2_Data),
    .io_Chan1_out_0_Cmd(rules_2_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_2_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_2_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_2_io_Chan1_out_1_Data),
    .io_Chan1_out_2_Cmd(rules_2_io_Chan1_out_2_Cmd),
    .io_Chan1_out_2_Data(rules_2_io_Chan1_out_2_Data),
    .io_Chan2_in_0_Cmd(rules_2_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_2_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_2_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_2_io_Chan2_in_1_Data),
    .io_Chan2_in_2_Cmd(rules_2_io_Chan2_in_2_Cmd),
    .io_Chan2_in_2_Data(rules_2_io_Chan2_in_2_Data),
    .io_Chan2_out_0_Cmd(rules_2_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_2_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_2_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_2_io_Chan2_out_1_Data),
    .io_Chan2_out_2_Cmd(rules_2_io_Chan2_out_2_Cmd),
    .io_Chan2_out_2_Data(rules_2_io_Chan2_out_2_Data),
    .io_Chan3_in_0_Cmd(rules_2_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_2_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_2_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_2_io_Chan3_in_1_Data),
    .io_Chan3_in_2_Cmd(rules_2_io_Chan3_in_2_Cmd),
    .io_Chan3_in_2_Data(rules_2_io_Chan3_in_2_Data),
    .io_Chan3_out_0_Cmd(rules_2_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_2_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_2_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_2_io_Chan3_out_1_Data),
    .io_Chan3_out_2_Cmd(rules_2_io_Chan3_out_2_Cmd),
    .io_Chan3_out_2_Data(rules_2_io_Chan3_out_2_Data),
    .io_InvSet_in_0(rules_2_io_InvSet_in_0),
    .io_InvSet_in_1(rules_2_io_InvSet_in_1),
    .io_InvSet_in_2(rules_2_io_InvSet_in_2),
    .io_InvSet_out_0(rules_2_io_InvSet_out_0),
    .io_InvSet_out_1(rules_2_io_InvSet_out_1),
    .io_InvSet_out_2(rules_2_io_InvSet_out_2),
    .io_ShrSet_in_0(rules_2_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_2_io_ShrSet_in_1),
    .io_ShrSet_in_2(rules_2_io_ShrSet_in_2),
    .io_ShrSet_out_0(rules_2_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_2_io_ShrSet_out_1),
    .io_ShrSet_out_2(rules_2_io_ShrSet_out_2),
    .io_ExGntd_in(rules_2_io_ExGntd_in),
    .io_ExGntd_out(rules_2_io_ExGntd_out),
    .io_CurCmd_in(rules_2_io_CurCmd_in),
    .io_CurCmd_out(rules_2_io_CurCmd_out),
    .io_CurPtr_in(rules_2_io_CurPtr_in),
    .io_CurPtr_out(rules_2_io_CurPtr_out),
    .io_MemData_in(rules_2_io_MemData_in),
    .io_MemData_out(rules_2_io_MemData_out),
    .io_AuxData_in(rules_2_io_AuxData_in),
    .io_AuxData_out(rules_2_io_AuxData_out)
  );
  Store_3 rules_3 ( // @[system.scala 76:16]
    .io_en_r(rules_3_io_en_r),
    .io_Cache_in_0_State(rules_3_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_3_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_3_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_3_io_Cache_in_1_Data),
    .io_Cache_in_2_State(rules_3_io_Cache_in_2_State),
    .io_Cache_in_2_Data(rules_3_io_Cache_in_2_Data),
    .io_Cache_out_0_State(rules_3_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_3_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_3_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_3_io_Cache_out_1_Data),
    .io_Cache_out_2_State(rules_3_io_Cache_out_2_State),
    .io_Cache_out_2_Data(rules_3_io_Cache_out_2_Data),
    .io_Chan1_in_0_Cmd(rules_3_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_3_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_3_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_3_io_Chan1_in_1_Data),
    .io_Chan1_in_2_Cmd(rules_3_io_Chan1_in_2_Cmd),
    .io_Chan1_in_2_Data(rules_3_io_Chan1_in_2_Data),
    .io_Chan1_out_0_Cmd(rules_3_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_3_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_3_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_3_io_Chan1_out_1_Data),
    .io_Chan1_out_2_Cmd(rules_3_io_Chan1_out_2_Cmd),
    .io_Chan1_out_2_Data(rules_3_io_Chan1_out_2_Data),
    .io_Chan2_in_0_Cmd(rules_3_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_3_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_3_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_3_io_Chan2_in_1_Data),
    .io_Chan2_in_2_Cmd(rules_3_io_Chan2_in_2_Cmd),
    .io_Chan2_in_2_Data(rules_3_io_Chan2_in_2_Data),
    .io_Chan2_out_0_Cmd(rules_3_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_3_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_3_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_3_io_Chan2_out_1_Data),
    .io_Chan2_out_2_Cmd(rules_3_io_Chan2_out_2_Cmd),
    .io_Chan2_out_2_Data(rules_3_io_Chan2_out_2_Data),
    .io_Chan3_in_0_Cmd(rules_3_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_3_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_3_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_3_io_Chan3_in_1_Data),
    .io_Chan3_in_2_Cmd(rules_3_io_Chan3_in_2_Cmd),
    .io_Chan3_in_2_Data(rules_3_io_Chan3_in_2_Data),
    .io_Chan3_out_0_Cmd(rules_3_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_3_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_3_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_3_io_Chan3_out_1_Data),
    .io_Chan3_out_2_Cmd(rules_3_io_Chan3_out_2_Cmd),
    .io_Chan3_out_2_Data(rules_3_io_Chan3_out_2_Data),
    .io_InvSet_in_0(rules_3_io_InvSet_in_0),
    .io_InvSet_in_1(rules_3_io_InvSet_in_1),
    .io_InvSet_in_2(rules_3_io_InvSet_in_2),
    .io_InvSet_out_0(rules_3_io_InvSet_out_0),
    .io_InvSet_out_1(rules_3_io_InvSet_out_1),
    .io_InvSet_out_2(rules_3_io_InvSet_out_2),
    .io_ShrSet_in_0(rules_3_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_3_io_ShrSet_in_1),
    .io_ShrSet_in_2(rules_3_io_ShrSet_in_2),
    .io_ShrSet_out_0(rules_3_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_3_io_ShrSet_out_1),
    .io_ShrSet_out_2(rules_3_io_ShrSet_out_2),
    .io_ExGntd_in(rules_3_io_ExGntd_in),
    .io_ExGntd_out(rules_3_io_ExGntd_out),
    .io_CurCmd_in(rules_3_io_CurCmd_in),
    .io_CurCmd_out(rules_3_io_CurCmd_out),
    .io_CurPtr_in(rules_3_io_CurPtr_in),
    .io_CurPtr_out(rules_3_io_CurPtr_out),
    .io_MemData_in(rules_3_io_MemData_in),
    .io_MemData_out(rules_3_io_MemData_out),
    .io_AuxData_in(rules_3_io_AuxData_in),
    .io_AuxData_out(rules_3_io_AuxData_out)
  );
  SendReqS rules_4 ( // @[system.scala 80:16]
    .io_en_r(rules_4_io_en_r),
    .io_Cache_in_0_State(rules_4_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_4_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_4_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_4_io_Cache_in_1_Data),
    .io_Cache_in_2_State(rules_4_io_Cache_in_2_State),
    .io_Cache_in_2_Data(rules_4_io_Cache_in_2_Data),
    .io_Cache_out_0_State(rules_4_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_4_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_4_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_4_io_Cache_out_1_Data),
    .io_Cache_out_2_State(rules_4_io_Cache_out_2_State),
    .io_Cache_out_2_Data(rules_4_io_Cache_out_2_Data),
    .io_Chan1_in_0_Cmd(rules_4_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_4_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_4_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_4_io_Chan1_in_1_Data),
    .io_Chan1_in_2_Cmd(rules_4_io_Chan1_in_2_Cmd),
    .io_Chan1_in_2_Data(rules_4_io_Chan1_in_2_Data),
    .io_Chan1_out_0_Cmd(rules_4_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_4_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_4_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_4_io_Chan1_out_1_Data),
    .io_Chan1_out_2_Cmd(rules_4_io_Chan1_out_2_Cmd),
    .io_Chan1_out_2_Data(rules_4_io_Chan1_out_2_Data),
    .io_Chan2_in_0_Cmd(rules_4_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_4_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_4_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_4_io_Chan2_in_1_Data),
    .io_Chan2_in_2_Cmd(rules_4_io_Chan2_in_2_Cmd),
    .io_Chan2_in_2_Data(rules_4_io_Chan2_in_2_Data),
    .io_Chan2_out_0_Cmd(rules_4_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_4_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_4_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_4_io_Chan2_out_1_Data),
    .io_Chan2_out_2_Cmd(rules_4_io_Chan2_out_2_Cmd),
    .io_Chan2_out_2_Data(rules_4_io_Chan2_out_2_Data),
    .io_Chan3_in_0_Cmd(rules_4_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_4_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_4_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_4_io_Chan3_in_1_Data),
    .io_Chan3_in_2_Cmd(rules_4_io_Chan3_in_2_Cmd),
    .io_Chan3_in_2_Data(rules_4_io_Chan3_in_2_Data),
    .io_Chan3_out_0_Cmd(rules_4_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_4_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_4_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_4_io_Chan3_out_1_Data),
    .io_Chan3_out_2_Cmd(rules_4_io_Chan3_out_2_Cmd),
    .io_Chan3_out_2_Data(rules_4_io_Chan3_out_2_Data),
    .io_InvSet_in_0(rules_4_io_InvSet_in_0),
    .io_InvSet_in_1(rules_4_io_InvSet_in_1),
    .io_InvSet_in_2(rules_4_io_InvSet_in_2),
    .io_InvSet_out_0(rules_4_io_InvSet_out_0),
    .io_InvSet_out_1(rules_4_io_InvSet_out_1),
    .io_InvSet_out_2(rules_4_io_InvSet_out_2),
    .io_ShrSet_in_0(rules_4_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_4_io_ShrSet_in_1),
    .io_ShrSet_in_2(rules_4_io_ShrSet_in_2),
    .io_ShrSet_out_0(rules_4_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_4_io_ShrSet_out_1),
    .io_ShrSet_out_2(rules_4_io_ShrSet_out_2),
    .io_ExGntd_in(rules_4_io_ExGntd_in),
    .io_ExGntd_out(rules_4_io_ExGntd_out),
    .io_CurCmd_in(rules_4_io_CurCmd_in),
    .io_CurCmd_out(rules_4_io_CurCmd_out),
    .io_CurPtr_in(rules_4_io_CurPtr_in),
    .io_CurPtr_out(rules_4_io_CurPtr_out),
    .io_MemData_in(rules_4_io_MemData_in),
    .io_MemData_out(rules_4_io_MemData_out),
    .io_AuxData_in(rules_4_io_AuxData_in),
    .io_AuxData_out(rules_4_io_AuxData_out)
  );
  SendReqS_1 rules_5 ( // @[system.scala 80:16]
    .io_en_r(rules_5_io_en_r),
    .io_Cache_in_0_State(rules_5_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_5_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_5_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_5_io_Cache_in_1_Data),
    .io_Cache_in_2_State(rules_5_io_Cache_in_2_State),
    .io_Cache_in_2_Data(rules_5_io_Cache_in_2_Data),
    .io_Cache_out_0_State(rules_5_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_5_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_5_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_5_io_Cache_out_1_Data),
    .io_Cache_out_2_State(rules_5_io_Cache_out_2_State),
    .io_Cache_out_2_Data(rules_5_io_Cache_out_2_Data),
    .io_Chan1_in_0_Cmd(rules_5_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_5_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_5_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_5_io_Chan1_in_1_Data),
    .io_Chan1_in_2_Cmd(rules_5_io_Chan1_in_2_Cmd),
    .io_Chan1_in_2_Data(rules_5_io_Chan1_in_2_Data),
    .io_Chan1_out_0_Cmd(rules_5_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_5_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_5_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_5_io_Chan1_out_1_Data),
    .io_Chan1_out_2_Cmd(rules_5_io_Chan1_out_2_Cmd),
    .io_Chan1_out_2_Data(rules_5_io_Chan1_out_2_Data),
    .io_Chan2_in_0_Cmd(rules_5_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_5_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_5_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_5_io_Chan2_in_1_Data),
    .io_Chan2_in_2_Cmd(rules_5_io_Chan2_in_2_Cmd),
    .io_Chan2_in_2_Data(rules_5_io_Chan2_in_2_Data),
    .io_Chan2_out_0_Cmd(rules_5_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_5_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_5_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_5_io_Chan2_out_1_Data),
    .io_Chan2_out_2_Cmd(rules_5_io_Chan2_out_2_Cmd),
    .io_Chan2_out_2_Data(rules_5_io_Chan2_out_2_Data),
    .io_Chan3_in_0_Cmd(rules_5_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_5_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_5_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_5_io_Chan3_in_1_Data),
    .io_Chan3_in_2_Cmd(rules_5_io_Chan3_in_2_Cmd),
    .io_Chan3_in_2_Data(rules_5_io_Chan3_in_2_Data),
    .io_Chan3_out_0_Cmd(rules_5_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_5_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_5_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_5_io_Chan3_out_1_Data),
    .io_Chan3_out_2_Cmd(rules_5_io_Chan3_out_2_Cmd),
    .io_Chan3_out_2_Data(rules_5_io_Chan3_out_2_Data),
    .io_InvSet_in_0(rules_5_io_InvSet_in_0),
    .io_InvSet_in_1(rules_5_io_InvSet_in_1),
    .io_InvSet_in_2(rules_5_io_InvSet_in_2),
    .io_InvSet_out_0(rules_5_io_InvSet_out_0),
    .io_InvSet_out_1(rules_5_io_InvSet_out_1),
    .io_InvSet_out_2(rules_5_io_InvSet_out_2),
    .io_ShrSet_in_0(rules_5_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_5_io_ShrSet_in_1),
    .io_ShrSet_in_2(rules_5_io_ShrSet_in_2),
    .io_ShrSet_out_0(rules_5_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_5_io_ShrSet_out_1),
    .io_ShrSet_out_2(rules_5_io_ShrSet_out_2),
    .io_ExGntd_in(rules_5_io_ExGntd_in),
    .io_ExGntd_out(rules_5_io_ExGntd_out),
    .io_CurCmd_in(rules_5_io_CurCmd_in),
    .io_CurCmd_out(rules_5_io_CurCmd_out),
    .io_CurPtr_in(rules_5_io_CurPtr_in),
    .io_CurPtr_out(rules_5_io_CurPtr_out),
    .io_MemData_in(rules_5_io_MemData_in),
    .io_MemData_out(rules_5_io_MemData_out),
    .io_AuxData_in(rules_5_io_AuxData_in),
    .io_AuxData_out(rules_5_io_AuxData_out)
  );
  SendReqE rules_6 ( // @[system.scala 83:16]
    .io_en_r(rules_6_io_en_r),
    .io_Cache_in_0_State(rules_6_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_6_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_6_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_6_io_Cache_in_1_Data),
    .io_Cache_in_2_State(rules_6_io_Cache_in_2_State),
    .io_Cache_in_2_Data(rules_6_io_Cache_in_2_Data),
    .io_Cache_out_0_State(rules_6_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_6_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_6_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_6_io_Cache_out_1_Data),
    .io_Cache_out_2_State(rules_6_io_Cache_out_2_State),
    .io_Cache_out_2_Data(rules_6_io_Cache_out_2_Data),
    .io_Chan1_in_0_Cmd(rules_6_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_6_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_6_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_6_io_Chan1_in_1_Data),
    .io_Chan1_in_2_Cmd(rules_6_io_Chan1_in_2_Cmd),
    .io_Chan1_in_2_Data(rules_6_io_Chan1_in_2_Data),
    .io_Chan1_out_0_Cmd(rules_6_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_6_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_6_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_6_io_Chan1_out_1_Data),
    .io_Chan1_out_2_Cmd(rules_6_io_Chan1_out_2_Cmd),
    .io_Chan1_out_2_Data(rules_6_io_Chan1_out_2_Data),
    .io_Chan2_in_0_Cmd(rules_6_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_6_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_6_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_6_io_Chan2_in_1_Data),
    .io_Chan2_in_2_Cmd(rules_6_io_Chan2_in_2_Cmd),
    .io_Chan2_in_2_Data(rules_6_io_Chan2_in_2_Data),
    .io_Chan2_out_0_Cmd(rules_6_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_6_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_6_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_6_io_Chan2_out_1_Data),
    .io_Chan2_out_2_Cmd(rules_6_io_Chan2_out_2_Cmd),
    .io_Chan2_out_2_Data(rules_6_io_Chan2_out_2_Data),
    .io_Chan3_in_0_Cmd(rules_6_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_6_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_6_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_6_io_Chan3_in_1_Data),
    .io_Chan3_in_2_Cmd(rules_6_io_Chan3_in_2_Cmd),
    .io_Chan3_in_2_Data(rules_6_io_Chan3_in_2_Data),
    .io_Chan3_out_0_Cmd(rules_6_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_6_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_6_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_6_io_Chan3_out_1_Data),
    .io_Chan3_out_2_Cmd(rules_6_io_Chan3_out_2_Cmd),
    .io_Chan3_out_2_Data(rules_6_io_Chan3_out_2_Data),
    .io_InvSet_in_0(rules_6_io_InvSet_in_0),
    .io_InvSet_in_1(rules_6_io_InvSet_in_1),
    .io_InvSet_in_2(rules_6_io_InvSet_in_2),
    .io_InvSet_out_0(rules_6_io_InvSet_out_0),
    .io_InvSet_out_1(rules_6_io_InvSet_out_1),
    .io_InvSet_out_2(rules_6_io_InvSet_out_2),
    .io_ShrSet_in_0(rules_6_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_6_io_ShrSet_in_1),
    .io_ShrSet_in_2(rules_6_io_ShrSet_in_2),
    .io_ShrSet_out_0(rules_6_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_6_io_ShrSet_out_1),
    .io_ShrSet_out_2(rules_6_io_ShrSet_out_2),
    .io_ExGntd_in(rules_6_io_ExGntd_in),
    .io_ExGntd_out(rules_6_io_ExGntd_out),
    .io_CurCmd_in(rules_6_io_CurCmd_in),
    .io_CurCmd_out(rules_6_io_CurCmd_out),
    .io_CurPtr_in(rules_6_io_CurPtr_in),
    .io_CurPtr_out(rules_6_io_CurPtr_out),
    .io_MemData_in(rules_6_io_MemData_in),
    .io_MemData_out(rules_6_io_MemData_out),
    .io_AuxData_in(rules_6_io_AuxData_in),
    .io_AuxData_out(rules_6_io_AuxData_out)
  );
  SendReqE_1 rules_7 ( // @[system.scala 83:16]
    .io_en_r(rules_7_io_en_r),
    .io_Cache_in_0_State(rules_7_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_7_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_7_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_7_io_Cache_in_1_Data),
    .io_Cache_in_2_State(rules_7_io_Cache_in_2_State),
    .io_Cache_in_2_Data(rules_7_io_Cache_in_2_Data),
    .io_Cache_out_0_State(rules_7_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_7_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_7_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_7_io_Cache_out_1_Data),
    .io_Cache_out_2_State(rules_7_io_Cache_out_2_State),
    .io_Cache_out_2_Data(rules_7_io_Cache_out_2_Data),
    .io_Chan1_in_0_Cmd(rules_7_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_7_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_7_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_7_io_Chan1_in_1_Data),
    .io_Chan1_in_2_Cmd(rules_7_io_Chan1_in_2_Cmd),
    .io_Chan1_in_2_Data(rules_7_io_Chan1_in_2_Data),
    .io_Chan1_out_0_Cmd(rules_7_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_7_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_7_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_7_io_Chan1_out_1_Data),
    .io_Chan1_out_2_Cmd(rules_7_io_Chan1_out_2_Cmd),
    .io_Chan1_out_2_Data(rules_7_io_Chan1_out_2_Data),
    .io_Chan2_in_0_Cmd(rules_7_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_7_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_7_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_7_io_Chan2_in_1_Data),
    .io_Chan2_in_2_Cmd(rules_7_io_Chan2_in_2_Cmd),
    .io_Chan2_in_2_Data(rules_7_io_Chan2_in_2_Data),
    .io_Chan2_out_0_Cmd(rules_7_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_7_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_7_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_7_io_Chan2_out_1_Data),
    .io_Chan2_out_2_Cmd(rules_7_io_Chan2_out_2_Cmd),
    .io_Chan2_out_2_Data(rules_7_io_Chan2_out_2_Data),
    .io_Chan3_in_0_Cmd(rules_7_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_7_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_7_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_7_io_Chan3_in_1_Data),
    .io_Chan3_in_2_Cmd(rules_7_io_Chan3_in_2_Cmd),
    .io_Chan3_in_2_Data(rules_7_io_Chan3_in_2_Data),
    .io_Chan3_out_0_Cmd(rules_7_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_7_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_7_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_7_io_Chan3_out_1_Data),
    .io_Chan3_out_2_Cmd(rules_7_io_Chan3_out_2_Cmd),
    .io_Chan3_out_2_Data(rules_7_io_Chan3_out_2_Data),
    .io_InvSet_in_0(rules_7_io_InvSet_in_0),
    .io_InvSet_in_1(rules_7_io_InvSet_in_1),
    .io_InvSet_in_2(rules_7_io_InvSet_in_2),
    .io_InvSet_out_0(rules_7_io_InvSet_out_0),
    .io_InvSet_out_1(rules_7_io_InvSet_out_1),
    .io_InvSet_out_2(rules_7_io_InvSet_out_2),
    .io_ShrSet_in_0(rules_7_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_7_io_ShrSet_in_1),
    .io_ShrSet_in_2(rules_7_io_ShrSet_in_2),
    .io_ShrSet_out_0(rules_7_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_7_io_ShrSet_out_1),
    .io_ShrSet_out_2(rules_7_io_ShrSet_out_2),
    .io_ExGntd_in(rules_7_io_ExGntd_in),
    .io_ExGntd_out(rules_7_io_ExGntd_out),
    .io_CurCmd_in(rules_7_io_CurCmd_in),
    .io_CurCmd_out(rules_7_io_CurCmd_out),
    .io_CurPtr_in(rules_7_io_CurPtr_in),
    .io_CurPtr_out(rules_7_io_CurPtr_out),
    .io_MemData_in(rules_7_io_MemData_in),
    .io_MemData_out(rules_7_io_MemData_out),
    .io_AuxData_in(rules_7_io_AuxData_in),
    .io_AuxData_out(rules_7_io_AuxData_out)
  );
  RecvReqS rules_8 ( // @[system.scala 86:16]
    .io_en_r(rules_8_io_en_r),
    .io_Cache_in_0_State(rules_8_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_8_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_8_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_8_io_Cache_in_1_Data),
    .io_Cache_in_2_State(rules_8_io_Cache_in_2_State),
    .io_Cache_in_2_Data(rules_8_io_Cache_in_2_Data),
    .io_Cache_out_0_State(rules_8_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_8_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_8_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_8_io_Cache_out_1_Data),
    .io_Cache_out_2_State(rules_8_io_Cache_out_2_State),
    .io_Cache_out_2_Data(rules_8_io_Cache_out_2_Data),
    .io_Chan1_in_0_Cmd(rules_8_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_8_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_8_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_8_io_Chan1_in_1_Data),
    .io_Chan1_in_2_Cmd(rules_8_io_Chan1_in_2_Cmd),
    .io_Chan1_in_2_Data(rules_8_io_Chan1_in_2_Data),
    .io_Chan1_out_0_Cmd(rules_8_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_8_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_8_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_8_io_Chan1_out_1_Data),
    .io_Chan1_out_2_Cmd(rules_8_io_Chan1_out_2_Cmd),
    .io_Chan1_out_2_Data(rules_8_io_Chan1_out_2_Data),
    .io_Chan2_in_0_Cmd(rules_8_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_8_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_8_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_8_io_Chan2_in_1_Data),
    .io_Chan2_in_2_Cmd(rules_8_io_Chan2_in_2_Cmd),
    .io_Chan2_in_2_Data(rules_8_io_Chan2_in_2_Data),
    .io_Chan2_out_0_Cmd(rules_8_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_8_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_8_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_8_io_Chan2_out_1_Data),
    .io_Chan2_out_2_Cmd(rules_8_io_Chan2_out_2_Cmd),
    .io_Chan2_out_2_Data(rules_8_io_Chan2_out_2_Data),
    .io_Chan3_in_0_Cmd(rules_8_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_8_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_8_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_8_io_Chan3_in_1_Data),
    .io_Chan3_in_2_Cmd(rules_8_io_Chan3_in_2_Cmd),
    .io_Chan3_in_2_Data(rules_8_io_Chan3_in_2_Data),
    .io_Chan3_out_0_Cmd(rules_8_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_8_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_8_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_8_io_Chan3_out_1_Data),
    .io_Chan3_out_2_Cmd(rules_8_io_Chan3_out_2_Cmd),
    .io_Chan3_out_2_Data(rules_8_io_Chan3_out_2_Data),
    .io_InvSet_in_0(rules_8_io_InvSet_in_0),
    .io_InvSet_in_1(rules_8_io_InvSet_in_1),
    .io_InvSet_in_2(rules_8_io_InvSet_in_2),
    .io_InvSet_out_0(rules_8_io_InvSet_out_0),
    .io_InvSet_out_1(rules_8_io_InvSet_out_1),
    .io_InvSet_out_2(rules_8_io_InvSet_out_2),
    .io_ShrSet_in_0(rules_8_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_8_io_ShrSet_in_1),
    .io_ShrSet_in_2(rules_8_io_ShrSet_in_2),
    .io_ShrSet_out_0(rules_8_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_8_io_ShrSet_out_1),
    .io_ShrSet_out_2(rules_8_io_ShrSet_out_2),
    .io_ExGntd_in(rules_8_io_ExGntd_in),
    .io_ExGntd_out(rules_8_io_ExGntd_out),
    .io_CurCmd_in(rules_8_io_CurCmd_in),
    .io_CurCmd_out(rules_8_io_CurCmd_out),
    .io_CurPtr_in(rules_8_io_CurPtr_in),
    .io_CurPtr_out(rules_8_io_CurPtr_out),
    .io_MemData_in(rules_8_io_MemData_in),
    .io_MemData_out(rules_8_io_MemData_out),
    .io_AuxData_in(rules_8_io_AuxData_in),
    .io_AuxData_out(rules_8_io_AuxData_out)
  );
  RecvReqS_1 rules_9 ( // @[system.scala 86:16]
    .io_en_r(rules_9_io_en_r),
    .io_Cache_in_0_State(rules_9_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_9_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_9_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_9_io_Cache_in_1_Data),
    .io_Cache_in_2_State(rules_9_io_Cache_in_2_State),
    .io_Cache_in_2_Data(rules_9_io_Cache_in_2_Data),
    .io_Cache_out_0_State(rules_9_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_9_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_9_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_9_io_Cache_out_1_Data),
    .io_Cache_out_2_State(rules_9_io_Cache_out_2_State),
    .io_Cache_out_2_Data(rules_9_io_Cache_out_2_Data),
    .io_Chan1_in_0_Cmd(rules_9_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_9_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_9_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_9_io_Chan1_in_1_Data),
    .io_Chan1_in_2_Cmd(rules_9_io_Chan1_in_2_Cmd),
    .io_Chan1_in_2_Data(rules_9_io_Chan1_in_2_Data),
    .io_Chan1_out_0_Cmd(rules_9_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_9_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_9_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_9_io_Chan1_out_1_Data),
    .io_Chan1_out_2_Cmd(rules_9_io_Chan1_out_2_Cmd),
    .io_Chan1_out_2_Data(rules_9_io_Chan1_out_2_Data),
    .io_Chan2_in_0_Cmd(rules_9_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_9_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_9_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_9_io_Chan2_in_1_Data),
    .io_Chan2_in_2_Cmd(rules_9_io_Chan2_in_2_Cmd),
    .io_Chan2_in_2_Data(rules_9_io_Chan2_in_2_Data),
    .io_Chan2_out_0_Cmd(rules_9_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_9_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_9_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_9_io_Chan2_out_1_Data),
    .io_Chan2_out_2_Cmd(rules_9_io_Chan2_out_2_Cmd),
    .io_Chan2_out_2_Data(rules_9_io_Chan2_out_2_Data),
    .io_Chan3_in_0_Cmd(rules_9_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_9_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_9_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_9_io_Chan3_in_1_Data),
    .io_Chan3_in_2_Cmd(rules_9_io_Chan3_in_2_Cmd),
    .io_Chan3_in_2_Data(rules_9_io_Chan3_in_2_Data),
    .io_Chan3_out_0_Cmd(rules_9_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_9_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_9_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_9_io_Chan3_out_1_Data),
    .io_Chan3_out_2_Cmd(rules_9_io_Chan3_out_2_Cmd),
    .io_Chan3_out_2_Data(rules_9_io_Chan3_out_2_Data),
    .io_InvSet_in_0(rules_9_io_InvSet_in_0),
    .io_InvSet_in_1(rules_9_io_InvSet_in_1),
    .io_InvSet_in_2(rules_9_io_InvSet_in_2),
    .io_InvSet_out_0(rules_9_io_InvSet_out_0),
    .io_InvSet_out_1(rules_9_io_InvSet_out_1),
    .io_InvSet_out_2(rules_9_io_InvSet_out_2),
    .io_ShrSet_in_0(rules_9_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_9_io_ShrSet_in_1),
    .io_ShrSet_in_2(rules_9_io_ShrSet_in_2),
    .io_ShrSet_out_0(rules_9_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_9_io_ShrSet_out_1),
    .io_ShrSet_out_2(rules_9_io_ShrSet_out_2),
    .io_ExGntd_in(rules_9_io_ExGntd_in),
    .io_ExGntd_out(rules_9_io_ExGntd_out),
    .io_CurCmd_in(rules_9_io_CurCmd_in),
    .io_CurCmd_out(rules_9_io_CurCmd_out),
    .io_CurPtr_in(rules_9_io_CurPtr_in),
    .io_CurPtr_out(rules_9_io_CurPtr_out),
    .io_MemData_in(rules_9_io_MemData_in),
    .io_MemData_out(rules_9_io_MemData_out),
    .io_AuxData_in(rules_9_io_AuxData_in),
    .io_AuxData_out(rules_9_io_AuxData_out)
  );
  RecvReqE rules_10 ( // @[system.scala 89:16]
    .io_en_r(rules_10_io_en_r),
    .io_Cache_in_0_State(rules_10_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_10_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_10_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_10_io_Cache_in_1_Data),
    .io_Cache_in_2_State(rules_10_io_Cache_in_2_State),
    .io_Cache_in_2_Data(rules_10_io_Cache_in_2_Data),
    .io_Cache_out_0_State(rules_10_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_10_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_10_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_10_io_Cache_out_1_Data),
    .io_Cache_out_2_State(rules_10_io_Cache_out_2_State),
    .io_Cache_out_2_Data(rules_10_io_Cache_out_2_Data),
    .io_Chan1_in_0_Cmd(rules_10_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_10_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_10_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_10_io_Chan1_in_1_Data),
    .io_Chan1_in_2_Cmd(rules_10_io_Chan1_in_2_Cmd),
    .io_Chan1_in_2_Data(rules_10_io_Chan1_in_2_Data),
    .io_Chan1_out_0_Cmd(rules_10_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_10_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_10_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_10_io_Chan1_out_1_Data),
    .io_Chan1_out_2_Cmd(rules_10_io_Chan1_out_2_Cmd),
    .io_Chan1_out_2_Data(rules_10_io_Chan1_out_2_Data),
    .io_Chan2_in_0_Cmd(rules_10_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_10_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_10_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_10_io_Chan2_in_1_Data),
    .io_Chan2_in_2_Cmd(rules_10_io_Chan2_in_2_Cmd),
    .io_Chan2_in_2_Data(rules_10_io_Chan2_in_2_Data),
    .io_Chan2_out_0_Cmd(rules_10_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_10_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_10_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_10_io_Chan2_out_1_Data),
    .io_Chan2_out_2_Cmd(rules_10_io_Chan2_out_2_Cmd),
    .io_Chan2_out_2_Data(rules_10_io_Chan2_out_2_Data),
    .io_Chan3_in_0_Cmd(rules_10_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_10_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_10_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_10_io_Chan3_in_1_Data),
    .io_Chan3_in_2_Cmd(rules_10_io_Chan3_in_2_Cmd),
    .io_Chan3_in_2_Data(rules_10_io_Chan3_in_2_Data),
    .io_Chan3_out_0_Cmd(rules_10_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_10_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_10_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_10_io_Chan3_out_1_Data),
    .io_Chan3_out_2_Cmd(rules_10_io_Chan3_out_2_Cmd),
    .io_Chan3_out_2_Data(rules_10_io_Chan3_out_2_Data),
    .io_InvSet_in_0(rules_10_io_InvSet_in_0),
    .io_InvSet_in_1(rules_10_io_InvSet_in_1),
    .io_InvSet_in_2(rules_10_io_InvSet_in_2),
    .io_InvSet_out_0(rules_10_io_InvSet_out_0),
    .io_InvSet_out_1(rules_10_io_InvSet_out_1),
    .io_InvSet_out_2(rules_10_io_InvSet_out_2),
    .io_ShrSet_in_0(rules_10_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_10_io_ShrSet_in_1),
    .io_ShrSet_in_2(rules_10_io_ShrSet_in_2),
    .io_ShrSet_out_0(rules_10_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_10_io_ShrSet_out_1),
    .io_ShrSet_out_2(rules_10_io_ShrSet_out_2),
    .io_ExGntd_in(rules_10_io_ExGntd_in),
    .io_ExGntd_out(rules_10_io_ExGntd_out),
    .io_CurCmd_in(rules_10_io_CurCmd_in),
    .io_CurCmd_out(rules_10_io_CurCmd_out),
    .io_CurPtr_in(rules_10_io_CurPtr_in),
    .io_CurPtr_out(rules_10_io_CurPtr_out),
    .io_MemData_in(rules_10_io_MemData_in),
    .io_MemData_out(rules_10_io_MemData_out),
    .io_AuxData_in(rules_10_io_AuxData_in),
    .io_AuxData_out(rules_10_io_AuxData_out)
  );
  RecvReqE_1 rules_11 ( // @[system.scala 89:16]
    .io_en_r(rules_11_io_en_r),
    .io_Cache_in_0_State(rules_11_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_11_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_11_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_11_io_Cache_in_1_Data),
    .io_Cache_in_2_State(rules_11_io_Cache_in_2_State),
    .io_Cache_in_2_Data(rules_11_io_Cache_in_2_Data),
    .io_Cache_out_0_State(rules_11_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_11_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_11_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_11_io_Cache_out_1_Data),
    .io_Cache_out_2_State(rules_11_io_Cache_out_2_State),
    .io_Cache_out_2_Data(rules_11_io_Cache_out_2_Data),
    .io_Chan1_in_0_Cmd(rules_11_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_11_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_11_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_11_io_Chan1_in_1_Data),
    .io_Chan1_in_2_Cmd(rules_11_io_Chan1_in_2_Cmd),
    .io_Chan1_in_2_Data(rules_11_io_Chan1_in_2_Data),
    .io_Chan1_out_0_Cmd(rules_11_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_11_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_11_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_11_io_Chan1_out_1_Data),
    .io_Chan1_out_2_Cmd(rules_11_io_Chan1_out_2_Cmd),
    .io_Chan1_out_2_Data(rules_11_io_Chan1_out_2_Data),
    .io_Chan2_in_0_Cmd(rules_11_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_11_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_11_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_11_io_Chan2_in_1_Data),
    .io_Chan2_in_2_Cmd(rules_11_io_Chan2_in_2_Cmd),
    .io_Chan2_in_2_Data(rules_11_io_Chan2_in_2_Data),
    .io_Chan2_out_0_Cmd(rules_11_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_11_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_11_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_11_io_Chan2_out_1_Data),
    .io_Chan2_out_2_Cmd(rules_11_io_Chan2_out_2_Cmd),
    .io_Chan2_out_2_Data(rules_11_io_Chan2_out_2_Data),
    .io_Chan3_in_0_Cmd(rules_11_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_11_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_11_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_11_io_Chan3_in_1_Data),
    .io_Chan3_in_2_Cmd(rules_11_io_Chan3_in_2_Cmd),
    .io_Chan3_in_2_Data(rules_11_io_Chan3_in_2_Data),
    .io_Chan3_out_0_Cmd(rules_11_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_11_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_11_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_11_io_Chan3_out_1_Data),
    .io_Chan3_out_2_Cmd(rules_11_io_Chan3_out_2_Cmd),
    .io_Chan3_out_2_Data(rules_11_io_Chan3_out_2_Data),
    .io_InvSet_in_0(rules_11_io_InvSet_in_0),
    .io_InvSet_in_1(rules_11_io_InvSet_in_1),
    .io_InvSet_in_2(rules_11_io_InvSet_in_2),
    .io_InvSet_out_0(rules_11_io_InvSet_out_0),
    .io_InvSet_out_1(rules_11_io_InvSet_out_1),
    .io_InvSet_out_2(rules_11_io_InvSet_out_2),
    .io_ShrSet_in_0(rules_11_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_11_io_ShrSet_in_1),
    .io_ShrSet_in_2(rules_11_io_ShrSet_in_2),
    .io_ShrSet_out_0(rules_11_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_11_io_ShrSet_out_1),
    .io_ShrSet_out_2(rules_11_io_ShrSet_out_2),
    .io_ExGntd_in(rules_11_io_ExGntd_in),
    .io_ExGntd_out(rules_11_io_ExGntd_out),
    .io_CurCmd_in(rules_11_io_CurCmd_in),
    .io_CurCmd_out(rules_11_io_CurCmd_out),
    .io_CurPtr_in(rules_11_io_CurPtr_in),
    .io_CurPtr_out(rules_11_io_CurPtr_out),
    .io_MemData_in(rules_11_io_MemData_in),
    .io_MemData_out(rules_11_io_MemData_out),
    .io_AuxData_in(rules_11_io_AuxData_in),
    .io_AuxData_out(rules_11_io_AuxData_out)
  );
  SendInv rules_12 ( // @[system.scala 92:16]
    .io_en_r(rules_12_io_en_r),
    .io_Cache_in_0_State(rules_12_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_12_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_12_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_12_io_Cache_in_1_Data),
    .io_Cache_in_2_State(rules_12_io_Cache_in_2_State),
    .io_Cache_in_2_Data(rules_12_io_Cache_in_2_Data),
    .io_Cache_out_0_State(rules_12_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_12_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_12_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_12_io_Cache_out_1_Data),
    .io_Cache_out_2_State(rules_12_io_Cache_out_2_State),
    .io_Cache_out_2_Data(rules_12_io_Cache_out_2_Data),
    .io_Chan1_in_0_Cmd(rules_12_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_12_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_12_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_12_io_Chan1_in_1_Data),
    .io_Chan1_in_2_Cmd(rules_12_io_Chan1_in_2_Cmd),
    .io_Chan1_in_2_Data(rules_12_io_Chan1_in_2_Data),
    .io_Chan1_out_0_Cmd(rules_12_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_12_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_12_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_12_io_Chan1_out_1_Data),
    .io_Chan1_out_2_Cmd(rules_12_io_Chan1_out_2_Cmd),
    .io_Chan1_out_2_Data(rules_12_io_Chan1_out_2_Data),
    .io_Chan2_in_0_Cmd(rules_12_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_12_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_12_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_12_io_Chan2_in_1_Data),
    .io_Chan2_in_2_Cmd(rules_12_io_Chan2_in_2_Cmd),
    .io_Chan2_in_2_Data(rules_12_io_Chan2_in_2_Data),
    .io_Chan2_out_0_Cmd(rules_12_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_12_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_12_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_12_io_Chan2_out_1_Data),
    .io_Chan2_out_2_Cmd(rules_12_io_Chan2_out_2_Cmd),
    .io_Chan2_out_2_Data(rules_12_io_Chan2_out_2_Data),
    .io_Chan3_in_0_Cmd(rules_12_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_12_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_12_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_12_io_Chan3_in_1_Data),
    .io_Chan3_in_2_Cmd(rules_12_io_Chan3_in_2_Cmd),
    .io_Chan3_in_2_Data(rules_12_io_Chan3_in_2_Data),
    .io_Chan3_out_0_Cmd(rules_12_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_12_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_12_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_12_io_Chan3_out_1_Data),
    .io_Chan3_out_2_Cmd(rules_12_io_Chan3_out_2_Cmd),
    .io_Chan3_out_2_Data(rules_12_io_Chan3_out_2_Data),
    .io_InvSet_in_0(rules_12_io_InvSet_in_0),
    .io_InvSet_in_1(rules_12_io_InvSet_in_1),
    .io_InvSet_in_2(rules_12_io_InvSet_in_2),
    .io_InvSet_out_0(rules_12_io_InvSet_out_0),
    .io_InvSet_out_1(rules_12_io_InvSet_out_1),
    .io_InvSet_out_2(rules_12_io_InvSet_out_2),
    .io_ShrSet_in_0(rules_12_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_12_io_ShrSet_in_1),
    .io_ShrSet_in_2(rules_12_io_ShrSet_in_2),
    .io_ShrSet_out_0(rules_12_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_12_io_ShrSet_out_1),
    .io_ShrSet_out_2(rules_12_io_ShrSet_out_2),
    .io_ExGntd_in(rules_12_io_ExGntd_in),
    .io_ExGntd_out(rules_12_io_ExGntd_out),
    .io_CurCmd_in(rules_12_io_CurCmd_in),
    .io_CurCmd_out(rules_12_io_CurCmd_out),
    .io_CurPtr_in(rules_12_io_CurPtr_in),
    .io_CurPtr_out(rules_12_io_CurPtr_out),
    .io_MemData_in(rules_12_io_MemData_in),
    .io_MemData_out(rules_12_io_MemData_out),
    .io_AuxData_in(rules_12_io_AuxData_in),
    .io_AuxData_out(rules_12_io_AuxData_out)
  );
  SendInv_1 rules_13 ( // @[system.scala 92:16]
    .io_en_r(rules_13_io_en_r),
    .io_Cache_in_0_State(rules_13_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_13_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_13_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_13_io_Cache_in_1_Data),
    .io_Cache_in_2_State(rules_13_io_Cache_in_2_State),
    .io_Cache_in_2_Data(rules_13_io_Cache_in_2_Data),
    .io_Cache_out_0_State(rules_13_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_13_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_13_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_13_io_Cache_out_1_Data),
    .io_Cache_out_2_State(rules_13_io_Cache_out_2_State),
    .io_Cache_out_2_Data(rules_13_io_Cache_out_2_Data),
    .io_Chan1_in_0_Cmd(rules_13_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_13_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_13_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_13_io_Chan1_in_1_Data),
    .io_Chan1_in_2_Cmd(rules_13_io_Chan1_in_2_Cmd),
    .io_Chan1_in_2_Data(rules_13_io_Chan1_in_2_Data),
    .io_Chan1_out_0_Cmd(rules_13_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_13_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_13_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_13_io_Chan1_out_1_Data),
    .io_Chan1_out_2_Cmd(rules_13_io_Chan1_out_2_Cmd),
    .io_Chan1_out_2_Data(rules_13_io_Chan1_out_2_Data),
    .io_Chan2_in_0_Cmd(rules_13_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_13_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_13_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_13_io_Chan2_in_1_Data),
    .io_Chan2_in_2_Cmd(rules_13_io_Chan2_in_2_Cmd),
    .io_Chan2_in_2_Data(rules_13_io_Chan2_in_2_Data),
    .io_Chan2_out_0_Cmd(rules_13_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_13_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_13_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_13_io_Chan2_out_1_Data),
    .io_Chan2_out_2_Cmd(rules_13_io_Chan2_out_2_Cmd),
    .io_Chan2_out_2_Data(rules_13_io_Chan2_out_2_Data),
    .io_Chan3_in_0_Cmd(rules_13_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_13_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_13_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_13_io_Chan3_in_1_Data),
    .io_Chan3_in_2_Cmd(rules_13_io_Chan3_in_2_Cmd),
    .io_Chan3_in_2_Data(rules_13_io_Chan3_in_2_Data),
    .io_Chan3_out_0_Cmd(rules_13_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_13_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_13_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_13_io_Chan3_out_1_Data),
    .io_Chan3_out_2_Cmd(rules_13_io_Chan3_out_2_Cmd),
    .io_Chan3_out_2_Data(rules_13_io_Chan3_out_2_Data),
    .io_InvSet_in_0(rules_13_io_InvSet_in_0),
    .io_InvSet_in_1(rules_13_io_InvSet_in_1),
    .io_InvSet_in_2(rules_13_io_InvSet_in_2),
    .io_InvSet_out_0(rules_13_io_InvSet_out_0),
    .io_InvSet_out_1(rules_13_io_InvSet_out_1),
    .io_InvSet_out_2(rules_13_io_InvSet_out_2),
    .io_ShrSet_in_0(rules_13_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_13_io_ShrSet_in_1),
    .io_ShrSet_in_2(rules_13_io_ShrSet_in_2),
    .io_ShrSet_out_0(rules_13_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_13_io_ShrSet_out_1),
    .io_ShrSet_out_2(rules_13_io_ShrSet_out_2),
    .io_ExGntd_in(rules_13_io_ExGntd_in),
    .io_ExGntd_out(rules_13_io_ExGntd_out),
    .io_CurCmd_in(rules_13_io_CurCmd_in),
    .io_CurCmd_out(rules_13_io_CurCmd_out),
    .io_CurPtr_in(rules_13_io_CurPtr_in),
    .io_CurPtr_out(rules_13_io_CurPtr_out),
    .io_MemData_in(rules_13_io_MemData_in),
    .io_MemData_out(rules_13_io_MemData_out),
    .io_AuxData_in(rules_13_io_AuxData_in),
    .io_AuxData_out(rules_13_io_AuxData_out)
  );
  SendGntS rules_14 ( // @[system.scala 95:16]
    .io_en_r(rules_14_io_en_r),
    .io_Cache_in_0_State(rules_14_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_14_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_14_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_14_io_Cache_in_1_Data),
    .io_Cache_in_2_State(rules_14_io_Cache_in_2_State),
    .io_Cache_in_2_Data(rules_14_io_Cache_in_2_Data),
    .io_Cache_out_0_State(rules_14_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_14_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_14_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_14_io_Cache_out_1_Data),
    .io_Cache_out_2_State(rules_14_io_Cache_out_2_State),
    .io_Cache_out_2_Data(rules_14_io_Cache_out_2_Data),
    .io_Chan1_in_0_Cmd(rules_14_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_14_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_14_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_14_io_Chan1_in_1_Data),
    .io_Chan1_in_2_Cmd(rules_14_io_Chan1_in_2_Cmd),
    .io_Chan1_in_2_Data(rules_14_io_Chan1_in_2_Data),
    .io_Chan1_out_0_Cmd(rules_14_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_14_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_14_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_14_io_Chan1_out_1_Data),
    .io_Chan1_out_2_Cmd(rules_14_io_Chan1_out_2_Cmd),
    .io_Chan1_out_2_Data(rules_14_io_Chan1_out_2_Data),
    .io_Chan2_in_0_Cmd(rules_14_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_14_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_14_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_14_io_Chan2_in_1_Data),
    .io_Chan2_in_2_Cmd(rules_14_io_Chan2_in_2_Cmd),
    .io_Chan2_in_2_Data(rules_14_io_Chan2_in_2_Data),
    .io_Chan2_out_0_Cmd(rules_14_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_14_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_14_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_14_io_Chan2_out_1_Data),
    .io_Chan2_out_2_Cmd(rules_14_io_Chan2_out_2_Cmd),
    .io_Chan2_out_2_Data(rules_14_io_Chan2_out_2_Data),
    .io_Chan3_in_0_Cmd(rules_14_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_14_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_14_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_14_io_Chan3_in_1_Data),
    .io_Chan3_in_2_Cmd(rules_14_io_Chan3_in_2_Cmd),
    .io_Chan3_in_2_Data(rules_14_io_Chan3_in_2_Data),
    .io_Chan3_out_0_Cmd(rules_14_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_14_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_14_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_14_io_Chan3_out_1_Data),
    .io_Chan3_out_2_Cmd(rules_14_io_Chan3_out_2_Cmd),
    .io_Chan3_out_2_Data(rules_14_io_Chan3_out_2_Data),
    .io_InvSet_in_0(rules_14_io_InvSet_in_0),
    .io_InvSet_in_1(rules_14_io_InvSet_in_1),
    .io_InvSet_in_2(rules_14_io_InvSet_in_2),
    .io_InvSet_out_0(rules_14_io_InvSet_out_0),
    .io_InvSet_out_1(rules_14_io_InvSet_out_1),
    .io_InvSet_out_2(rules_14_io_InvSet_out_2),
    .io_ShrSet_in_0(rules_14_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_14_io_ShrSet_in_1),
    .io_ShrSet_in_2(rules_14_io_ShrSet_in_2),
    .io_ShrSet_out_0(rules_14_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_14_io_ShrSet_out_1),
    .io_ShrSet_out_2(rules_14_io_ShrSet_out_2),
    .io_ExGntd_in(rules_14_io_ExGntd_in),
    .io_ExGntd_out(rules_14_io_ExGntd_out),
    .io_CurCmd_in(rules_14_io_CurCmd_in),
    .io_CurCmd_out(rules_14_io_CurCmd_out),
    .io_CurPtr_in(rules_14_io_CurPtr_in),
    .io_CurPtr_out(rules_14_io_CurPtr_out),
    .io_MemData_in(rules_14_io_MemData_in),
    .io_MemData_out(rules_14_io_MemData_out),
    .io_AuxData_in(rules_14_io_AuxData_in),
    .io_AuxData_out(rules_14_io_AuxData_out)
  );
  SendGntS_1 rules_15 ( // @[system.scala 95:16]
    .io_en_r(rules_15_io_en_r),
    .io_Cache_in_0_State(rules_15_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_15_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_15_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_15_io_Cache_in_1_Data),
    .io_Cache_in_2_State(rules_15_io_Cache_in_2_State),
    .io_Cache_in_2_Data(rules_15_io_Cache_in_2_Data),
    .io_Cache_out_0_State(rules_15_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_15_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_15_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_15_io_Cache_out_1_Data),
    .io_Cache_out_2_State(rules_15_io_Cache_out_2_State),
    .io_Cache_out_2_Data(rules_15_io_Cache_out_2_Data),
    .io_Chan1_in_0_Cmd(rules_15_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_15_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_15_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_15_io_Chan1_in_1_Data),
    .io_Chan1_in_2_Cmd(rules_15_io_Chan1_in_2_Cmd),
    .io_Chan1_in_2_Data(rules_15_io_Chan1_in_2_Data),
    .io_Chan1_out_0_Cmd(rules_15_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_15_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_15_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_15_io_Chan1_out_1_Data),
    .io_Chan1_out_2_Cmd(rules_15_io_Chan1_out_2_Cmd),
    .io_Chan1_out_2_Data(rules_15_io_Chan1_out_2_Data),
    .io_Chan2_in_0_Cmd(rules_15_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_15_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_15_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_15_io_Chan2_in_1_Data),
    .io_Chan2_in_2_Cmd(rules_15_io_Chan2_in_2_Cmd),
    .io_Chan2_in_2_Data(rules_15_io_Chan2_in_2_Data),
    .io_Chan2_out_0_Cmd(rules_15_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_15_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_15_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_15_io_Chan2_out_1_Data),
    .io_Chan2_out_2_Cmd(rules_15_io_Chan2_out_2_Cmd),
    .io_Chan2_out_2_Data(rules_15_io_Chan2_out_2_Data),
    .io_Chan3_in_0_Cmd(rules_15_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_15_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_15_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_15_io_Chan3_in_1_Data),
    .io_Chan3_in_2_Cmd(rules_15_io_Chan3_in_2_Cmd),
    .io_Chan3_in_2_Data(rules_15_io_Chan3_in_2_Data),
    .io_Chan3_out_0_Cmd(rules_15_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_15_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_15_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_15_io_Chan3_out_1_Data),
    .io_Chan3_out_2_Cmd(rules_15_io_Chan3_out_2_Cmd),
    .io_Chan3_out_2_Data(rules_15_io_Chan3_out_2_Data),
    .io_InvSet_in_0(rules_15_io_InvSet_in_0),
    .io_InvSet_in_1(rules_15_io_InvSet_in_1),
    .io_InvSet_in_2(rules_15_io_InvSet_in_2),
    .io_InvSet_out_0(rules_15_io_InvSet_out_0),
    .io_InvSet_out_1(rules_15_io_InvSet_out_1),
    .io_InvSet_out_2(rules_15_io_InvSet_out_2),
    .io_ShrSet_in_0(rules_15_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_15_io_ShrSet_in_1),
    .io_ShrSet_in_2(rules_15_io_ShrSet_in_2),
    .io_ShrSet_out_0(rules_15_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_15_io_ShrSet_out_1),
    .io_ShrSet_out_2(rules_15_io_ShrSet_out_2),
    .io_ExGntd_in(rules_15_io_ExGntd_in),
    .io_ExGntd_out(rules_15_io_ExGntd_out),
    .io_CurCmd_in(rules_15_io_CurCmd_in),
    .io_CurCmd_out(rules_15_io_CurCmd_out),
    .io_CurPtr_in(rules_15_io_CurPtr_in),
    .io_CurPtr_out(rules_15_io_CurPtr_out),
    .io_MemData_in(rules_15_io_MemData_in),
    .io_MemData_out(rules_15_io_MemData_out),
    .io_AuxData_in(rules_15_io_AuxData_in),
    .io_AuxData_out(rules_15_io_AuxData_out)
  );
  SendGntE rules_16 ( // @[system.scala 98:16]
    .io_Cache_in_0_State(rules_16_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_16_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_16_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_16_io_Cache_in_1_Data),
    .io_Cache_in_2_State(rules_16_io_Cache_in_2_State),
    .io_Cache_in_2_Data(rules_16_io_Cache_in_2_Data),
    .io_Cache_out_0_State(rules_16_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_16_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_16_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_16_io_Cache_out_1_Data),
    .io_Cache_out_2_State(rules_16_io_Cache_out_2_State),
    .io_Cache_out_2_Data(rules_16_io_Cache_out_2_Data),
    .io_Chan1_in_0_Cmd(rules_16_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_16_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_16_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_16_io_Chan1_in_1_Data),
    .io_Chan1_in_2_Cmd(rules_16_io_Chan1_in_2_Cmd),
    .io_Chan1_in_2_Data(rules_16_io_Chan1_in_2_Data),
    .io_Chan1_out_0_Cmd(rules_16_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_16_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_16_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_16_io_Chan1_out_1_Data),
    .io_Chan1_out_2_Cmd(rules_16_io_Chan1_out_2_Cmd),
    .io_Chan1_out_2_Data(rules_16_io_Chan1_out_2_Data),
    .io_Chan2_in_0_Cmd(rules_16_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_16_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_16_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_16_io_Chan2_in_1_Data),
    .io_Chan2_in_2_Cmd(rules_16_io_Chan2_in_2_Cmd),
    .io_Chan2_in_2_Data(rules_16_io_Chan2_in_2_Data),
    .io_Chan2_out_0_Cmd(rules_16_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_16_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_16_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_16_io_Chan2_out_1_Data),
    .io_Chan2_out_2_Cmd(rules_16_io_Chan2_out_2_Cmd),
    .io_Chan2_out_2_Data(rules_16_io_Chan2_out_2_Data),
    .io_Chan3_in_0_Cmd(rules_16_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_16_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_16_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_16_io_Chan3_in_1_Data),
    .io_Chan3_in_2_Cmd(rules_16_io_Chan3_in_2_Cmd),
    .io_Chan3_in_2_Data(rules_16_io_Chan3_in_2_Data),
    .io_Chan3_out_0_Cmd(rules_16_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_16_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_16_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_16_io_Chan3_out_1_Data),
    .io_Chan3_out_2_Cmd(rules_16_io_Chan3_out_2_Cmd),
    .io_Chan3_out_2_Data(rules_16_io_Chan3_out_2_Data),
    .io_InvSet_in_0(rules_16_io_InvSet_in_0),
    .io_InvSet_in_1(rules_16_io_InvSet_in_1),
    .io_InvSet_in_2(rules_16_io_InvSet_in_2),
    .io_InvSet_out_0(rules_16_io_InvSet_out_0),
    .io_InvSet_out_1(rules_16_io_InvSet_out_1),
    .io_InvSet_out_2(rules_16_io_InvSet_out_2),
    .io_ShrSet_in_0(rules_16_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_16_io_ShrSet_in_1),
    .io_ShrSet_in_2(rules_16_io_ShrSet_in_2),
    .io_ShrSet_out_0(rules_16_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_16_io_ShrSet_out_1),
    .io_ShrSet_out_2(rules_16_io_ShrSet_out_2),
    .io_ExGntd_in(rules_16_io_ExGntd_in),
    .io_ExGntd_out(rules_16_io_ExGntd_out),
    .io_CurCmd_in(rules_16_io_CurCmd_in),
    .io_CurCmd_out(rules_16_io_CurCmd_out),
    .io_CurPtr_in(rules_16_io_CurPtr_in),
    .io_CurPtr_out(rules_16_io_CurPtr_out),
    .io_MemData_in(rules_16_io_MemData_in),
    .io_MemData_out(rules_16_io_MemData_out),
    .io_AuxData_in(rules_16_io_AuxData_in),
    .io_AuxData_out(rules_16_io_AuxData_out)
  );
  SendGntE_1 rules_17 ( // @[system.scala 98:16]
    .io_Cache_in_0_State(rules_17_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_17_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_17_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_17_io_Cache_in_1_Data),
    .io_Cache_in_2_State(rules_17_io_Cache_in_2_State),
    .io_Cache_in_2_Data(rules_17_io_Cache_in_2_Data),
    .io_Cache_out_0_State(rules_17_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_17_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_17_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_17_io_Cache_out_1_Data),
    .io_Cache_out_2_State(rules_17_io_Cache_out_2_State),
    .io_Cache_out_2_Data(rules_17_io_Cache_out_2_Data),
    .io_Chan1_in_0_Cmd(rules_17_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_17_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_17_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_17_io_Chan1_in_1_Data),
    .io_Chan1_in_2_Cmd(rules_17_io_Chan1_in_2_Cmd),
    .io_Chan1_in_2_Data(rules_17_io_Chan1_in_2_Data),
    .io_Chan1_out_0_Cmd(rules_17_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_17_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_17_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_17_io_Chan1_out_1_Data),
    .io_Chan1_out_2_Cmd(rules_17_io_Chan1_out_2_Cmd),
    .io_Chan1_out_2_Data(rules_17_io_Chan1_out_2_Data),
    .io_Chan2_in_0_Cmd(rules_17_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_17_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_17_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_17_io_Chan2_in_1_Data),
    .io_Chan2_in_2_Cmd(rules_17_io_Chan2_in_2_Cmd),
    .io_Chan2_in_2_Data(rules_17_io_Chan2_in_2_Data),
    .io_Chan2_out_0_Cmd(rules_17_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_17_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_17_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_17_io_Chan2_out_1_Data),
    .io_Chan2_out_2_Cmd(rules_17_io_Chan2_out_2_Cmd),
    .io_Chan2_out_2_Data(rules_17_io_Chan2_out_2_Data),
    .io_Chan3_in_0_Cmd(rules_17_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_17_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_17_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_17_io_Chan3_in_1_Data),
    .io_Chan3_in_2_Cmd(rules_17_io_Chan3_in_2_Cmd),
    .io_Chan3_in_2_Data(rules_17_io_Chan3_in_2_Data),
    .io_Chan3_out_0_Cmd(rules_17_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_17_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_17_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_17_io_Chan3_out_1_Data),
    .io_Chan3_out_2_Cmd(rules_17_io_Chan3_out_2_Cmd),
    .io_Chan3_out_2_Data(rules_17_io_Chan3_out_2_Data),
    .io_InvSet_in_0(rules_17_io_InvSet_in_0),
    .io_InvSet_in_1(rules_17_io_InvSet_in_1),
    .io_InvSet_in_2(rules_17_io_InvSet_in_2),
    .io_InvSet_out_0(rules_17_io_InvSet_out_0),
    .io_InvSet_out_1(rules_17_io_InvSet_out_1),
    .io_InvSet_out_2(rules_17_io_InvSet_out_2),
    .io_ShrSet_in_0(rules_17_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_17_io_ShrSet_in_1),
    .io_ShrSet_in_2(rules_17_io_ShrSet_in_2),
    .io_ShrSet_out_0(rules_17_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_17_io_ShrSet_out_1),
    .io_ShrSet_out_2(rules_17_io_ShrSet_out_2),
    .io_ExGntd_in(rules_17_io_ExGntd_in),
    .io_ExGntd_out(rules_17_io_ExGntd_out),
    .io_CurCmd_in(rules_17_io_CurCmd_in),
    .io_CurCmd_out(rules_17_io_CurCmd_out),
    .io_CurPtr_in(rules_17_io_CurPtr_in),
    .io_CurPtr_out(rules_17_io_CurPtr_out),
    .io_MemData_in(rules_17_io_MemData_in),
    .io_MemData_out(rules_17_io_MemData_out),
    .io_AuxData_in(rules_17_io_AuxData_in),
    .io_AuxData_out(rules_17_io_AuxData_out)
  );
  RecvGntS rules_18 ( // @[system.scala 101:16]
    .io_en_r(rules_18_io_en_r),
    .io_Cache_in_0_State(rules_18_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_18_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_18_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_18_io_Cache_in_1_Data),
    .io_Cache_in_2_State(rules_18_io_Cache_in_2_State),
    .io_Cache_in_2_Data(rules_18_io_Cache_in_2_Data),
    .io_Cache_out_0_State(rules_18_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_18_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_18_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_18_io_Cache_out_1_Data),
    .io_Cache_out_2_State(rules_18_io_Cache_out_2_State),
    .io_Cache_out_2_Data(rules_18_io_Cache_out_2_Data),
    .io_Chan1_in_0_Cmd(rules_18_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_18_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_18_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_18_io_Chan1_in_1_Data),
    .io_Chan1_in_2_Cmd(rules_18_io_Chan1_in_2_Cmd),
    .io_Chan1_in_2_Data(rules_18_io_Chan1_in_2_Data),
    .io_Chan1_out_0_Cmd(rules_18_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_18_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_18_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_18_io_Chan1_out_1_Data),
    .io_Chan1_out_2_Cmd(rules_18_io_Chan1_out_2_Cmd),
    .io_Chan1_out_2_Data(rules_18_io_Chan1_out_2_Data),
    .io_Chan2_in_0_Cmd(rules_18_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_18_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_18_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_18_io_Chan2_in_1_Data),
    .io_Chan2_in_2_Cmd(rules_18_io_Chan2_in_2_Cmd),
    .io_Chan2_in_2_Data(rules_18_io_Chan2_in_2_Data),
    .io_Chan2_out_0_Cmd(rules_18_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_18_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_18_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_18_io_Chan2_out_1_Data),
    .io_Chan2_out_2_Cmd(rules_18_io_Chan2_out_2_Cmd),
    .io_Chan2_out_2_Data(rules_18_io_Chan2_out_2_Data),
    .io_Chan3_in_0_Cmd(rules_18_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_18_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_18_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_18_io_Chan3_in_1_Data),
    .io_Chan3_in_2_Cmd(rules_18_io_Chan3_in_2_Cmd),
    .io_Chan3_in_2_Data(rules_18_io_Chan3_in_2_Data),
    .io_Chan3_out_0_Cmd(rules_18_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_18_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_18_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_18_io_Chan3_out_1_Data),
    .io_Chan3_out_2_Cmd(rules_18_io_Chan3_out_2_Cmd),
    .io_Chan3_out_2_Data(rules_18_io_Chan3_out_2_Data),
    .io_InvSet_in_0(rules_18_io_InvSet_in_0),
    .io_InvSet_in_1(rules_18_io_InvSet_in_1),
    .io_InvSet_in_2(rules_18_io_InvSet_in_2),
    .io_InvSet_out_0(rules_18_io_InvSet_out_0),
    .io_InvSet_out_1(rules_18_io_InvSet_out_1),
    .io_InvSet_out_2(rules_18_io_InvSet_out_2),
    .io_ShrSet_in_0(rules_18_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_18_io_ShrSet_in_1),
    .io_ShrSet_in_2(rules_18_io_ShrSet_in_2),
    .io_ShrSet_out_0(rules_18_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_18_io_ShrSet_out_1),
    .io_ShrSet_out_2(rules_18_io_ShrSet_out_2),
    .io_ExGntd_in(rules_18_io_ExGntd_in),
    .io_ExGntd_out(rules_18_io_ExGntd_out),
    .io_CurCmd_in(rules_18_io_CurCmd_in),
    .io_CurCmd_out(rules_18_io_CurCmd_out),
    .io_CurPtr_in(rules_18_io_CurPtr_in),
    .io_CurPtr_out(rules_18_io_CurPtr_out),
    .io_MemData_in(rules_18_io_MemData_in),
    .io_MemData_out(rules_18_io_MemData_out),
    .io_AuxData_in(rules_18_io_AuxData_in),
    .io_AuxData_out(rules_18_io_AuxData_out)
  );
  RecvGntS_1 rules_19 ( // @[system.scala 101:16]
    .io_en_r(rules_19_io_en_r),
    .io_Cache_in_0_State(rules_19_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_19_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_19_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_19_io_Cache_in_1_Data),
    .io_Cache_in_2_State(rules_19_io_Cache_in_2_State),
    .io_Cache_in_2_Data(rules_19_io_Cache_in_2_Data),
    .io_Cache_out_0_State(rules_19_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_19_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_19_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_19_io_Cache_out_1_Data),
    .io_Cache_out_2_State(rules_19_io_Cache_out_2_State),
    .io_Cache_out_2_Data(rules_19_io_Cache_out_2_Data),
    .io_Chan1_in_0_Cmd(rules_19_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_19_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_19_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_19_io_Chan1_in_1_Data),
    .io_Chan1_in_2_Cmd(rules_19_io_Chan1_in_2_Cmd),
    .io_Chan1_in_2_Data(rules_19_io_Chan1_in_2_Data),
    .io_Chan1_out_0_Cmd(rules_19_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_19_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_19_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_19_io_Chan1_out_1_Data),
    .io_Chan1_out_2_Cmd(rules_19_io_Chan1_out_2_Cmd),
    .io_Chan1_out_2_Data(rules_19_io_Chan1_out_2_Data),
    .io_Chan2_in_0_Cmd(rules_19_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_19_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_19_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_19_io_Chan2_in_1_Data),
    .io_Chan2_in_2_Cmd(rules_19_io_Chan2_in_2_Cmd),
    .io_Chan2_in_2_Data(rules_19_io_Chan2_in_2_Data),
    .io_Chan2_out_0_Cmd(rules_19_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_19_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_19_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_19_io_Chan2_out_1_Data),
    .io_Chan2_out_2_Cmd(rules_19_io_Chan2_out_2_Cmd),
    .io_Chan2_out_2_Data(rules_19_io_Chan2_out_2_Data),
    .io_Chan3_in_0_Cmd(rules_19_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_19_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_19_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_19_io_Chan3_in_1_Data),
    .io_Chan3_in_2_Cmd(rules_19_io_Chan3_in_2_Cmd),
    .io_Chan3_in_2_Data(rules_19_io_Chan3_in_2_Data),
    .io_Chan3_out_0_Cmd(rules_19_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_19_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_19_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_19_io_Chan3_out_1_Data),
    .io_Chan3_out_2_Cmd(rules_19_io_Chan3_out_2_Cmd),
    .io_Chan3_out_2_Data(rules_19_io_Chan3_out_2_Data),
    .io_InvSet_in_0(rules_19_io_InvSet_in_0),
    .io_InvSet_in_1(rules_19_io_InvSet_in_1),
    .io_InvSet_in_2(rules_19_io_InvSet_in_2),
    .io_InvSet_out_0(rules_19_io_InvSet_out_0),
    .io_InvSet_out_1(rules_19_io_InvSet_out_1),
    .io_InvSet_out_2(rules_19_io_InvSet_out_2),
    .io_ShrSet_in_0(rules_19_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_19_io_ShrSet_in_1),
    .io_ShrSet_in_2(rules_19_io_ShrSet_in_2),
    .io_ShrSet_out_0(rules_19_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_19_io_ShrSet_out_1),
    .io_ShrSet_out_2(rules_19_io_ShrSet_out_2),
    .io_ExGntd_in(rules_19_io_ExGntd_in),
    .io_ExGntd_out(rules_19_io_ExGntd_out),
    .io_CurCmd_in(rules_19_io_CurCmd_in),
    .io_CurCmd_out(rules_19_io_CurCmd_out),
    .io_CurPtr_in(rules_19_io_CurPtr_in),
    .io_CurPtr_out(rules_19_io_CurPtr_out),
    .io_MemData_in(rules_19_io_MemData_in),
    .io_MemData_out(rules_19_io_MemData_out),
    .io_AuxData_in(rules_19_io_AuxData_in),
    .io_AuxData_out(rules_19_io_AuxData_out)
  );
  RecvGntE rules_20 ( // @[system.scala 104:16]
    .io_en_r(rules_20_io_en_r),
    .io_Cache_in_0_State(rules_20_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_20_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_20_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_20_io_Cache_in_1_Data),
    .io_Cache_in_2_State(rules_20_io_Cache_in_2_State),
    .io_Cache_in_2_Data(rules_20_io_Cache_in_2_Data),
    .io_Cache_out_0_State(rules_20_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_20_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_20_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_20_io_Cache_out_1_Data),
    .io_Cache_out_2_State(rules_20_io_Cache_out_2_State),
    .io_Cache_out_2_Data(rules_20_io_Cache_out_2_Data),
    .io_Chan1_in_0_Cmd(rules_20_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_20_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_20_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_20_io_Chan1_in_1_Data),
    .io_Chan1_in_2_Cmd(rules_20_io_Chan1_in_2_Cmd),
    .io_Chan1_in_2_Data(rules_20_io_Chan1_in_2_Data),
    .io_Chan1_out_0_Cmd(rules_20_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_20_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_20_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_20_io_Chan1_out_1_Data),
    .io_Chan1_out_2_Cmd(rules_20_io_Chan1_out_2_Cmd),
    .io_Chan1_out_2_Data(rules_20_io_Chan1_out_2_Data),
    .io_Chan2_in_0_Cmd(rules_20_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_20_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_20_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_20_io_Chan2_in_1_Data),
    .io_Chan2_in_2_Cmd(rules_20_io_Chan2_in_2_Cmd),
    .io_Chan2_in_2_Data(rules_20_io_Chan2_in_2_Data),
    .io_Chan2_out_0_Cmd(rules_20_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_20_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_20_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_20_io_Chan2_out_1_Data),
    .io_Chan2_out_2_Cmd(rules_20_io_Chan2_out_2_Cmd),
    .io_Chan2_out_2_Data(rules_20_io_Chan2_out_2_Data),
    .io_Chan3_in_0_Cmd(rules_20_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_20_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_20_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_20_io_Chan3_in_1_Data),
    .io_Chan3_in_2_Cmd(rules_20_io_Chan3_in_2_Cmd),
    .io_Chan3_in_2_Data(rules_20_io_Chan3_in_2_Data),
    .io_Chan3_out_0_Cmd(rules_20_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_20_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_20_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_20_io_Chan3_out_1_Data),
    .io_Chan3_out_2_Cmd(rules_20_io_Chan3_out_2_Cmd),
    .io_Chan3_out_2_Data(rules_20_io_Chan3_out_2_Data),
    .io_InvSet_in_0(rules_20_io_InvSet_in_0),
    .io_InvSet_in_1(rules_20_io_InvSet_in_1),
    .io_InvSet_in_2(rules_20_io_InvSet_in_2),
    .io_InvSet_out_0(rules_20_io_InvSet_out_0),
    .io_InvSet_out_1(rules_20_io_InvSet_out_1),
    .io_InvSet_out_2(rules_20_io_InvSet_out_2),
    .io_ShrSet_in_0(rules_20_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_20_io_ShrSet_in_1),
    .io_ShrSet_in_2(rules_20_io_ShrSet_in_2),
    .io_ShrSet_out_0(rules_20_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_20_io_ShrSet_out_1),
    .io_ShrSet_out_2(rules_20_io_ShrSet_out_2),
    .io_ExGntd_in(rules_20_io_ExGntd_in),
    .io_ExGntd_out(rules_20_io_ExGntd_out),
    .io_CurCmd_in(rules_20_io_CurCmd_in),
    .io_CurCmd_out(rules_20_io_CurCmd_out),
    .io_CurPtr_in(rules_20_io_CurPtr_in),
    .io_CurPtr_out(rules_20_io_CurPtr_out),
    .io_MemData_in(rules_20_io_MemData_in),
    .io_MemData_out(rules_20_io_MemData_out),
    .io_AuxData_in(rules_20_io_AuxData_in),
    .io_AuxData_out(rules_20_io_AuxData_out)
  );
  RecvGntE_1 rules_21 ( // @[system.scala 104:16]
    .io_en_r(rules_21_io_en_r),
    .io_Cache_in_0_State(rules_21_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_21_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_21_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_21_io_Cache_in_1_Data),
    .io_Cache_in_2_State(rules_21_io_Cache_in_2_State),
    .io_Cache_in_2_Data(rules_21_io_Cache_in_2_Data),
    .io_Cache_out_0_State(rules_21_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_21_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_21_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_21_io_Cache_out_1_Data),
    .io_Cache_out_2_State(rules_21_io_Cache_out_2_State),
    .io_Cache_out_2_Data(rules_21_io_Cache_out_2_Data),
    .io_Chan1_in_0_Cmd(rules_21_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_21_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_21_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_21_io_Chan1_in_1_Data),
    .io_Chan1_in_2_Cmd(rules_21_io_Chan1_in_2_Cmd),
    .io_Chan1_in_2_Data(rules_21_io_Chan1_in_2_Data),
    .io_Chan1_out_0_Cmd(rules_21_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_21_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_21_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_21_io_Chan1_out_1_Data),
    .io_Chan1_out_2_Cmd(rules_21_io_Chan1_out_2_Cmd),
    .io_Chan1_out_2_Data(rules_21_io_Chan1_out_2_Data),
    .io_Chan2_in_0_Cmd(rules_21_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_21_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_21_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_21_io_Chan2_in_1_Data),
    .io_Chan2_in_2_Cmd(rules_21_io_Chan2_in_2_Cmd),
    .io_Chan2_in_2_Data(rules_21_io_Chan2_in_2_Data),
    .io_Chan2_out_0_Cmd(rules_21_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_21_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_21_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_21_io_Chan2_out_1_Data),
    .io_Chan2_out_2_Cmd(rules_21_io_Chan2_out_2_Cmd),
    .io_Chan2_out_2_Data(rules_21_io_Chan2_out_2_Data),
    .io_Chan3_in_0_Cmd(rules_21_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_21_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_21_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_21_io_Chan3_in_1_Data),
    .io_Chan3_in_2_Cmd(rules_21_io_Chan3_in_2_Cmd),
    .io_Chan3_in_2_Data(rules_21_io_Chan3_in_2_Data),
    .io_Chan3_out_0_Cmd(rules_21_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_21_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_21_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_21_io_Chan3_out_1_Data),
    .io_Chan3_out_2_Cmd(rules_21_io_Chan3_out_2_Cmd),
    .io_Chan3_out_2_Data(rules_21_io_Chan3_out_2_Data),
    .io_InvSet_in_0(rules_21_io_InvSet_in_0),
    .io_InvSet_in_1(rules_21_io_InvSet_in_1),
    .io_InvSet_in_2(rules_21_io_InvSet_in_2),
    .io_InvSet_out_0(rules_21_io_InvSet_out_0),
    .io_InvSet_out_1(rules_21_io_InvSet_out_1),
    .io_InvSet_out_2(rules_21_io_InvSet_out_2),
    .io_ShrSet_in_0(rules_21_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_21_io_ShrSet_in_1),
    .io_ShrSet_in_2(rules_21_io_ShrSet_in_2),
    .io_ShrSet_out_0(rules_21_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_21_io_ShrSet_out_1),
    .io_ShrSet_out_2(rules_21_io_ShrSet_out_2),
    .io_ExGntd_in(rules_21_io_ExGntd_in),
    .io_ExGntd_out(rules_21_io_ExGntd_out),
    .io_CurCmd_in(rules_21_io_CurCmd_in),
    .io_CurCmd_out(rules_21_io_CurCmd_out),
    .io_CurPtr_in(rules_21_io_CurPtr_in),
    .io_CurPtr_out(rules_21_io_CurPtr_out),
    .io_MemData_in(rules_21_io_MemData_in),
    .io_MemData_out(rules_21_io_MemData_out),
    .io_AuxData_in(rules_21_io_AuxData_in),
    .io_AuxData_out(rules_21_io_AuxData_out)
  );
  SendInvAck rules_22 ( // @[system.scala 107:16]
    .io_en_r(rules_22_io_en_r),
    .io_Cache_in_0_State(rules_22_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_22_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_22_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_22_io_Cache_in_1_Data),
    .io_Cache_in_2_State(rules_22_io_Cache_in_2_State),
    .io_Cache_in_2_Data(rules_22_io_Cache_in_2_Data),
    .io_Cache_out_0_State(rules_22_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_22_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_22_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_22_io_Cache_out_1_Data),
    .io_Cache_out_2_State(rules_22_io_Cache_out_2_State),
    .io_Cache_out_2_Data(rules_22_io_Cache_out_2_Data),
    .io_Chan1_in_0_Cmd(rules_22_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_22_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_22_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_22_io_Chan1_in_1_Data),
    .io_Chan1_in_2_Cmd(rules_22_io_Chan1_in_2_Cmd),
    .io_Chan1_in_2_Data(rules_22_io_Chan1_in_2_Data),
    .io_Chan1_out_0_Cmd(rules_22_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_22_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_22_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_22_io_Chan1_out_1_Data),
    .io_Chan1_out_2_Cmd(rules_22_io_Chan1_out_2_Cmd),
    .io_Chan1_out_2_Data(rules_22_io_Chan1_out_2_Data),
    .io_Chan2_in_0_Cmd(rules_22_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_22_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_22_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_22_io_Chan2_in_1_Data),
    .io_Chan2_in_2_Cmd(rules_22_io_Chan2_in_2_Cmd),
    .io_Chan2_in_2_Data(rules_22_io_Chan2_in_2_Data),
    .io_Chan2_out_0_Cmd(rules_22_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_22_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_22_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_22_io_Chan2_out_1_Data),
    .io_Chan2_out_2_Cmd(rules_22_io_Chan2_out_2_Cmd),
    .io_Chan2_out_2_Data(rules_22_io_Chan2_out_2_Data),
    .io_Chan3_in_0_Cmd(rules_22_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_22_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_22_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_22_io_Chan3_in_1_Data),
    .io_Chan3_in_2_Cmd(rules_22_io_Chan3_in_2_Cmd),
    .io_Chan3_in_2_Data(rules_22_io_Chan3_in_2_Data),
    .io_Chan3_out_0_Cmd(rules_22_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_22_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_22_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_22_io_Chan3_out_1_Data),
    .io_Chan3_out_2_Cmd(rules_22_io_Chan3_out_2_Cmd),
    .io_Chan3_out_2_Data(rules_22_io_Chan3_out_2_Data),
    .io_InvSet_in_0(rules_22_io_InvSet_in_0),
    .io_InvSet_in_1(rules_22_io_InvSet_in_1),
    .io_InvSet_in_2(rules_22_io_InvSet_in_2),
    .io_InvSet_out_0(rules_22_io_InvSet_out_0),
    .io_InvSet_out_1(rules_22_io_InvSet_out_1),
    .io_InvSet_out_2(rules_22_io_InvSet_out_2),
    .io_ShrSet_in_0(rules_22_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_22_io_ShrSet_in_1),
    .io_ShrSet_in_2(rules_22_io_ShrSet_in_2),
    .io_ShrSet_out_0(rules_22_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_22_io_ShrSet_out_1),
    .io_ShrSet_out_2(rules_22_io_ShrSet_out_2),
    .io_ExGntd_in(rules_22_io_ExGntd_in),
    .io_ExGntd_out(rules_22_io_ExGntd_out),
    .io_CurCmd_in(rules_22_io_CurCmd_in),
    .io_CurCmd_out(rules_22_io_CurCmd_out),
    .io_CurPtr_in(rules_22_io_CurPtr_in),
    .io_CurPtr_out(rules_22_io_CurPtr_out),
    .io_MemData_in(rules_22_io_MemData_in),
    .io_MemData_out(rules_22_io_MemData_out),
    .io_AuxData_in(rules_22_io_AuxData_in),
    .io_AuxData_out(rules_22_io_AuxData_out)
  );
  SendInvAck_1 rules_23 ( // @[system.scala 107:16]
    .io_en_r(rules_23_io_en_r),
    .io_Cache_in_0_State(rules_23_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_23_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_23_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_23_io_Cache_in_1_Data),
    .io_Cache_in_2_State(rules_23_io_Cache_in_2_State),
    .io_Cache_in_2_Data(rules_23_io_Cache_in_2_Data),
    .io_Cache_out_0_State(rules_23_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_23_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_23_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_23_io_Cache_out_1_Data),
    .io_Cache_out_2_State(rules_23_io_Cache_out_2_State),
    .io_Cache_out_2_Data(rules_23_io_Cache_out_2_Data),
    .io_Chan1_in_0_Cmd(rules_23_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_23_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_23_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_23_io_Chan1_in_1_Data),
    .io_Chan1_in_2_Cmd(rules_23_io_Chan1_in_2_Cmd),
    .io_Chan1_in_2_Data(rules_23_io_Chan1_in_2_Data),
    .io_Chan1_out_0_Cmd(rules_23_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_23_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_23_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_23_io_Chan1_out_1_Data),
    .io_Chan1_out_2_Cmd(rules_23_io_Chan1_out_2_Cmd),
    .io_Chan1_out_2_Data(rules_23_io_Chan1_out_2_Data),
    .io_Chan2_in_0_Cmd(rules_23_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_23_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_23_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_23_io_Chan2_in_1_Data),
    .io_Chan2_in_2_Cmd(rules_23_io_Chan2_in_2_Cmd),
    .io_Chan2_in_2_Data(rules_23_io_Chan2_in_2_Data),
    .io_Chan2_out_0_Cmd(rules_23_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_23_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_23_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_23_io_Chan2_out_1_Data),
    .io_Chan2_out_2_Cmd(rules_23_io_Chan2_out_2_Cmd),
    .io_Chan2_out_2_Data(rules_23_io_Chan2_out_2_Data),
    .io_Chan3_in_0_Cmd(rules_23_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_23_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_23_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_23_io_Chan3_in_1_Data),
    .io_Chan3_in_2_Cmd(rules_23_io_Chan3_in_2_Cmd),
    .io_Chan3_in_2_Data(rules_23_io_Chan3_in_2_Data),
    .io_Chan3_out_0_Cmd(rules_23_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_23_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_23_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_23_io_Chan3_out_1_Data),
    .io_Chan3_out_2_Cmd(rules_23_io_Chan3_out_2_Cmd),
    .io_Chan3_out_2_Data(rules_23_io_Chan3_out_2_Data),
    .io_InvSet_in_0(rules_23_io_InvSet_in_0),
    .io_InvSet_in_1(rules_23_io_InvSet_in_1),
    .io_InvSet_in_2(rules_23_io_InvSet_in_2),
    .io_InvSet_out_0(rules_23_io_InvSet_out_0),
    .io_InvSet_out_1(rules_23_io_InvSet_out_1),
    .io_InvSet_out_2(rules_23_io_InvSet_out_2),
    .io_ShrSet_in_0(rules_23_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_23_io_ShrSet_in_1),
    .io_ShrSet_in_2(rules_23_io_ShrSet_in_2),
    .io_ShrSet_out_0(rules_23_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_23_io_ShrSet_out_1),
    .io_ShrSet_out_2(rules_23_io_ShrSet_out_2),
    .io_ExGntd_in(rules_23_io_ExGntd_in),
    .io_ExGntd_out(rules_23_io_ExGntd_out),
    .io_CurCmd_in(rules_23_io_CurCmd_in),
    .io_CurCmd_out(rules_23_io_CurCmd_out),
    .io_CurPtr_in(rules_23_io_CurPtr_in),
    .io_CurPtr_out(rules_23_io_CurPtr_out),
    .io_MemData_in(rules_23_io_MemData_in),
    .io_MemData_out(rules_23_io_MemData_out),
    .io_AuxData_in(rules_23_io_AuxData_in),
    .io_AuxData_out(rules_23_io_AuxData_out)
  );
  RecvInvAck rules_24 ( // @[system.scala 110:16]
    .io_en_r(rules_24_io_en_r),
    .io_Cache_in_0_State(rules_24_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_24_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_24_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_24_io_Cache_in_1_Data),
    .io_Cache_in_2_State(rules_24_io_Cache_in_2_State),
    .io_Cache_in_2_Data(rules_24_io_Cache_in_2_Data),
    .io_Cache_out_0_State(rules_24_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_24_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_24_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_24_io_Cache_out_1_Data),
    .io_Cache_out_2_State(rules_24_io_Cache_out_2_State),
    .io_Cache_out_2_Data(rules_24_io_Cache_out_2_Data),
    .io_Chan1_in_0_Cmd(rules_24_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_24_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_24_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_24_io_Chan1_in_1_Data),
    .io_Chan1_in_2_Cmd(rules_24_io_Chan1_in_2_Cmd),
    .io_Chan1_in_2_Data(rules_24_io_Chan1_in_2_Data),
    .io_Chan1_out_0_Cmd(rules_24_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_24_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_24_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_24_io_Chan1_out_1_Data),
    .io_Chan1_out_2_Cmd(rules_24_io_Chan1_out_2_Cmd),
    .io_Chan1_out_2_Data(rules_24_io_Chan1_out_2_Data),
    .io_Chan2_in_0_Cmd(rules_24_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_24_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_24_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_24_io_Chan2_in_1_Data),
    .io_Chan2_in_2_Cmd(rules_24_io_Chan2_in_2_Cmd),
    .io_Chan2_in_2_Data(rules_24_io_Chan2_in_2_Data),
    .io_Chan2_out_0_Cmd(rules_24_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_24_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_24_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_24_io_Chan2_out_1_Data),
    .io_Chan2_out_2_Cmd(rules_24_io_Chan2_out_2_Cmd),
    .io_Chan2_out_2_Data(rules_24_io_Chan2_out_2_Data),
    .io_Chan3_in_0_Cmd(rules_24_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_24_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_24_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_24_io_Chan3_in_1_Data),
    .io_Chan3_in_2_Cmd(rules_24_io_Chan3_in_2_Cmd),
    .io_Chan3_in_2_Data(rules_24_io_Chan3_in_2_Data),
    .io_Chan3_out_0_Cmd(rules_24_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_24_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_24_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_24_io_Chan3_out_1_Data),
    .io_Chan3_out_2_Cmd(rules_24_io_Chan3_out_2_Cmd),
    .io_Chan3_out_2_Data(rules_24_io_Chan3_out_2_Data),
    .io_InvSet_in_0(rules_24_io_InvSet_in_0),
    .io_InvSet_in_1(rules_24_io_InvSet_in_1),
    .io_InvSet_in_2(rules_24_io_InvSet_in_2),
    .io_InvSet_out_0(rules_24_io_InvSet_out_0),
    .io_InvSet_out_1(rules_24_io_InvSet_out_1),
    .io_InvSet_out_2(rules_24_io_InvSet_out_2),
    .io_ShrSet_in_0(rules_24_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_24_io_ShrSet_in_1),
    .io_ShrSet_in_2(rules_24_io_ShrSet_in_2),
    .io_ShrSet_out_0(rules_24_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_24_io_ShrSet_out_1),
    .io_ShrSet_out_2(rules_24_io_ShrSet_out_2),
    .io_ExGntd_in(rules_24_io_ExGntd_in),
    .io_ExGntd_out(rules_24_io_ExGntd_out),
    .io_CurCmd_in(rules_24_io_CurCmd_in),
    .io_CurCmd_out(rules_24_io_CurCmd_out),
    .io_CurPtr_in(rules_24_io_CurPtr_in),
    .io_CurPtr_out(rules_24_io_CurPtr_out),
    .io_MemData_in(rules_24_io_MemData_in),
    .io_MemData_out(rules_24_io_MemData_out),
    .io_AuxData_in(rules_24_io_AuxData_in),
    .io_AuxData_out(rules_24_io_AuxData_out)
  );
  RecvInvAck_1 rules_25 ( // @[system.scala 110:16]
    .io_en_r(rules_25_io_en_r),
    .io_Cache_in_0_State(rules_25_io_Cache_in_0_State),
    .io_Cache_in_0_Data(rules_25_io_Cache_in_0_Data),
    .io_Cache_in_1_State(rules_25_io_Cache_in_1_State),
    .io_Cache_in_1_Data(rules_25_io_Cache_in_1_Data),
    .io_Cache_in_2_State(rules_25_io_Cache_in_2_State),
    .io_Cache_in_2_Data(rules_25_io_Cache_in_2_Data),
    .io_Cache_out_0_State(rules_25_io_Cache_out_0_State),
    .io_Cache_out_0_Data(rules_25_io_Cache_out_0_Data),
    .io_Cache_out_1_State(rules_25_io_Cache_out_1_State),
    .io_Cache_out_1_Data(rules_25_io_Cache_out_1_Data),
    .io_Cache_out_2_State(rules_25_io_Cache_out_2_State),
    .io_Cache_out_2_Data(rules_25_io_Cache_out_2_Data),
    .io_Chan1_in_0_Cmd(rules_25_io_Chan1_in_0_Cmd),
    .io_Chan1_in_0_Data(rules_25_io_Chan1_in_0_Data),
    .io_Chan1_in_1_Cmd(rules_25_io_Chan1_in_1_Cmd),
    .io_Chan1_in_1_Data(rules_25_io_Chan1_in_1_Data),
    .io_Chan1_in_2_Cmd(rules_25_io_Chan1_in_2_Cmd),
    .io_Chan1_in_2_Data(rules_25_io_Chan1_in_2_Data),
    .io_Chan1_out_0_Cmd(rules_25_io_Chan1_out_0_Cmd),
    .io_Chan1_out_0_Data(rules_25_io_Chan1_out_0_Data),
    .io_Chan1_out_1_Cmd(rules_25_io_Chan1_out_1_Cmd),
    .io_Chan1_out_1_Data(rules_25_io_Chan1_out_1_Data),
    .io_Chan1_out_2_Cmd(rules_25_io_Chan1_out_2_Cmd),
    .io_Chan1_out_2_Data(rules_25_io_Chan1_out_2_Data),
    .io_Chan2_in_0_Cmd(rules_25_io_Chan2_in_0_Cmd),
    .io_Chan2_in_0_Data(rules_25_io_Chan2_in_0_Data),
    .io_Chan2_in_1_Cmd(rules_25_io_Chan2_in_1_Cmd),
    .io_Chan2_in_1_Data(rules_25_io_Chan2_in_1_Data),
    .io_Chan2_in_2_Cmd(rules_25_io_Chan2_in_2_Cmd),
    .io_Chan2_in_2_Data(rules_25_io_Chan2_in_2_Data),
    .io_Chan2_out_0_Cmd(rules_25_io_Chan2_out_0_Cmd),
    .io_Chan2_out_0_Data(rules_25_io_Chan2_out_0_Data),
    .io_Chan2_out_1_Cmd(rules_25_io_Chan2_out_1_Cmd),
    .io_Chan2_out_1_Data(rules_25_io_Chan2_out_1_Data),
    .io_Chan2_out_2_Cmd(rules_25_io_Chan2_out_2_Cmd),
    .io_Chan2_out_2_Data(rules_25_io_Chan2_out_2_Data),
    .io_Chan3_in_0_Cmd(rules_25_io_Chan3_in_0_Cmd),
    .io_Chan3_in_0_Data(rules_25_io_Chan3_in_0_Data),
    .io_Chan3_in_1_Cmd(rules_25_io_Chan3_in_1_Cmd),
    .io_Chan3_in_1_Data(rules_25_io_Chan3_in_1_Data),
    .io_Chan3_in_2_Cmd(rules_25_io_Chan3_in_2_Cmd),
    .io_Chan3_in_2_Data(rules_25_io_Chan3_in_2_Data),
    .io_Chan3_out_0_Cmd(rules_25_io_Chan3_out_0_Cmd),
    .io_Chan3_out_0_Data(rules_25_io_Chan3_out_0_Data),
    .io_Chan3_out_1_Cmd(rules_25_io_Chan3_out_1_Cmd),
    .io_Chan3_out_1_Data(rules_25_io_Chan3_out_1_Data),
    .io_Chan3_out_2_Cmd(rules_25_io_Chan3_out_2_Cmd),
    .io_Chan3_out_2_Data(rules_25_io_Chan3_out_2_Data),
    .io_InvSet_in_0(rules_25_io_InvSet_in_0),
    .io_InvSet_in_1(rules_25_io_InvSet_in_1),
    .io_InvSet_in_2(rules_25_io_InvSet_in_2),
    .io_InvSet_out_0(rules_25_io_InvSet_out_0),
    .io_InvSet_out_1(rules_25_io_InvSet_out_1),
    .io_InvSet_out_2(rules_25_io_InvSet_out_2),
    .io_ShrSet_in_0(rules_25_io_ShrSet_in_0),
    .io_ShrSet_in_1(rules_25_io_ShrSet_in_1),
    .io_ShrSet_in_2(rules_25_io_ShrSet_in_2),
    .io_ShrSet_out_0(rules_25_io_ShrSet_out_0),
    .io_ShrSet_out_1(rules_25_io_ShrSet_out_1),
    .io_ShrSet_out_2(rules_25_io_ShrSet_out_2),
    .io_ExGntd_in(rules_25_io_ExGntd_in),
    .io_ExGntd_out(rules_25_io_ExGntd_out),
    .io_CurCmd_in(rules_25_io_CurCmd_in),
    .io_CurCmd_out(rules_25_io_CurCmd_out),
    .io_CurPtr_in(rules_25_io_CurPtr_in),
    .io_CurPtr_out(rules_25_io_CurPtr_out),
    .io_MemData_in(rules_25_io_MemData_in),
    .io_MemData_out(rules_25_io_MemData_out),
    .io_AuxData_in(rules_25_io_AuxData_in),
    .io_AuxData_out(rules_25_io_AuxData_out)
  );
  assign io_Cache_out_0_State = Cache_reg_0_State; // @[system.scala 24:13]
  assign io_Cache_out_0_Data = Cache_reg_0_Data; // @[system.scala 24:13]
  assign io_Cache_out_1_State = Cache_reg_1_State; // @[system.scala 24:13]
  assign io_Cache_out_1_Data = Cache_reg_1_Data; // @[system.scala 24:13]
  assign io_Cache_out_2_State = Cache_reg_2_State; // @[system.scala 24:13]
  assign io_Cache_out_2_Data = Cache_reg_2_Data; // @[system.scala 24:13]
  assign io_Chan1_out_0_Cmd = Chan1_reg_0_Cmd; // @[system.scala 27:13]
  assign io_Chan1_out_0_Data = Chan1_reg_0_Data; // @[system.scala 27:13]
  assign io_Chan1_out_1_Cmd = Chan1_reg_1_Cmd; // @[system.scala 27:13]
  assign io_Chan1_out_1_Data = Chan1_reg_1_Data; // @[system.scala 27:13]
  assign io_Chan1_out_2_Cmd = Chan1_reg_2_Cmd; // @[system.scala 27:13]
  assign io_Chan1_out_2_Data = Chan1_reg_2_Data; // @[system.scala 27:13]
  assign io_Chan2_out_0_Cmd = Chan2_reg_0_Cmd; // @[system.scala 30:13]
  assign io_Chan2_out_0_Data = Chan2_reg_0_Data; // @[system.scala 30:13]
  assign io_Chan2_out_1_Cmd = Chan2_reg_1_Cmd; // @[system.scala 30:13]
  assign io_Chan2_out_1_Data = Chan2_reg_1_Data; // @[system.scala 30:13]
  assign io_Chan2_out_2_Cmd = Chan2_reg_2_Cmd; // @[system.scala 30:13]
  assign io_Chan2_out_2_Data = Chan2_reg_2_Data; // @[system.scala 30:13]
  assign io_Chan3_out_0_Cmd = Chan3_reg_0_Cmd; // @[system.scala 33:13]
  assign io_Chan3_out_0_Data = Chan3_reg_0_Data; // @[system.scala 33:13]
  assign io_Chan3_out_1_Cmd = Chan3_reg_1_Cmd; // @[system.scala 33:13]
  assign io_Chan3_out_1_Data = Chan3_reg_1_Data; // @[system.scala 33:13]
  assign io_Chan3_out_2_Cmd = Chan3_reg_2_Cmd; // @[system.scala 33:13]
  assign io_Chan3_out_2_Data = Chan3_reg_2_Data; // @[system.scala 33:13]
  assign io_InvSet_out_0 = InvSet_reg_0; // @[system.scala 36:14]
  assign io_InvSet_out_1 = InvSet_reg_1; // @[system.scala 36:14]
  assign io_InvSet_out_2 = InvSet_reg_2; // @[system.scala 36:14]
  assign io_ShrSet_out_0 = ShrSet_reg_0; // @[system.scala 39:14]
  assign io_ShrSet_out_1 = ShrSet_reg_1; // @[system.scala 39:14]
  assign io_ShrSet_out_2 = ShrSet_reg_2; // @[system.scala 39:14]
  assign io_ExGntd_out = ExGntd_reg; // @[system.scala 42:14]
  assign io_CurCmd_out = CurCmd_reg; // @[system.scala 45:14]
  assign io_CurPtr_out = CurPtr_reg; // @[system.scala 48:14]
  assign io_MemData_out = MemData_reg; // @[system.scala 51:15]
  assign io_AuxData_out = AuxData_reg; // @[system.scala 54:15]
  assign rules_0_io_en_r = io_en_a == 5'h0; // @[system.scala 124:27]
  assign rules_0_io_Cache_in_0_State = Cache_reg_0_State; // @[system.scala 113:22]
  assign rules_0_io_Cache_in_0_Data = Cache_reg_0_Data; // @[system.scala 113:22]
  assign rules_0_io_Cache_in_1_State = Cache_reg_1_State; // @[system.scala 113:22]
  assign rules_0_io_Cache_in_1_Data = Cache_reg_1_Data; // @[system.scala 113:22]
  assign rules_0_io_Cache_in_2_State = Cache_reg_2_State; // @[system.scala 113:22]
  assign rules_0_io_Cache_in_2_Data = Cache_reg_2_Data; // @[system.scala 113:22]
  assign rules_0_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[system.scala 114:22]
  assign rules_0_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[system.scala 114:22]
  assign rules_0_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[system.scala 114:22]
  assign rules_0_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[system.scala 114:22]
  assign rules_0_io_Chan1_in_2_Cmd = Chan1_reg_2_Cmd; // @[system.scala 114:22]
  assign rules_0_io_Chan1_in_2_Data = Chan1_reg_2_Data; // @[system.scala 114:22]
  assign rules_0_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[system.scala 115:22]
  assign rules_0_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[system.scala 115:22]
  assign rules_0_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[system.scala 115:22]
  assign rules_0_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[system.scala 115:22]
  assign rules_0_io_Chan2_in_2_Cmd = Chan2_reg_2_Cmd; // @[system.scala 115:22]
  assign rules_0_io_Chan2_in_2_Data = Chan2_reg_2_Data; // @[system.scala 115:22]
  assign rules_0_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[system.scala 116:22]
  assign rules_0_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[system.scala 116:22]
  assign rules_0_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[system.scala 116:22]
  assign rules_0_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[system.scala 116:22]
  assign rules_0_io_Chan3_in_2_Cmd = Chan3_reg_2_Cmd; // @[system.scala 116:22]
  assign rules_0_io_Chan3_in_2_Data = Chan3_reg_2_Data; // @[system.scala 116:22]
  assign rules_0_io_InvSet_in_0 = InvSet_reg_0; // @[system.scala 117:23]
  assign rules_0_io_InvSet_in_1 = InvSet_reg_1; // @[system.scala 117:23]
  assign rules_0_io_InvSet_in_2 = InvSet_reg_2; // @[system.scala 117:23]
  assign rules_0_io_ShrSet_in_0 = ShrSet_reg_0; // @[system.scala 118:23]
  assign rules_0_io_ShrSet_in_1 = ShrSet_reg_1; // @[system.scala 118:23]
  assign rules_0_io_ShrSet_in_2 = ShrSet_reg_2; // @[system.scala 118:23]
  assign rules_0_io_ExGntd_in = ExGntd_reg; // @[system.scala 119:23]
  assign rules_0_io_CurCmd_in = CurCmd_reg; // @[system.scala 120:23]
  assign rules_0_io_CurPtr_in = CurPtr_reg; // @[system.scala 121:23]
  assign rules_0_io_MemData_in = MemData_reg; // @[system.scala 122:24]
  assign rules_0_io_AuxData_in = AuxData_reg; // @[system.scala 123:24]
  assign rules_1_io_en_r = io_en_a == 5'h1; // @[system.scala 124:27]
  assign rules_1_io_Cache_in_0_State = Cache_reg_0_State; // @[system.scala 113:22]
  assign rules_1_io_Cache_in_0_Data = Cache_reg_0_Data; // @[system.scala 113:22]
  assign rules_1_io_Cache_in_1_State = Cache_reg_1_State; // @[system.scala 113:22]
  assign rules_1_io_Cache_in_1_Data = Cache_reg_1_Data; // @[system.scala 113:22]
  assign rules_1_io_Cache_in_2_State = Cache_reg_2_State; // @[system.scala 113:22]
  assign rules_1_io_Cache_in_2_Data = Cache_reg_2_Data; // @[system.scala 113:22]
  assign rules_1_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[system.scala 114:22]
  assign rules_1_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[system.scala 114:22]
  assign rules_1_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[system.scala 114:22]
  assign rules_1_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[system.scala 114:22]
  assign rules_1_io_Chan1_in_2_Cmd = Chan1_reg_2_Cmd; // @[system.scala 114:22]
  assign rules_1_io_Chan1_in_2_Data = Chan1_reg_2_Data; // @[system.scala 114:22]
  assign rules_1_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[system.scala 115:22]
  assign rules_1_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[system.scala 115:22]
  assign rules_1_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[system.scala 115:22]
  assign rules_1_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[system.scala 115:22]
  assign rules_1_io_Chan2_in_2_Cmd = Chan2_reg_2_Cmd; // @[system.scala 115:22]
  assign rules_1_io_Chan2_in_2_Data = Chan2_reg_2_Data; // @[system.scala 115:22]
  assign rules_1_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[system.scala 116:22]
  assign rules_1_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[system.scala 116:22]
  assign rules_1_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[system.scala 116:22]
  assign rules_1_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[system.scala 116:22]
  assign rules_1_io_Chan3_in_2_Cmd = Chan3_reg_2_Cmd; // @[system.scala 116:22]
  assign rules_1_io_Chan3_in_2_Data = Chan3_reg_2_Data; // @[system.scala 116:22]
  assign rules_1_io_InvSet_in_0 = InvSet_reg_0; // @[system.scala 117:23]
  assign rules_1_io_InvSet_in_1 = InvSet_reg_1; // @[system.scala 117:23]
  assign rules_1_io_InvSet_in_2 = InvSet_reg_2; // @[system.scala 117:23]
  assign rules_1_io_ShrSet_in_0 = ShrSet_reg_0; // @[system.scala 118:23]
  assign rules_1_io_ShrSet_in_1 = ShrSet_reg_1; // @[system.scala 118:23]
  assign rules_1_io_ShrSet_in_2 = ShrSet_reg_2; // @[system.scala 118:23]
  assign rules_1_io_ExGntd_in = ExGntd_reg; // @[system.scala 119:23]
  assign rules_1_io_CurCmd_in = CurCmd_reg; // @[system.scala 120:23]
  assign rules_1_io_CurPtr_in = CurPtr_reg; // @[system.scala 121:23]
  assign rules_1_io_MemData_in = MemData_reg; // @[system.scala 122:24]
  assign rules_1_io_AuxData_in = AuxData_reg; // @[system.scala 123:24]
  assign rules_2_io_en_r = io_en_a == 5'h2; // @[system.scala 124:27]
  assign rules_2_io_Cache_in_0_State = Cache_reg_0_State; // @[system.scala 113:22]
  assign rules_2_io_Cache_in_0_Data = Cache_reg_0_Data; // @[system.scala 113:22]
  assign rules_2_io_Cache_in_1_State = Cache_reg_1_State; // @[system.scala 113:22]
  assign rules_2_io_Cache_in_1_Data = Cache_reg_1_Data; // @[system.scala 113:22]
  assign rules_2_io_Cache_in_2_State = Cache_reg_2_State; // @[system.scala 113:22]
  assign rules_2_io_Cache_in_2_Data = Cache_reg_2_Data; // @[system.scala 113:22]
  assign rules_2_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[system.scala 114:22]
  assign rules_2_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[system.scala 114:22]
  assign rules_2_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[system.scala 114:22]
  assign rules_2_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[system.scala 114:22]
  assign rules_2_io_Chan1_in_2_Cmd = Chan1_reg_2_Cmd; // @[system.scala 114:22]
  assign rules_2_io_Chan1_in_2_Data = Chan1_reg_2_Data; // @[system.scala 114:22]
  assign rules_2_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[system.scala 115:22]
  assign rules_2_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[system.scala 115:22]
  assign rules_2_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[system.scala 115:22]
  assign rules_2_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[system.scala 115:22]
  assign rules_2_io_Chan2_in_2_Cmd = Chan2_reg_2_Cmd; // @[system.scala 115:22]
  assign rules_2_io_Chan2_in_2_Data = Chan2_reg_2_Data; // @[system.scala 115:22]
  assign rules_2_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[system.scala 116:22]
  assign rules_2_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[system.scala 116:22]
  assign rules_2_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[system.scala 116:22]
  assign rules_2_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[system.scala 116:22]
  assign rules_2_io_Chan3_in_2_Cmd = Chan3_reg_2_Cmd; // @[system.scala 116:22]
  assign rules_2_io_Chan3_in_2_Data = Chan3_reg_2_Data; // @[system.scala 116:22]
  assign rules_2_io_InvSet_in_0 = InvSet_reg_0; // @[system.scala 117:23]
  assign rules_2_io_InvSet_in_1 = InvSet_reg_1; // @[system.scala 117:23]
  assign rules_2_io_InvSet_in_2 = InvSet_reg_2; // @[system.scala 117:23]
  assign rules_2_io_ShrSet_in_0 = ShrSet_reg_0; // @[system.scala 118:23]
  assign rules_2_io_ShrSet_in_1 = ShrSet_reg_1; // @[system.scala 118:23]
  assign rules_2_io_ShrSet_in_2 = ShrSet_reg_2; // @[system.scala 118:23]
  assign rules_2_io_ExGntd_in = ExGntd_reg; // @[system.scala 119:23]
  assign rules_2_io_CurCmd_in = CurCmd_reg; // @[system.scala 120:23]
  assign rules_2_io_CurPtr_in = CurPtr_reg; // @[system.scala 121:23]
  assign rules_2_io_MemData_in = MemData_reg; // @[system.scala 122:24]
  assign rules_2_io_AuxData_in = AuxData_reg; // @[system.scala 123:24]
  assign rules_3_io_en_r = io_en_a == 5'h3; // @[system.scala 124:27]
  assign rules_3_io_Cache_in_0_State = Cache_reg_0_State; // @[system.scala 113:22]
  assign rules_3_io_Cache_in_0_Data = Cache_reg_0_Data; // @[system.scala 113:22]
  assign rules_3_io_Cache_in_1_State = Cache_reg_1_State; // @[system.scala 113:22]
  assign rules_3_io_Cache_in_1_Data = Cache_reg_1_Data; // @[system.scala 113:22]
  assign rules_3_io_Cache_in_2_State = Cache_reg_2_State; // @[system.scala 113:22]
  assign rules_3_io_Cache_in_2_Data = Cache_reg_2_Data; // @[system.scala 113:22]
  assign rules_3_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[system.scala 114:22]
  assign rules_3_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[system.scala 114:22]
  assign rules_3_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[system.scala 114:22]
  assign rules_3_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[system.scala 114:22]
  assign rules_3_io_Chan1_in_2_Cmd = Chan1_reg_2_Cmd; // @[system.scala 114:22]
  assign rules_3_io_Chan1_in_2_Data = Chan1_reg_2_Data; // @[system.scala 114:22]
  assign rules_3_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[system.scala 115:22]
  assign rules_3_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[system.scala 115:22]
  assign rules_3_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[system.scala 115:22]
  assign rules_3_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[system.scala 115:22]
  assign rules_3_io_Chan2_in_2_Cmd = Chan2_reg_2_Cmd; // @[system.scala 115:22]
  assign rules_3_io_Chan2_in_2_Data = Chan2_reg_2_Data; // @[system.scala 115:22]
  assign rules_3_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[system.scala 116:22]
  assign rules_3_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[system.scala 116:22]
  assign rules_3_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[system.scala 116:22]
  assign rules_3_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[system.scala 116:22]
  assign rules_3_io_Chan3_in_2_Cmd = Chan3_reg_2_Cmd; // @[system.scala 116:22]
  assign rules_3_io_Chan3_in_2_Data = Chan3_reg_2_Data; // @[system.scala 116:22]
  assign rules_3_io_InvSet_in_0 = InvSet_reg_0; // @[system.scala 117:23]
  assign rules_3_io_InvSet_in_1 = InvSet_reg_1; // @[system.scala 117:23]
  assign rules_3_io_InvSet_in_2 = InvSet_reg_2; // @[system.scala 117:23]
  assign rules_3_io_ShrSet_in_0 = ShrSet_reg_0; // @[system.scala 118:23]
  assign rules_3_io_ShrSet_in_1 = ShrSet_reg_1; // @[system.scala 118:23]
  assign rules_3_io_ShrSet_in_2 = ShrSet_reg_2; // @[system.scala 118:23]
  assign rules_3_io_ExGntd_in = ExGntd_reg; // @[system.scala 119:23]
  assign rules_3_io_CurCmd_in = CurCmd_reg; // @[system.scala 120:23]
  assign rules_3_io_CurPtr_in = CurPtr_reg; // @[system.scala 121:23]
  assign rules_3_io_MemData_in = MemData_reg; // @[system.scala 122:24]
  assign rules_3_io_AuxData_in = AuxData_reg; // @[system.scala 123:24]
  assign rules_4_io_en_r = io_en_a == 5'h4; // @[system.scala 124:27]
  assign rules_4_io_Cache_in_0_State = Cache_reg_0_State; // @[system.scala 113:22]
  assign rules_4_io_Cache_in_0_Data = Cache_reg_0_Data; // @[system.scala 113:22]
  assign rules_4_io_Cache_in_1_State = Cache_reg_1_State; // @[system.scala 113:22]
  assign rules_4_io_Cache_in_1_Data = Cache_reg_1_Data; // @[system.scala 113:22]
  assign rules_4_io_Cache_in_2_State = Cache_reg_2_State; // @[system.scala 113:22]
  assign rules_4_io_Cache_in_2_Data = Cache_reg_2_Data; // @[system.scala 113:22]
  assign rules_4_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[system.scala 114:22]
  assign rules_4_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[system.scala 114:22]
  assign rules_4_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[system.scala 114:22]
  assign rules_4_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[system.scala 114:22]
  assign rules_4_io_Chan1_in_2_Cmd = Chan1_reg_2_Cmd; // @[system.scala 114:22]
  assign rules_4_io_Chan1_in_2_Data = Chan1_reg_2_Data; // @[system.scala 114:22]
  assign rules_4_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[system.scala 115:22]
  assign rules_4_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[system.scala 115:22]
  assign rules_4_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[system.scala 115:22]
  assign rules_4_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[system.scala 115:22]
  assign rules_4_io_Chan2_in_2_Cmd = Chan2_reg_2_Cmd; // @[system.scala 115:22]
  assign rules_4_io_Chan2_in_2_Data = Chan2_reg_2_Data; // @[system.scala 115:22]
  assign rules_4_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[system.scala 116:22]
  assign rules_4_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[system.scala 116:22]
  assign rules_4_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[system.scala 116:22]
  assign rules_4_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[system.scala 116:22]
  assign rules_4_io_Chan3_in_2_Cmd = Chan3_reg_2_Cmd; // @[system.scala 116:22]
  assign rules_4_io_Chan3_in_2_Data = Chan3_reg_2_Data; // @[system.scala 116:22]
  assign rules_4_io_InvSet_in_0 = InvSet_reg_0; // @[system.scala 117:23]
  assign rules_4_io_InvSet_in_1 = InvSet_reg_1; // @[system.scala 117:23]
  assign rules_4_io_InvSet_in_2 = InvSet_reg_2; // @[system.scala 117:23]
  assign rules_4_io_ShrSet_in_0 = ShrSet_reg_0; // @[system.scala 118:23]
  assign rules_4_io_ShrSet_in_1 = ShrSet_reg_1; // @[system.scala 118:23]
  assign rules_4_io_ShrSet_in_2 = ShrSet_reg_2; // @[system.scala 118:23]
  assign rules_4_io_ExGntd_in = ExGntd_reg; // @[system.scala 119:23]
  assign rules_4_io_CurCmd_in = CurCmd_reg; // @[system.scala 120:23]
  assign rules_4_io_CurPtr_in = CurPtr_reg; // @[system.scala 121:23]
  assign rules_4_io_MemData_in = MemData_reg; // @[system.scala 122:24]
  assign rules_4_io_AuxData_in = AuxData_reg; // @[system.scala 123:24]
  assign rules_5_io_en_r = io_en_a == 5'h5; // @[system.scala 124:27]
  assign rules_5_io_Cache_in_0_State = Cache_reg_0_State; // @[system.scala 113:22]
  assign rules_5_io_Cache_in_0_Data = Cache_reg_0_Data; // @[system.scala 113:22]
  assign rules_5_io_Cache_in_1_State = Cache_reg_1_State; // @[system.scala 113:22]
  assign rules_5_io_Cache_in_1_Data = Cache_reg_1_Data; // @[system.scala 113:22]
  assign rules_5_io_Cache_in_2_State = Cache_reg_2_State; // @[system.scala 113:22]
  assign rules_5_io_Cache_in_2_Data = Cache_reg_2_Data; // @[system.scala 113:22]
  assign rules_5_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[system.scala 114:22]
  assign rules_5_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[system.scala 114:22]
  assign rules_5_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[system.scala 114:22]
  assign rules_5_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[system.scala 114:22]
  assign rules_5_io_Chan1_in_2_Cmd = Chan1_reg_2_Cmd; // @[system.scala 114:22]
  assign rules_5_io_Chan1_in_2_Data = Chan1_reg_2_Data; // @[system.scala 114:22]
  assign rules_5_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[system.scala 115:22]
  assign rules_5_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[system.scala 115:22]
  assign rules_5_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[system.scala 115:22]
  assign rules_5_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[system.scala 115:22]
  assign rules_5_io_Chan2_in_2_Cmd = Chan2_reg_2_Cmd; // @[system.scala 115:22]
  assign rules_5_io_Chan2_in_2_Data = Chan2_reg_2_Data; // @[system.scala 115:22]
  assign rules_5_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[system.scala 116:22]
  assign rules_5_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[system.scala 116:22]
  assign rules_5_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[system.scala 116:22]
  assign rules_5_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[system.scala 116:22]
  assign rules_5_io_Chan3_in_2_Cmd = Chan3_reg_2_Cmd; // @[system.scala 116:22]
  assign rules_5_io_Chan3_in_2_Data = Chan3_reg_2_Data; // @[system.scala 116:22]
  assign rules_5_io_InvSet_in_0 = InvSet_reg_0; // @[system.scala 117:23]
  assign rules_5_io_InvSet_in_1 = InvSet_reg_1; // @[system.scala 117:23]
  assign rules_5_io_InvSet_in_2 = InvSet_reg_2; // @[system.scala 117:23]
  assign rules_5_io_ShrSet_in_0 = ShrSet_reg_0; // @[system.scala 118:23]
  assign rules_5_io_ShrSet_in_1 = ShrSet_reg_1; // @[system.scala 118:23]
  assign rules_5_io_ShrSet_in_2 = ShrSet_reg_2; // @[system.scala 118:23]
  assign rules_5_io_ExGntd_in = ExGntd_reg; // @[system.scala 119:23]
  assign rules_5_io_CurCmd_in = CurCmd_reg; // @[system.scala 120:23]
  assign rules_5_io_CurPtr_in = CurPtr_reg; // @[system.scala 121:23]
  assign rules_5_io_MemData_in = MemData_reg; // @[system.scala 122:24]
  assign rules_5_io_AuxData_in = AuxData_reg; // @[system.scala 123:24]
  assign rules_6_io_en_r = io_en_a == 5'h6; // @[system.scala 124:27]
  assign rules_6_io_Cache_in_0_State = Cache_reg_0_State; // @[system.scala 113:22]
  assign rules_6_io_Cache_in_0_Data = Cache_reg_0_Data; // @[system.scala 113:22]
  assign rules_6_io_Cache_in_1_State = Cache_reg_1_State; // @[system.scala 113:22]
  assign rules_6_io_Cache_in_1_Data = Cache_reg_1_Data; // @[system.scala 113:22]
  assign rules_6_io_Cache_in_2_State = Cache_reg_2_State; // @[system.scala 113:22]
  assign rules_6_io_Cache_in_2_Data = Cache_reg_2_Data; // @[system.scala 113:22]
  assign rules_6_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[system.scala 114:22]
  assign rules_6_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[system.scala 114:22]
  assign rules_6_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[system.scala 114:22]
  assign rules_6_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[system.scala 114:22]
  assign rules_6_io_Chan1_in_2_Cmd = Chan1_reg_2_Cmd; // @[system.scala 114:22]
  assign rules_6_io_Chan1_in_2_Data = Chan1_reg_2_Data; // @[system.scala 114:22]
  assign rules_6_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[system.scala 115:22]
  assign rules_6_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[system.scala 115:22]
  assign rules_6_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[system.scala 115:22]
  assign rules_6_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[system.scala 115:22]
  assign rules_6_io_Chan2_in_2_Cmd = Chan2_reg_2_Cmd; // @[system.scala 115:22]
  assign rules_6_io_Chan2_in_2_Data = Chan2_reg_2_Data; // @[system.scala 115:22]
  assign rules_6_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[system.scala 116:22]
  assign rules_6_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[system.scala 116:22]
  assign rules_6_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[system.scala 116:22]
  assign rules_6_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[system.scala 116:22]
  assign rules_6_io_Chan3_in_2_Cmd = Chan3_reg_2_Cmd; // @[system.scala 116:22]
  assign rules_6_io_Chan3_in_2_Data = Chan3_reg_2_Data; // @[system.scala 116:22]
  assign rules_6_io_InvSet_in_0 = InvSet_reg_0; // @[system.scala 117:23]
  assign rules_6_io_InvSet_in_1 = InvSet_reg_1; // @[system.scala 117:23]
  assign rules_6_io_InvSet_in_2 = InvSet_reg_2; // @[system.scala 117:23]
  assign rules_6_io_ShrSet_in_0 = ShrSet_reg_0; // @[system.scala 118:23]
  assign rules_6_io_ShrSet_in_1 = ShrSet_reg_1; // @[system.scala 118:23]
  assign rules_6_io_ShrSet_in_2 = ShrSet_reg_2; // @[system.scala 118:23]
  assign rules_6_io_ExGntd_in = ExGntd_reg; // @[system.scala 119:23]
  assign rules_6_io_CurCmd_in = CurCmd_reg; // @[system.scala 120:23]
  assign rules_6_io_CurPtr_in = CurPtr_reg; // @[system.scala 121:23]
  assign rules_6_io_MemData_in = MemData_reg; // @[system.scala 122:24]
  assign rules_6_io_AuxData_in = AuxData_reg; // @[system.scala 123:24]
  assign rules_7_io_en_r = io_en_a == 5'h7; // @[system.scala 124:27]
  assign rules_7_io_Cache_in_0_State = Cache_reg_0_State; // @[system.scala 113:22]
  assign rules_7_io_Cache_in_0_Data = Cache_reg_0_Data; // @[system.scala 113:22]
  assign rules_7_io_Cache_in_1_State = Cache_reg_1_State; // @[system.scala 113:22]
  assign rules_7_io_Cache_in_1_Data = Cache_reg_1_Data; // @[system.scala 113:22]
  assign rules_7_io_Cache_in_2_State = Cache_reg_2_State; // @[system.scala 113:22]
  assign rules_7_io_Cache_in_2_Data = Cache_reg_2_Data; // @[system.scala 113:22]
  assign rules_7_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[system.scala 114:22]
  assign rules_7_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[system.scala 114:22]
  assign rules_7_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[system.scala 114:22]
  assign rules_7_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[system.scala 114:22]
  assign rules_7_io_Chan1_in_2_Cmd = Chan1_reg_2_Cmd; // @[system.scala 114:22]
  assign rules_7_io_Chan1_in_2_Data = Chan1_reg_2_Data; // @[system.scala 114:22]
  assign rules_7_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[system.scala 115:22]
  assign rules_7_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[system.scala 115:22]
  assign rules_7_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[system.scala 115:22]
  assign rules_7_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[system.scala 115:22]
  assign rules_7_io_Chan2_in_2_Cmd = Chan2_reg_2_Cmd; // @[system.scala 115:22]
  assign rules_7_io_Chan2_in_2_Data = Chan2_reg_2_Data; // @[system.scala 115:22]
  assign rules_7_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[system.scala 116:22]
  assign rules_7_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[system.scala 116:22]
  assign rules_7_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[system.scala 116:22]
  assign rules_7_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[system.scala 116:22]
  assign rules_7_io_Chan3_in_2_Cmd = Chan3_reg_2_Cmd; // @[system.scala 116:22]
  assign rules_7_io_Chan3_in_2_Data = Chan3_reg_2_Data; // @[system.scala 116:22]
  assign rules_7_io_InvSet_in_0 = InvSet_reg_0; // @[system.scala 117:23]
  assign rules_7_io_InvSet_in_1 = InvSet_reg_1; // @[system.scala 117:23]
  assign rules_7_io_InvSet_in_2 = InvSet_reg_2; // @[system.scala 117:23]
  assign rules_7_io_ShrSet_in_0 = ShrSet_reg_0; // @[system.scala 118:23]
  assign rules_7_io_ShrSet_in_1 = ShrSet_reg_1; // @[system.scala 118:23]
  assign rules_7_io_ShrSet_in_2 = ShrSet_reg_2; // @[system.scala 118:23]
  assign rules_7_io_ExGntd_in = ExGntd_reg; // @[system.scala 119:23]
  assign rules_7_io_CurCmd_in = CurCmd_reg; // @[system.scala 120:23]
  assign rules_7_io_CurPtr_in = CurPtr_reg; // @[system.scala 121:23]
  assign rules_7_io_MemData_in = MemData_reg; // @[system.scala 122:24]
  assign rules_7_io_AuxData_in = AuxData_reg; // @[system.scala 123:24]
  assign rules_8_io_en_r = io_en_a == 5'h8; // @[system.scala 124:27]
  assign rules_8_io_Cache_in_0_State = Cache_reg_0_State; // @[system.scala 113:22]
  assign rules_8_io_Cache_in_0_Data = Cache_reg_0_Data; // @[system.scala 113:22]
  assign rules_8_io_Cache_in_1_State = Cache_reg_1_State; // @[system.scala 113:22]
  assign rules_8_io_Cache_in_1_Data = Cache_reg_1_Data; // @[system.scala 113:22]
  assign rules_8_io_Cache_in_2_State = Cache_reg_2_State; // @[system.scala 113:22]
  assign rules_8_io_Cache_in_2_Data = Cache_reg_2_Data; // @[system.scala 113:22]
  assign rules_8_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[system.scala 114:22]
  assign rules_8_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[system.scala 114:22]
  assign rules_8_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[system.scala 114:22]
  assign rules_8_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[system.scala 114:22]
  assign rules_8_io_Chan1_in_2_Cmd = Chan1_reg_2_Cmd; // @[system.scala 114:22]
  assign rules_8_io_Chan1_in_2_Data = Chan1_reg_2_Data; // @[system.scala 114:22]
  assign rules_8_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[system.scala 115:22]
  assign rules_8_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[system.scala 115:22]
  assign rules_8_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[system.scala 115:22]
  assign rules_8_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[system.scala 115:22]
  assign rules_8_io_Chan2_in_2_Cmd = Chan2_reg_2_Cmd; // @[system.scala 115:22]
  assign rules_8_io_Chan2_in_2_Data = Chan2_reg_2_Data; // @[system.scala 115:22]
  assign rules_8_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[system.scala 116:22]
  assign rules_8_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[system.scala 116:22]
  assign rules_8_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[system.scala 116:22]
  assign rules_8_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[system.scala 116:22]
  assign rules_8_io_Chan3_in_2_Cmd = Chan3_reg_2_Cmd; // @[system.scala 116:22]
  assign rules_8_io_Chan3_in_2_Data = Chan3_reg_2_Data; // @[system.scala 116:22]
  assign rules_8_io_InvSet_in_0 = InvSet_reg_0; // @[system.scala 117:23]
  assign rules_8_io_InvSet_in_1 = InvSet_reg_1; // @[system.scala 117:23]
  assign rules_8_io_InvSet_in_2 = InvSet_reg_2; // @[system.scala 117:23]
  assign rules_8_io_ShrSet_in_0 = ShrSet_reg_0; // @[system.scala 118:23]
  assign rules_8_io_ShrSet_in_1 = ShrSet_reg_1; // @[system.scala 118:23]
  assign rules_8_io_ShrSet_in_2 = ShrSet_reg_2; // @[system.scala 118:23]
  assign rules_8_io_ExGntd_in = ExGntd_reg; // @[system.scala 119:23]
  assign rules_8_io_CurCmd_in = CurCmd_reg; // @[system.scala 120:23]
  assign rules_8_io_CurPtr_in = CurPtr_reg; // @[system.scala 121:23]
  assign rules_8_io_MemData_in = MemData_reg; // @[system.scala 122:24]
  assign rules_8_io_AuxData_in = AuxData_reg; // @[system.scala 123:24]
  assign rules_9_io_en_r = io_en_a == 5'h9; // @[system.scala 124:27]
  assign rules_9_io_Cache_in_0_State = Cache_reg_0_State; // @[system.scala 113:22]
  assign rules_9_io_Cache_in_0_Data = Cache_reg_0_Data; // @[system.scala 113:22]
  assign rules_9_io_Cache_in_1_State = Cache_reg_1_State; // @[system.scala 113:22]
  assign rules_9_io_Cache_in_1_Data = Cache_reg_1_Data; // @[system.scala 113:22]
  assign rules_9_io_Cache_in_2_State = Cache_reg_2_State; // @[system.scala 113:22]
  assign rules_9_io_Cache_in_2_Data = Cache_reg_2_Data; // @[system.scala 113:22]
  assign rules_9_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[system.scala 114:22]
  assign rules_9_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[system.scala 114:22]
  assign rules_9_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[system.scala 114:22]
  assign rules_9_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[system.scala 114:22]
  assign rules_9_io_Chan1_in_2_Cmd = Chan1_reg_2_Cmd; // @[system.scala 114:22]
  assign rules_9_io_Chan1_in_2_Data = Chan1_reg_2_Data; // @[system.scala 114:22]
  assign rules_9_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[system.scala 115:22]
  assign rules_9_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[system.scala 115:22]
  assign rules_9_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[system.scala 115:22]
  assign rules_9_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[system.scala 115:22]
  assign rules_9_io_Chan2_in_2_Cmd = Chan2_reg_2_Cmd; // @[system.scala 115:22]
  assign rules_9_io_Chan2_in_2_Data = Chan2_reg_2_Data; // @[system.scala 115:22]
  assign rules_9_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[system.scala 116:22]
  assign rules_9_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[system.scala 116:22]
  assign rules_9_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[system.scala 116:22]
  assign rules_9_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[system.scala 116:22]
  assign rules_9_io_Chan3_in_2_Cmd = Chan3_reg_2_Cmd; // @[system.scala 116:22]
  assign rules_9_io_Chan3_in_2_Data = Chan3_reg_2_Data; // @[system.scala 116:22]
  assign rules_9_io_InvSet_in_0 = InvSet_reg_0; // @[system.scala 117:23]
  assign rules_9_io_InvSet_in_1 = InvSet_reg_1; // @[system.scala 117:23]
  assign rules_9_io_InvSet_in_2 = InvSet_reg_2; // @[system.scala 117:23]
  assign rules_9_io_ShrSet_in_0 = ShrSet_reg_0; // @[system.scala 118:23]
  assign rules_9_io_ShrSet_in_1 = ShrSet_reg_1; // @[system.scala 118:23]
  assign rules_9_io_ShrSet_in_2 = ShrSet_reg_2; // @[system.scala 118:23]
  assign rules_9_io_ExGntd_in = ExGntd_reg; // @[system.scala 119:23]
  assign rules_9_io_CurCmd_in = CurCmd_reg; // @[system.scala 120:23]
  assign rules_9_io_CurPtr_in = CurPtr_reg; // @[system.scala 121:23]
  assign rules_9_io_MemData_in = MemData_reg; // @[system.scala 122:24]
  assign rules_9_io_AuxData_in = AuxData_reg; // @[system.scala 123:24]
  assign rules_10_io_en_r = io_en_a == 5'ha; // @[system.scala 124:27]
  assign rules_10_io_Cache_in_0_State = Cache_reg_0_State; // @[system.scala 113:22]
  assign rules_10_io_Cache_in_0_Data = Cache_reg_0_Data; // @[system.scala 113:22]
  assign rules_10_io_Cache_in_1_State = Cache_reg_1_State; // @[system.scala 113:22]
  assign rules_10_io_Cache_in_1_Data = Cache_reg_1_Data; // @[system.scala 113:22]
  assign rules_10_io_Cache_in_2_State = Cache_reg_2_State; // @[system.scala 113:22]
  assign rules_10_io_Cache_in_2_Data = Cache_reg_2_Data; // @[system.scala 113:22]
  assign rules_10_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[system.scala 114:22]
  assign rules_10_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[system.scala 114:22]
  assign rules_10_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[system.scala 114:22]
  assign rules_10_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[system.scala 114:22]
  assign rules_10_io_Chan1_in_2_Cmd = Chan1_reg_2_Cmd; // @[system.scala 114:22]
  assign rules_10_io_Chan1_in_2_Data = Chan1_reg_2_Data; // @[system.scala 114:22]
  assign rules_10_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[system.scala 115:22]
  assign rules_10_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[system.scala 115:22]
  assign rules_10_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[system.scala 115:22]
  assign rules_10_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[system.scala 115:22]
  assign rules_10_io_Chan2_in_2_Cmd = Chan2_reg_2_Cmd; // @[system.scala 115:22]
  assign rules_10_io_Chan2_in_2_Data = Chan2_reg_2_Data; // @[system.scala 115:22]
  assign rules_10_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[system.scala 116:22]
  assign rules_10_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[system.scala 116:22]
  assign rules_10_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[system.scala 116:22]
  assign rules_10_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[system.scala 116:22]
  assign rules_10_io_Chan3_in_2_Cmd = Chan3_reg_2_Cmd; // @[system.scala 116:22]
  assign rules_10_io_Chan3_in_2_Data = Chan3_reg_2_Data; // @[system.scala 116:22]
  assign rules_10_io_InvSet_in_0 = InvSet_reg_0; // @[system.scala 117:23]
  assign rules_10_io_InvSet_in_1 = InvSet_reg_1; // @[system.scala 117:23]
  assign rules_10_io_InvSet_in_2 = InvSet_reg_2; // @[system.scala 117:23]
  assign rules_10_io_ShrSet_in_0 = ShrSet_reg_0; // @[system.scala 118:23]
  assign rules_10_io_ShrSet_in_1 = ShrSet_reg_1; // @[system.scala 118:23]
  assign rules_10_io_ShrSet_in_2 = ShrSet_reg_2; // @[system.scala 118:23]
  assign rules_10_io_ExGntd_in = ExGntd_reg; // @[system.scala 119:23]
  assign rules_10_io_CurCmd_in = CurCmd_reg; // @[system.scala 120:23]
  assign rules_10_io_CurPtr_in = CurPtr_reg; // @[system.scala 121:23]
  assign rules_10_io_MemData_in = MemData_reg; // @[system.scala 122:24]
  assign rules_10_io_AuxData_in = AuxData_reg; // @[system.scala 123:24]
  assign rules_11_io_en_r = io_en_a == 5'hb; // @[system.scala 124:27]
  assign rules_11_io_Cache_in_0_State = Cache_reg_0_State; // @[system.scala 113:22]
  assign rules_11_io_Cache_in_0_Data = Cache_reg_0_Data; // @[system.scala 113:22]
  assign rules_11_io_Cache_in_1_State = Cache_reg_1_State; // @[system.scala 113:22]
  assign rules_11_io_Cache_in_1_Data = Cache_reg_1_Data; // @[system.scala 113:22]
  assign rules_11_io_Cache_in_2_State = Cache_reg_2_State; // @[system.scala 113:22]
  assign rules_11_io_Cache_in_2_Data = Cache_reg_2_Data; // @[system.scala 113:22]
  assign rules_11_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[system.scala 114:22]
  assign rules_11_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[system.scala 114:22]
  assign rules_11_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[system.scala 114:22]
  assign rules_11_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[system.scala 114:22]
  assign rules_11_io_Chan1_in_2_Cmd = Chan1_reg_2_Cmd; // @[system.scala 114:22]
  assign rules_11_io_Chan1_in_2_Data = Chan1_reg_2_Data; // @[system.scala 114:22]
  assign rules_11_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[system.scala 115:22]
  assign rules_11_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[system.scala 115:22]
  assign rules_11_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[system.scala 115:22]
  assign rules_11_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[system.scala 115:22]
  assign rules_11_io_Chan2_in_2_Cmd = Chan2_reg_2_Cmd; // @[system.scala 115:22]
  assign rules_11_io_Chan2_in_2_Data = Chan2_reg_2_Data; // @[system.scala 115:22]
  assign rules_11_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[system.scala 116:22]
  assign rules_11_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[system.scala 116:22]
  assign rules_11_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[system.scala 116:22]
  assign rules_11_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[system.scala 116:22]
  assign rules_11_io_Chan3_in_2_Cmd = Chan3_reg_2_Cmd; // @[system.scala 116:22]
  assign rules_11_io_Chan3_in_2_Data = Chan3_reg_2_Data; // @[system.scala 116:22]
  assign rules_11_io_InvSet_in_0 = InvSet_reg_0; // @[system.scala 117:23]
  assign rules_11_io_InvSet_in_1 = InvSet_reg_1; // @[system.scala 117:23]
  assign rules_11_io_InvSet_in_2 = InvSet_reg_2; // @[system.scala 117:23]
  assign rules_11_io_ShrSet_in_0 = ShrSet_reg_0; // @[system.scala 118:23]
  assign rules_11_io_ShrSet_in_1 = ShrSet_reg_1; // @[system.scala 118:23]
  assign rules_11_io_ShrSet_in_2 = ShrSet_reg_2; // @[system.scala 118:23]
  assign rules_11_io_ExGntd_in = ExGntd_reg; // @[system.scala 119:23]
  assign rules_11_io_CurCmd_in = CurCmd_reg; // @[system.scala 120:23]
  assign rules_11_io_CurPtr_in = CurPtr_reg; // @[system.scala 121:23]
  assign rules_11_io_MemData_in = MemData_reg; // @[system.scala 122:24]
  assign rules_11_io_AuxData_in = AuxData_reg; // @[system.scala 123:24]
  assign rules_12_io_en_r = io_en_a == 5'hc; // @[system.scala 124:27]
  assign rules_12_io_Cache_in_0_State = Cache_reg_0_State; // @[system.scala 113:22]
  assign rules_12_io_Cache_in_0_Data = Cache_reg_0_Data; // @[system.scala 113:22]
  assign rules_12_io_Cache_in_1_State = Cache_reg_1_State; // @[system.scala 113:22]
  assign rules_12_io_Cache_in_1_Data = Cache_reg_1_Data; // @[system.scala 113:22]
  assign rules_12_io_Cache_in_2_State = Cache_reg_2_State; // @[system.scala 113:22]
  assign rules_12_io_Cache_in_2_Data = Cache_reg_2_Data; // @[system.scala 113:22]
  assign rules_12_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[system.scala 114:22]
  assign rules_12_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[system.scala 114:22]
  assign rules_12_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[system.scala 114:22]
  assign rules_12_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[system.scala 114:22]
  assign rules_12_io_Chan1_in_2_Cmd = Chan1_reg_2_Cmd; // @[system.scala 114:22]
  assign rules_12_io_Chan1_in_2_Data = Chan1_reg_2_Data; // @[system.scala 114:22]
  assign rules_12_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[system.scala 115:22]
  assign rules_12_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[system.scala 115:22]
  assign rules_12_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[system.scala 115:22]
  assign rules_12_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[system.scala 115:22]
  assign rules_12_io_Chan2_in_2_Cmd = Chan2_reg_2_Cmd; // @[system.scala 115:22]
  assign rules_12_io_Chan2_in_2_Data = Chan2_reg_2_Data; // @[system.scala 115:22]
  assign rules_12_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[system.scala 116:22]
  assign rules_12_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[system.scala 116:22]
  assign rules_12_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[system.scala 116:22]
  assign rules_12_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[system.scala 116:22]
  assign rules_12_io_Chan3_in_2_Cmd = Chan3_reg_2_Cmd; // @[system.scala 116:22]
  assign rules_12_io_Chan3_in_2_Data = Chan3_reg_2_Data; // @[system.scala 116:22]
  assign rules_12_io_InvSet_in_0 = InvSet_reg_0; // @[system.scala 117:23]
  assign rules_12_io_InvSet_in_1 = InvSet_reg_1; // @[system.scala 117:23]
  assign rules_12_io_InvSet_in_2 = InvSet_reg_2; // @[system.scala 117:23]
  assign rules_12_io_ShrSet_in_0 = ShrSet_reg_0; // @[system.scala 118:23]
  assign rules_12_io_ShrSet_in_1 = ShrSet_reg_1; // @[system.scala 118:23]
  assign rules_12_io_ShrSet_in_2 = ShrSet_reg_2; // @[system.scala 118:23]
  assign rules_12_io_ExGntd_in = ExGntd_reg; // @[system.scala 119:23]
  assign rules_12_io_CurCmd_in = CurCmd_reg; // @[system.scala 120:23]
  assign rules_12_io_CurPtr_in = CurPtr_reg; // @[system.scala 121:23]
  assign rules_12_io_MemData_in = MemData_reg; // @[system.scala 122:24]
  assign rules_12_io_AuxData_in = AuxData_reg; // @[system.scala 123:24]
  assign rules_13_io_en_r = io_en_a == 5'hd; // @[system.scala 124:27]
  assign rules_13_io_Cache_in_0_State = Cache_reg_0_State; // @[system.scala 113:22]
  assign rules_13_io_Cache_in_0_Data = Cache_reg_0_Data; // @[system.scala 113:22]
  assign rules_13_io_Cache_in_1_State = Cache_reg_1_State; // @[system.scala 113:22]
  assign rules_13_io_Cache_in_1_Data = Cache_reg_1_Data; // @[system.scala 113:22]
  assign rules_13_io_Cache_in_2_State = Cache_reg_2_State; // @[system.scala 113:22]
  assign rules_13_io_Cache_in_2_Data = Cache_reg_2_Data; // @[system.scala 113:22]
  assign rules_13_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[system.scala 114:22]
  assign rules_13_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[system.scala 114:22]
  assign rules_13_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[system.scala 114:22]
  assign rules_13_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[system.scala 114:22]
  assign rules_13_io_Chan1_in_2_Cmd = Chan1_reg_2_Cmd; // @[system.scala 114:22]
  assign rules_13_io_Chan1_in_2_Data = Chan1_reg_2_Data; // @[system.scala 114:22]
  assign rules_13_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[system.scala 115:22]
  assign rules_13_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[system.scala 115:22]
  assign rules_13_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[system.scala 115:22]
  assign rules_13_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[system.scala 115:22]
  assign rules_13_io_Chan2_in_2_Cmd = Chan2_reg_2_Cmd; // @[system.scala 115:22]
  assign rules_13_io_Chan2_in_2_Data = Chan2_reg_2_Data; // @[system.scala 115:22]
  assign rules_13_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[system.scala 116:22]
  assign rules_13_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[system.scala 116:22]
  assign rules_13_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[system.scala 116:22]
  assign rules_13_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[system.scala 116:22]
  assign rules_13_io_Chan3_in_2_Cmd = Chan3_reg_2_Cmd; // @[system.scala 116:22]
  assign rules_13_io_Chan3_in_2_Data = Chan3_reg_2_Data; // @[system.scala 116:22]
  assign rules_13_io_InvSet_in_0 = InvSet_reg_0; // @[system.scala 117:23]
  assign rules_13_io_InvSet_in_1 = InvSet_reg_1; // @[system.scala 117:23]
  assign rules_13_io_InvSet_in_2 = InvSet_reg_2; // @[system.scala 117:23]
  assign rules_13_io_ShrSet_in_0 = ShrSet_reg_0; // @[system.scala 118:23]
  assign rules_13_io_ShrSet_in_1 = ShrSet_reg_1; // @[system.scala 118:23]
  assign rules_13_io_ShrSet_in_2 = ShrSet_reg_2; // @[system.scala 118:23]
  assign rules_13_io_ExGntd_in = ExGntd_reg; // @[system.scala 119:23]
  assign rules_13_io_CurCmd_in = CurCmd_reg; // @[system.scala 120:23]
  assign rules_13_io_CurPtr_in = CurPtr_reg; // @[system.scala 121:23]
  assign rules_13_io_MemData_in = MemData_reg; // @[system.scala 122:24]
  assign rules_13_io_AuxData_in = AuxData_reg; // @[system.scala 123:24]
  assign rules_14_io_en_r = io_en_a == 5'he; // @[system.scala 124:27]
  assign rules_14_io_Cache_in_0_State = Cache_reg_0_State; // @[system.scala 113:22]
  assign rules_14_io_Cache_in_0_Data = Cache_reg_0_Data; // @[system.scala 113:22]
  assign rules_14_io_Cache_in_1_State = Cache_reg_1_State; // @[system.scala 113:22]
  assign rules_14_io_Cache_in_1_Data = Cache_reg_1_Data; // @[system.scala 113:22]
  assign rules_14_io_Cache_in_2_State = Cache_reg_2_State; // @[system.scala 113:22]
  assign rules_14_io_Cache_in_2_Data = Cache_reg_2_Data; // @[system.scala 113:22]
  assign rules_14_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[system.scala 114:22]
  assign rules_14_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[system.scala 114:22]
  assign rules_14_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[system.scala 114:22]
  assign rules_14_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[system.scala 114:22]
  assign rules_14_io_Chan1_in_2_Cmd = Chan1_reg_2_Cmd; // @[system.scala 114:22]
  assign rules_14_io_Chan1_in_2_Data = Chan1_reg_2_Data; // @[system.scala 114:22]
  assign rules_14_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[system.scala 115:22]
  assign rules_14_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[system.scala 115:22]
  assign rules_14_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[system.scala 115:22]
  assign rules_14_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[system.scala 115:22]
  assign rules_14_io_Chan2_in_2_Cmd = Chan2_reg_2_Cmd; // @[system.scala 115:22]
  assign rules_14_io_Chan2_in_2_Data = Chan2_reg_2_Data; // @[system.scala 115:22]
  assign rules_14_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[system.scala 116:22]
  assign rules_14_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[system.scala 116:22]
  assign rules_14_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[system.scala 116:22]
  assign rules_14_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[system.scala 116:22]
  assign rules_14_io_Chan3_in_2_Cmd = Chan3_reg_2_Cmd; // @[system.scala 116:22]
  assign rules_14_io_Chan3_in_2_Data = Chan3_reg_2_Data; // @[system.scala 116:22]
  assign rules_14_io_InvSet_in_0 = InvSet_reg_0; // @[system.scala 117:23]
  assign rules_14_io_InvSet_in_1 = InvSet_reg_1; // @[system.scala 117:23]
  assign rules_14_io_InvSet_in_2 = InvSet_reg_2; // @[system.scala 117:23]
  assign rules_14_io_ShrSet_in_0 = ShrSet_reg_0; // @[system.scala 118:23]
  assign rules_14_io_ShrSet_in_1 = ShrSet_reg_1; // @[system.scala 118:23]
  assign rules_14_io_ShrSet_in_2 = ShrSet_reg_2; // @[system.scala 118:23]
  assign rules_14_io_ExGntd_in = ExGntd_reg; // @[system.scala 119:23]
  assign rules_14_io_CurCmd_in = CurCmd_reg; // @[system.scala 120:23]
  assign rules_14_io_CurPtr_in = CurPtr_reg; // @[system.scala 121:23]
  assign rules_14_io_MemData_in = MemData_reg; // @[system.scala 122:24]
  assign rules_14_io_AuxData_in = AuxData_reg; // @[system.scala 123:24]
  assign rules_15_io_en_r = io_en_a == 5'hf; // @[system.scala 124:27]
  assign rules_15_io_Cache_in_0_State = Cache_reg_0_State; // @[system.scala 113:22]
  assign rules_15_io_Cache_in_0_Data = Cache_reg_0_Data; // @[system.scala 113:22]
  assign rules_15_io_Cache_in_1_State = Cache_reg_1_State; // @[system.scala 113:22]
  assign rules_15_io_Cache_in_1_Data = Cache_reg_1_Data; // @[system.scala 113:22]
  assign rules_15_io_Cache_in_2_State = Cache_reg_2_State; // @[system.scala 113:22]
  assign rules_15_io_Cache_in_2_Data = Cache_reg_2_Data; // @[system.scala 113:22]
  assign rules_15_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[system.scala 114:22]
  assign rules_15_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[system.scala 114:22]
  assign rules_15_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[system.scala 114:22]
  assign rules_15_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[system.scala 114:22]
  assign rules_15_io_Chan1_in_2_Cmd = Chan1_reg_2_Cmd; // @[system.scala 114:22]
  assign rules_15_io_Chan1_in_2_Data = Chan1_reg_2_Data; // @[system.scala 114:22]
  assign rules_15_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[system.scala 115:22]
  assign rules_15_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[system.scala 115:22]
  assign rules_15_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[system.scala 115:22]
  assign rules_15_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[system.scala 115:22]
  assign rules_15_io_Chan2_in_2_Cmd = Chan2_reg_2_Cmd; // @[system.scala 115:22]
  assign rules_15_io_Chan2_in_2_Data = Chan2_reg_2_Data; // @[system.scala 115:22]
  assign rules_15_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[system.scala 116:22]
  assign rules_15_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[system.scala 116:22]
  assign rules_15_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[system.scala 116:22]
  assign rules_15_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[system.scala 116:22]
  assign rules_15_io_Chan3_in_2_Cmd = Chan3_reg_2_Cmd; // @[system.scala 116:22]
  assign rules_15_io_Chan3_in_2_Data = Chan3_reg_2_Data; // @[system.scala 116:22]
  assign rules_15_io_InvSet_in_0 = InvSet_reg_0; // @[system.scala 117:23]
  assign rules_15_io_InvSet_in_1 = InvSet_reg_1; // @[system.scala 117:23]
  assign rules_15_io_InvSet_in_2 = InvSet_reg_2; // @[system.scala 117:23]
  assign rules_15_io_ShrSet_in_0 = ShrSet_reg_0; // @[system.scala 118:23]
  assign rules_15_io_ShrSet_in_1 = ShrSet_reg_1; // @[system.scala 118:23]
  assign rules_15_io_ShrSet_in_2 = ShrSet_reg_2; // @[system.scala 118:23]
  assign rules_15_io_ExGntd_in = ExGntd_reg; // @[system.scala 119:23]
  assign rules_15_io_CurCmd_in = CurCmd_reg; // @[system.scala 120:23]
  assign rules_15_io_CurPtr_in = CurPtr_reg; // @[system.scala 121:23]
  assign rules_15_io_MemData_in = MemData_reg; // @[system.scala 122:24]
  assign rules_15_io_AuxData_in = AuxData_reg; // @[system.scala 123:24]
  assign rules_16_io_Cache_in_0_State = Cache_reg_0_State; // @[system.scala 113:22]
  assign rules_16_io_Cache_in_0_Data = Cache_reg_0_Data; // @[system.scala 113:22]
  assign rules_16_io_Cache_in_1_State = Cache_reg_1_State; // @[system.scala 113:22]
  assign rules_16_io_Cache_in_1_Data = Cache_reg_1_Data; // @[system.scala 113:22]
  assign rules_16_io_Cache_in_2_State = Cache_reg_2_State; // @[system.scala 113:22]
  assign rules_16_io_Cache_in_2_Data = Cache_reg_2_Data; // @[system.scala 113:22]
  assign rules_16_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[system.scala 114:22]
  assign rules_16_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[system.scala 114:22]
  assign rules_16_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[system.scala 114:22]
  assign rules_16_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[system.scala 114:22]
  assign rules_16_io_Chan1_in_2_Cmd = Chan1_reg_2_Cmd; // @[system.scala 114:22]
  assign rules_16_io_Chan1_in_2_Data = Chan1_reg_2_Data; // @[system.scala 114:22]
  assign rules_16_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[system.scala 115:22]
  assign rules_16_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[system.scala 115:22]
  assign rules_16_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[system.scala 115:22]
  assign rules_16_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[system.scala 115:22]
  assign rules_16_io_Chan2_in_2_Cmd = Chan2_reg_2_Cmd; // @[system.scala 115:22]
  assign rules_16_io_Chan2_in_2_Data = Chan2_reg_2_Data; // @[system.scala 115:22]
  assign rules_16_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[system.scala 116:22]
  assign rules_16_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[system.scala 116:22]
  assign rules_16_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[system.scala 116:22]
  assign rules_16_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[system.scala 116:22]
  assign rules_16_io_Chan3_in_2_Cmd = Chan3_reg_2_Cmd; // @[system.scala 116:22]
  assign rules_16_io_Chan3_in_2_Data = Chan3_reg_2_Data; // @[system.scala 116:22]
  assign rules_16_io_InvSet_in_0 = InvSet_reg_0; // @[system.scala 117:23]
  assign rules_16_io_InvSet_in_1 = InvSet_reg_1; // @[system.scala 117:23]
  assign rules_16_io_InvSet_in_2 = InvSet_reg_2; // @[system.scala 117:23]
  assign rules_16_io_ShrSet_in_0 = ShrSet_reg_0; // @[system.scala 118:23]
  assign rules_16_io_ShrSet_in_1 = ShrSet_reg_1; // @[system.scala 118:23]
  assign rules_16_io_ShrSet_in_2 = ShrSet_reg_2; // @[system.scala 118:23]
  assign rules_16_io_ExGntd_in = ExGntd_reg; // @[system.scala 119:23]
  assign rules_16_io_CurCmd_in = CurCmd_reg; // @[system.scala 120:23]
  assign rules_16_io_CurPtr_in = CurPtr_reg; // @[system.scala 121:23]
  assign rules_16_io_MemData_in = MemData_reg; // @[system.scala 122:24]
  assign rules_16_io_AuxData_in = AuxData_reg; // @[system.scala 123:24]
  assign rules_17_io_Cache_in_0_State = Cache_reg_0_State; // @[system.scala 113:22]
  assign rules_17_io_Cache_in_0_Data = Cache_reg_0_Data; // @[system.scala 113:22]
  assign rules_17_io_Cache_in_1_State = Cache_reg_1_State; // @[system.scala 113:22]
  assign rules_17_io_Cache_in_1_Data = Cache_reg_1_Data; // @[system.scala 113:22]
  assign rules_17_io_Cache_in_2_State = Cache_reg_2_State; // @[system.scala 113:22]
  assign rules_17_io_Cache_in_2_Data = Cache_reg_2_Data; // @[system.scala 113:22]
  assign rules_17_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[system.scala 114:22]
  assign rules_17_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[system.scala 114:22]
  assign rules_17_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[system.scala 114:22]
  assign rules_17_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[system.scala 114:22]
  assign rules_17_io_Chan1_in_2_Cmd = Chan1_reg_2_Cmd; // @[system.scala 114:22]
  assign rules_17_io_Chan1_in_2_Data = Chan1_reg_2_Data; // @[system.scala 114:22]
  assign rules_17_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[system.scala 115:22]
  assign rules_17_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[system.scala 115:22]
  assign rules_17_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[system.scala 115:22]
  assign rules_17_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[system.scala 115:22]
  assign rules_17_io_Chan2_in_2_Cmd = Chan2_reg_2_Cmd; // @[system.scala 115:22]
  assign rules_17_io_Chan2_in_2_Data = Chan2_reg_2_Data; // @[system.scala 115:22]
  assign rules_17_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[system.scala 116:22]
  assign rules_17_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[system.scala 116:22]
  assign rules_17_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[system.scala 116:22]
  assign rules_17_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[system.scala 116:22]
  assign rules_17_io_Chan3_in_2_Cmd = Chan3_reg_2_Cmd; // @[system.scala 116:22]
  assign rules_17_io_Chan3_in_2_Data = Chan3_reg_2_Data; // @[system.scala 116:22]
  assign rules_17_io_InvSet_in_0 = InvSet_reg_0; // @[system.scala 117:23]
  assign rules_17_io_InvSet_in_1 = InvSet_reg_1; // @[system.scala 117:23]
  assign rules_17_io_InvSet_in_2 = InvSet_reg_2; // @[system.scala 117:23]
  assign rules_17_io_ShrSet_in_0 = ShrSet_reg_0; // @[system.scala 118:23]
  assign rules_17_io_ShrSet_in_1 = ShrSet_reg_1; // @[system.scala 118:23]
  assign rules_17_io_ShrSet_in_2 = ShrSet_reg_2; // @[system.scala 118:23]
  assign rules_17_io_ExGntd_in = ExGntd_reg; // @[system.scala 119:23]
  assign rules_17_io_CurCmd_in = CurCmd_reg; // @[system.scala 120:23]
  assign rules_17_io_CurPtr_in = CurPtr_reg; // @[system.scala 121:23]
  assign rules_17_io_MemData_in = MemData_reg; // @[system.scala 122:24]
  assign rules_17_io_AuxData_in = AuxData_reg; // @[system.scala 123:24]
  assign rules_18_io_en_r = io_en_a == 5'h12; // @[system.scala 124:27]
  assign rules_18_io_Cache_in_0_State = Cache_reg_0_State; // @[system.scala 113:22]
  assign rules_18_io_Cache_in_0_Data = Cache_reg_0_Data; // @[system.scala 113:22]
  assign rules_18_io_Cache_in_1_State = Cache_reg_1_State; // @[system.scala 113:22]
  assign rules_18_io_Cache_in_1_Data = Cache_reg_1_Data; // @[system.scala 113:22]
  assign rules_18_io_Cache_in_2_State = Cache_reg_2_State; // @[system.scala 113:22]
  assign rules_18_io_Cache_in_2_Data = Cache_reg_2_Data; // @[system.scala 113:22]
  assign rules_18_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[system.scala 114:22]
  assign rules_18_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[system.scala 114:22]
  assign rules_18_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[system.scala 114:22]
  assign rules_18_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[system.scala 114:22]
  assign rules_18_io_Chan1_in_2_Cmd = Chan1_reg_2_Cmd; // @[system.scala 114:22]
  assign rules_18_io_Chan1_in_2_Data = Chan1_reg_2_Data; // @[system.scala 114:22]
  assign rules_18_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[system.scala 115:22]
  assign rules_18_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[system.scala 115:22]
  assign rules_18_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[system.scala 115:22]
  assign rules_18_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[system.scala 115:22]
  assign rules_18_io_Chan2_in_2_Cmd = Chan2_reg_2_Cmd; // @[system.scala 115:22]
  assign rules_18_io_Chan2_in_2_Data = Chan2_reg_2_Data; // @[system.scala 115:22]
  assign rules_18_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[system.scala 116:22]
  assign rules_18_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[system.scala 116:22]
  assign rules_18_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[system.scala 116:22]
  assign rules_18_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[system.scala 116:22]
  assign rules_18_io_Chan3_in_2_Cmd = Chan3_reg_2_Cmd; // @[system.scala 116:22]
  assign rules_18_io_Chan3_in_2_Data = Chan3_reg_2_Data; // @[system.scala 116:22]
  assign rules_18_io_InvSet_in_0 = InvSet_reg_0; // @[system.scala 117:23]
  assign rules_18_io_InvSet_in_1 = InvSet_reg_1; // @[system.scala 117:23]
  assign rules_18_io_InvSet_in_2 = InvSet_reg_2; // @[system.scala 117:23]
  assign rules_18_io_ShrSet_in_0 = ShrSet_reg_0; // @[system.scala 118:23]
  assign rules_18_io_ShrSet_in_1 = ShrSet_reg_1; // @[system.scala 118:23]
  assign rules_18_io_ShrSet_in_2 = ShrSet_reg_2; // @[system.scala 118:23]
  assign rules_18_io_ExGntd_in = ExGntd_reg; // @[system.scala 119:23]
  assign rules_18_io_CurCmd_in = CurCmd_reg; // @[system.scala 120:23]
  assign rules_18_io_CurPtr_in = CurPtr_reg; // @[system.scala 121:23]
  assign rules_18_io_MemData_in = MemData_reg; // @[system.scala 122:24]
  assign rules_18_io_AuxData_in = AuxData_reg; // @[system.scala 123:24]
  assign rules_19_io_en_r = io_en_a == 5'h13; // @[system.scala 124:27]
  assign rules_19_io_Cache_in_0_State = Cache_reg_0_State; // @[system.scala 113:22]
  assign rules_19_io_Cache_in_0_Data = Cache_reg_0_Data; // @[system.scala 113:22]
  assign rules_19_io_Cache_in_1_State = Cache_reg_1_State; // @[system.scala 113:22]
  assign rules_19_io_Cache_in_1_Data = Cache_reg_1_Data; // @[system.scala 113:22]
  assign rules_19_io_Cache_in_2_State = Cache_reg_2_State; // @[system.scala 113:22]
  assign rules_19_io_Cache_in_2_Data = Cache_reg_2_Data; // @[system.scala 113:22]
  assign rules_19_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[system.scala 114:22]
  assign rules_19_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[system.scala 114:22]
  assign rules_19_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[system.scala 114:22]
  assign rules_19_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[system.scala 114:22]
  assign rules_19_io_Chan1_in_2_Cmd = Chan1_reg_2_Cmd; // @[system.scala 114:22]
  assign rules_19_io_Chan1_in_2_Data = Chan1_reg_2_Data; // @[system.scala 114:22]
  assign rules_19_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[system.scala 115:22]
  assign rules_19_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[system.scala 115:22]
  assign rules_19_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[system.scala 115:22]
  assign rules_19_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[system.scala 115:22]
  assign rules_19_io_Chan2_in_2_Cmd = Chan2_reg_2_Cmd; // @[system.scala 115:22]
  assign rules_19_io_Chan2_in_2_Data = Chan2_reg_2_Data; // @[system.scala 115:22]
  assign rules_19_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[system.scala 116:22]
  assign rules_19_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[system.scala 116:22]
  assign rules_19_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[system.scala 116:22]
  assign rules_19_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[system.scala 116:22]
  assign rules_19_io_Chan3_in_2_Cmd = Chan3_reg_2_Cmd; // @[system.scala 116:22]
  assign rules_19_io_Chan3_in_2_Data = Chan3_reg_2_Data; // @[system.scala 116:22]
  assign rules_19_io_InvSet_in_0 = InvSet_reg_0; // @[system.scala 117:23]
  assign rules_19_io_InvSet_in_1 = InvSet_reg_1; // @[system.scala 117:23]
  assign rules_19_io_InvSet_in_2 = InvSet_reg_2; // @[system.scala 117:23]
  assign rules_19_io_ShrSet_in_0 = ShrSet_reg_0; // @[system.scala 118:23]
  assign rules_19_io_ShrSet_in_1 = ShrSet_reg_1; // @[system.scala 118:23]
  assign rules_19_io_ShrSet_in_2 = ShrSet_reg_2; // @[system.scala 118:23]
  assign rules_19_io_ExGntd_in = ExGntd_reg; // @[system.scala 119:23]
  assign rules_19_io_CurCmd_in = CurCmd_reg; // @[system.scala 120:23]
  assign rules_19_io_CurPtr_in = CurPtr_reg; // @[system.scala 121:23]
  assign rules_19_io_MemData_in = MemData_reg; // @[system.scala 122:24]
  assign rules_19_io_AuxData_in = AuxData_reg; // @[system.scala 123:24]
  assign rules_20_io_en_r = io_en_a == 5'h14; // @[system.scala 124:27]
  assign rules_20_io_Cache_in_0_State = Cache_reg_0_State; // @[system.scala 113:22]
  assign rules_20_io_Cache_in_0_Data = Cache_reg_0_Data; // @[system.scala 113:22]
  assign rules_20_io_Cache_in_1_State = Cache_reg_1_State; // @[system.scala 113:22]
  assign rules_20_io_Cache_in_1_Data = Cache_reg_1_Data; // @[system.scala 113:22]
  assign rules_20_io_Cache_in_2_State = Cache_reg_2_State; // @[system.scala 113:22]
  assign rules_20_io_Cache_in_2_Data = Cache_reg_2_Data; // @[system.scala 113:22]
  assign rules_20_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[system.scala 114:22]
  assign rules_20_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[system.scala 114:22]
  assign rules_20_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[system.scala 114:22]
  assign rules_20_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[system.scala 114:22]
  assign rules_20_io_Chan1_in_2_Cmd = Chan1_reg_2_Cmd; // @[system.scala 114:22]
  assign rules_20_io_Chan1_in_2_Data = Chan1_reg_2_Data; // @[system.scala 114:22]
  assign rules_20_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[system.scala 115:22]
  assign rules_20_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[system.scala 115:22]
  assign rules_20_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[system.scala 115:22]
  assign rules_20_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[system.scala 115:22]
  assign rules_20_io_Chan2_in_2_Cmd = Chan2_reg_2_Cmd; // @[system.scala 115:22]
  assign rules_20_io_Chan2_in_2_Data = Chan2_reg_2_Data; // @[system.scala 115:22]
  assign rules_20_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[system.scala 116:22]
  assign rules_20_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[system.scala 116:22]
  assign rules_20_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[system.scala 116:22]
  assign rules_20_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[system.scala 116:22]
  assign rules_20_io_Chan3_in_2_Cmd = Chan3_reg_2_Cmd; // @[system.scala 116:22]
  assign rules_20_io_Chan3_in_2_Data = Chan3_reg_2_Data; // @[system.scala 116:22]
  assign rules_20_io_InvSet_in_0 = InvSet_reg_0; // @[system.scala 117:23]
  assign rules_20_io_InvSet_in_1 = InvSet_reg_1; // @[system.scala 117:23]
  assign rules_20_io_InvSet_in_2 = InvSet_reg_2; // @[system.scala 117:23]
  assign rules_20_io_ShrSet_in_0 = ShrSet_reg_0; // @[system.scala 118:23]
  assign rules_20_io_ShrSet_in_1 = ShrSet_reg_1; // @[system.scala 118:23]
  assign rules_20_io_ShrSet_in_2 = ShrSet_reg_2; // @[system.scala 118:23]
  assign rules_20_io_ExGntd_in = ExGntd_reg; // @[system.scala 119:23]
  assign rules_20_io_CurCmd_in = CurCmd_reg; // @[system.scala 120:23]
  assign rules_20_io_CurPtr_in = CurPtr_reg; // @[system.scala 121:23]
  assign rules_20_io_MemData_in = MemData_reg; // @[system.scala 122:24]
  assign rules_20_io_AuxData_in = AuxData_reg; // @[system.scala 123:24]
  assign rules_21_io_en_r = io_en_a == 5'h15; // @[system.scala 124:27]
  assign rules_21_io_Cache_in_0_State = Cache_reg_0_State; // @[system.scala 113:22]
  assign rules_21_io_Cache_in_0_Data = Cache_reg_0_Data; // @[system.scala 113:22]
  assign rules_21_io_Cache_in_1_State = Cache_reg_1_State; // @[system.scala 113:22]
  assign rules_21_io_Cache_in_1_Data = Cache_reg_1_Data; // @[system.scala 113:22]
  assign rules_21_io_Cache_in_2_State = Cache_reg_2_State; // @[system.scala 113:22]
  assign rules_21_io_Cache_in_2_Data = Cache_reg_2_Data; // @[system.scala 113:22]
  assign rules_21_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[system.scala 114:22]
  assign rules_21_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[system.scala 114:22]
  assign rules_21_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[system.scala 114:22]
  assign rules_21_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[system.scala 114:22]
  assign rules_21_io_Chan1_in_2_Cmd = Chan1_reg_2_Cmd; // @[system.scala 114:22]
  assign rules_21_io_Chan1_in_2_Data = Chan1_reg_2_Data; // @[system.scala 114:22]
  assign rules_21_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[system.scala 115:22]
  assign rules_21_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[system.scala 115:22]
  assign rules_21_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[system.scala 115:22]
  assign rules_21_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[system.scala 115:22]
  assign rules_21_io_Chan2_in_2_Cmd = Chan2_reg_2_Cmd; // @[system.scala 115:22]
  assign rules_21_io_Chan2_in_2_Data = Chan2_reg_2_Data; // @[system.scala 115:22]
  assign rules_21_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[system.scala 116:22]
  assign rules_21_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[system.scala 116:22]
  assign rules_21_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[system.scala 116:22]
  assign rules_21_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[system.scala 116:22]
  assign rules_21_io_Chan3_in_2_Cmd = Chan3_reg_2_Cmd; // @[system.scala 116:22]
  assign rules_21_io_Chan3_in_2_Data = Chan3_reg_2_Data; // @[system.scala 116:22]
  assign rules_21_io_InvSet_in_0 = InvSet_reg_0; // @[system.scala 117:23]
  assign rules_21_io_InvSet_in_1 = InvSet_reg_1; // @[system.scala 117:23]
  assign rules_21_io_InvSet_in_2 = InvSet_reg_2; // @[system.scala 117:23]
  assign rules_21_io_ShrSet_in_0 = ShrSet_reg_0; // @[system.scala 118:23]
  assign rules_21_io_ShrSet_in_1 = ShrSet_reg_1; // @[system.scala 118:23]
  assign rules_21_io_ShrSet_in_2 = ShrSet_reg_2; // @[system.scala 118:23]
  assign rules_21_io_ExGntd_in = ExGntd_reg; // @[system.scala 119:23]
  assign rules_21_io_CurCmd_in = CurCmd_reg; // @[system.scala 120:23]
  assign rules_21_io_CurPtr_in = CurPtr_reg; // @[system.scala 121:23]
  assign rules_21_io_MemData_in = MemData_reg; // @[system.scala 122:24]
  assign rules_21_io_AuxData_in = AuxData_reg; // @[system.scala 123:24]
  assign rules_22_io_en_r = io_en_a == 5'h16; // @[system.scala 124:27]
  assign rules_22_io_Cache_in_0_State = Cache_reg_0_State; // @[system.scala 113:22]
  assign rules_22_io_Cache_in_0_Data = Cache_reg_0_Data; // @[system.scala 113:22]
  assign rules_22_io_Cache_in_1_State = Cache_reg_1_State; // @[system.scala 113:22]
  assign rules_22_io_Cache_in_1_Data = Cache_reg_1_Data; // @[system.scala 113:22]
  assign rules_22_io_Cache_in_2_State = Cache_reg_2_State; // @[system.scala 113:22]
  assign rules_22_io_Cache_in_2_Data = Cache_reg_2_Data; // @[system.scala 113:22]
  assign rules_22_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[system.scala 114:22]
  assign rules_22_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[system.scala 114:22]
  assign rules_22_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[system.scala 114:22]
  assign rules_22_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[system.scala 114:22]
  assign rules_22_io_Chan1_in_2_Cmd = Chan1_reg_2_Cmd; // @[system.scala 114:22]
  assign rules_22_io_Chan1_in_2_Data = Chan1_reg_2_Data; // @[system.scala 114:22]
  assign rules_22_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[system.scala 115:22]
  assign rules_22_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[system.scala 115:22]
  assign rules_22_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[system.scala 115:22]
  assign rules_22_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[system.scala 115:22]
  assign rules_22_io_Chan2_in_2_Cmd = Chan2_reg_2_Cmd; // @[system.scala 115:22]
  assign rules_22_io_Chan2_in_2_Data = Chan2_reg_2_Data; // @[system.scala 115:22]
  assign rules_22_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[system.scala 116:22]
  assign rules_22_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[system.scala 116:22]
  assign rules_22_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[system.scala 116:22]
  assign rules_22_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[system.scala 116:22]
  assign rules_22_io_Chan3_in_2_Cmd = Chan3_reg_2_Cmd; // @[system.scala 116:22]
  assign rules_22_io_Chan3_in_2_Data = Chan3_reg_2_Data; // @[system.scala 116:22]
  assign rules_22_io_InvSet_in_0 = InvSet_reg_0; // @[system.scala 117:23]
  assign rules_22_io_InvSet_in_1 = InvSet_reg_1; // @[system.scala 117:23]
  assign rules_22_io_InvSet_in_2 = InvSet_reg_2; // @[system.scala 117:23]
  assign rules_22_io_ShrSet_in_0 = ShrSet_reg_0; // @[system.scala 118:23]
  assign rules_22_io_ShrSet_in_1 = ShrSet_reg_1; // @[system.scala 118:23]
  assign rules_22_io_ShrSet_in_2 = ShrSet_reg_2; // @[system.scala 118:23]
  assign rules_22_io_ExGntd_in = ExGntd_reg; // @[system.scala 119:23]
  assign rules_22_io_CurCmd_in = CurCmd_reg; // @[system.scala 120:23]
  assign rules_22_io_CurPtr_in = CurPtr_reg; // @[system.scala 121:23]
  assign rules_22_io_MemData_in = MemData_reg; // @[system.scala 122:24]
  assign rules_22_io_AuxData_in = AuxData_reg; // @[system.scala 123:24]
  assign rules_23_io_en_r = io_en_a == 5'h17; // @[system.scala 124:27]
  assign rules_23_io_Cache_in_0_State = Cache_reg_0_State; // @[system.scala 113:22]
  assign rules_23_io_Cache_in_0_Data = Cache_reg_0_Data; // @[system.scala 113:22]
  assign rules_23_io_Cache_in_1_State = Cache_reg_1_State; // @[system.scala 113:22]
  assign rules_23_io_Cache_in_1_Data = Cache_reg_1_Data; // @[system.scala 113:22]
  assign rules_23_io_Cache_in_2_State = Cache_reg_2_State; // @[system.scala 113:22]
  assign rules_23_io_Cache_in_2_Data = Cache_reg_2_Data; // @[system.scala 113:22]
  assign rules_23_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[system.scala 114:22]
  assign rules_23_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[system.scala 114:22]
  assign rules_23_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[system.scala 114:22]
  assign rules_23_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[system.scala 114:22]
  assign rules_23_io_Chan1_in_2_Cmd = Chan1_reg_2_Cmd; // @[system.scala 114:22]
  assign rules_23_io_Chan1_in_2_Data = Chan1_reg_2_Data; // @[system.scala 114:22]
  assign rules_23_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[system.scala 115:22]
  assign rules_23_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[system.scala 115:22]
  assign rules_23_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[system.scala 115:22]
  assign rules_23_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[system.scala 115:22]
  assign rules_23_io_Chan2_in_2_Cmd = Chan2_reg_2_Cmd; // @[system.scala 115:22]
  assign rules_23_io_Chan2_in_2_Data = Chan2_reg_2_Data; // @[system.scala 115:22]
  assign rules_23_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[system.scala 116:22]
  assign rules_23_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[system.scala 116:22]
  assign rules_23_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[system.scala 116:22]
  assign rules_23_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[system.scala 116:22]
  assign rules_23_io_Chan3_in_2_Cmd = Chan3_reg_2_Cmd; // @[system.scala 116:22]
  assign rules_23_io_Chan3_in_2_Data = Chan3_reg_2_Data; // @[system.scala 116:22]
  assign rules_23_io_InvSet_in_0 = InvSet_reg_0; // @[system.scala 117:23]
  assign rules_23_io_InvSet_in_1 = InvSet_reg_1; // @[system.scala 117:23]
  assign rules_23_io_InvSet_in_2 = InvSet_reg_2; // @[system.scala 117:23]
  assign rules_23_io_ShrSet_in_0 = ShrSet_reg_0; // @[system.scala 118:23]
  assign rules_23_io_ShrSet_in_1 = ShrSet_reg_1; // @[system.scala 118:23]
  assign rules_23_io_ShrSet_in_2 = ShrSet_reg_2; // @[system.scala 118:23]
  assign rules_23_io_ExGntd_in = ExGntd_reg; // @[system.scala 119:23]
  assign rules_23_io_CurCmd_in = CurCmd_reg; // @[system.scala 120:23]
  assign rules_23_io_CurPtr_in = CurPtr_reg; // @[system.scala 121:23]
  assign rules_23_io_MemData_in = MemData_reg; // @[system.scala 122:24]
  assign rules_23_io_AuxData_in = AuxData_reg; // @[system.scala 123:24]
  assign rules_24_io_en_r = io_en_a == 5'h18; // @[system.scala 124:27]
  assign rules_24_io_Cache_in_0_State = Cache_reg_0_State; // @[system.scala 113:22]
  assign rules_24_io_Cache_in_0_Data = Cache_reg_0_Data; // @[system.scala 113:22]
  assign rules_24_io_Cache_in_1_State = Cache_reg_1_State; // @[system.scala 113:22]
  assign rules_24_io_Cache_in_1_Data = Cache_reg_1_Data; // @[system.scala 113:22]
  assign rules_24_io_Cache_in_2_State = Cache_reg_2_State; // @[system.scala 113:22]
  assign rules_24_io_Cache_in_2_Data = Cache_reg_2_Data; // @[system.scala 113:22]
  assign rules_24_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[system.scala 114:22]
  assign rules_24_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[system.scala 114:22]
  assign rules_24_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[system.scala 114:22]
  assign rules_24_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[system.scala 114:22]
  assign rules_24_io_Chan1_in_2_Cmd = Chan1_reg_2_Cmd; // @[system.scala 114:22]
  assign rules_24_io_Chan1_in_2_Data = Chan1_reg_2_Data; // @[system.scala 114:22]
  assign rules_24_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[system.scala 115:22]
  assign rules_24_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[system.scala 115:22]
  assign rules_24_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[system.scala 115:22]
  assign rules_24_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[system.scala 115:22]
  assign rules_24_io_Chan2_in_2_Cmd = Chan2_reg_2_Cmd; // @[system.scala 115:22]
  assign rules_24_io_Chan2_in_2_Data = Chan2_reg_2_Data; // @[system.scala 115:22]
  assign rules_24_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[system.scala 116:22]
  assign rules_24_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[system.scala 116:22]
  assign rules_24_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[system.scala 116:22]
  assign rules_24_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[system.scala 116:22]
  assign rules_24_io_Chan3_in_2_Cmd = Chan3_reg_2_Cmd; // @[system.scala 116:22]
  assign rules_24_io_Chan3_in_2_Data = Chan3_reg_2_Data; // @[system.scala 116:22]
  assign rules_24_io_InvSet_in_0 = InvSet_reg_0; // @[system.scala 117:23]
  assign rules_24_io_InvSet_in_1 = InvSet_reg_1; // @[system.scala 117:23]
  assign rules_24_io_InvSet_in_2 = InvSet_reg_2; // @[system.scala 117:23]
  assign rules_24_io_ShrSet_in_0 = ShrSet_reg_0; // @[system.scala 118:23]
  assign rules_24_io_ShrSet_in_1 = ShrSet_reg_1; // @[system.scala 118:23]
  assign rules_24_io_ShrSet_in_2 = ShrSet_reg_2; // @[system.scala 118:23]
  assign rules_24_io_ExGntd_in = ExGntd_reg; // @[system.scala 119:23]
  assign rules_24_io_CurCmd_in = CurCmd_reg; // @[system.scala 120:23]
  assign rules_24_io_CurPtr_in = CurPtr_reg; // @[system.scala 121:23]
  assign rules_24_io_MemData_in = MemData_reg; // @[system.scala 122:24]
  assign rules_24_io_AuxData_in = AuxData_reg; // @[system.scala 123:24]
  assign rules_25_io_en_r = io_en_a == 5'h19; // @[system.scala 124:27]
  assign rules_25_io_Cache_in_0_State = Cache_reg_0_State; // @[system.scala 113:22]
  assign rules_25_io_Cache_in_0_Data = Cache_reg_0_Data; // @[system.scala 113:22]
  assign rules_25_io_Cache_in_1_State = Cache_reg_1_State; // @[system.scala 113:22]
  assign rules_25_io_Cache_in_1_Data = Cache_reg_1_Data; // @[system.scala 113:22]
  assign rules_25_io_Cache_in_2_State = Cache_reg_2_State; // @[system.scala 113:22]
  assign rules_25_io_Cache_in_2_Data = Cache_reg_2_Data; // @[system.scala 113:22]
  assign rules_25_io_Chan1_in_0_Cmd = Chan1_reg_0_Cmd; // @[system.scala 114:22]
  assign rules_25_io_Chan1_in_0_Data = Chan1_reg_0_Data; // @[system.scala 114:22]
  assign rules_25_io_Chan1_in_1_Cmd = Chan1_reg_1_Cmd; // @[system.scala 114:22]
  assign rules_25_io_Chan1_in_1_Data = Chan1_reg_1_Data; // @[system.scala 114:22]
  assign rules_25_io_Chan1_in_2_Cmd = Chan1_reg_2_Cmd; // @[system.scala 114:22]
  assign rules_25_io_Chan1_in_2_Data = Chan1_reg_2_Data; // @[system.scala 114:22]
  assign rules_25_io_Chan2_in_0_Cmd = Chan2_reg_0_Cmd; // @[system.scala 115:22]
  assign rules_25_io_Chan2_in_0_Data = Chan2_reg_0_Data; // @[system.scala 115:22]
  assign rules_25_io_Chan2_in_1_Cmd = Chan2_reg_1_Cmd; // @[system.scala 115:22]
  assign rules_25_io_Chan2_in_1_Data = Chan2_reg_1_Data; // @[system.scala 115:22]
  assign rules_25_io_Chan2_in_2_Cmd = Chan2_reg_2_Cmd; // @[system.scala 115:22]
  assign rules_25_io_Chan2_in_2_Data = Chan2_reg_2_Data; // @[system.scala 115:22]
  assign rules_25_io_Chan3_in_0_Cmd = Chan3_reg_0_Cmd; // @[system.scala 116:22]
  assign rules_25_io_Chan3_in_0_Data = Chan3_reg_0_Data; // @[system.scala 116:22]
  assign rules_25_io_Chan3_in_1_Cmd = Chan3_reg_1_Cmd; // @[system.scala 116:22]
  assign rules_25_io_Chan3_in_1_Data = Chan3_reg_1_Data; // @[system.scala 116:22]
  assign rules_25_io_Chan3_in_2_Cmd = Chan3_reg_2_Cmd; // @[system.scala 116:22]
  assign rules_25_io_Chan3_in_2_Data = Chan3_reg_2_Data; // @[system.scala 116:22]
  assign rules_25_io_InvSet_in_0 = InvSet_reg_0; // @[system.scala 117:23]
  assign rules_25_io_InvSet_in_1 = InvSet_reg_1; // @[system.scala 117:23]
  assign rules_25_io_InvSet_in_2 = InvSet_reg_2; // @[system.scala 117:23]
  assign rules_25_io_ShrSet_in_0 = ShrSet_reg_0; // @[system.scala 118:23]
  assign rules_25_io_ShrSet_in_1 = ShrSet_reg_1; // @[system.scala 118:23]
  assign rules_25_io_ShrSet_in_2 = ShrSet_reg_2; // @[system.scala 118:23]
  assign rules_25_io_ExGntd_in = ExGntd_reg; // @[system.scala 119:23]
  assign rules_25_io_CurCmd_in = CurCmd_reg; // @[system.scala 120:23]
  assign rules_25_io_CurPtr_in = CurPtr_reg; // @[system.scala 121:23]
  assign rules_25_io_MemData_in = MemData_reg; // @[system.scala 122:24]
  assign rules_25_io_AuxData_in = AuxData_reg; // @[system.scala 123:24]
  always @(posedge clock) begin
    if (reset) begin // @[system.scala 23:24]
      Cache_reg_0_State <= 2'h0; // @[system.scala 23:24]
    end else if (_T_50) begin // @[system.scala 125:21]
      Cache_reg_0_State <= rules_25_io_Cache_out_0_State; // @[system.scala 126:11]
    end else if (_T_48) begin // @[system.scala 125:21]
      Cache_reg_0_State <= rules_24_io_Cache_out_0_State; // @[system.scala 126:11]
    end else if (_T_46) begin // @[system.scala 125:21]
      Cache_reg_0_State <= rules_23_io_Cache_out_0_State; // @[system.scala 126:11]
    end else begin
      Cache_reg_0_State <= _GEN_770;
    end
    if (reset) begin // @[system.scala 23:24]
      Cache_reg_0_Data <= 2'h0; // @[system.scala 23:24]
    end else if (_T_50) begin // @[system.scala 125:21]
      Cache_reg_0_Data <= rules_25_io_Cache_out_0_Data; // @[system.scala 126:11]
    end else if (_T_48) begin // @[system.scala 125:21]
      Cache_reg_0_Data <= rules_24_io_Cache_out_0_Data; // @[system.scala 126:11]
    end else if (_T_46) begin // @[system.scala 125:21]
      Cache_reg_0_Data <= rules_23_io_Cache_out_0_Data; // @[system.scala 126:11]
    end else begin
      Cache_reg_0_Data <= _GEN_771;
    end
    if (reset) begin // @[system.scala 23:24]
      Cache_reg_1_State <= 2'h0; // @[system.scala 23:24]
    end else if (_T_50) begin // @[system.scala 125:21]
      Cache_reg_1_State <= rules_25_io_Cache_out_1_State; // @[system.scala 126:11]
    end else if (_T_48) begin // @[system.scala 125:21]
      Cache_reg_1_State <= rules_24_io_Cache_out_1_State; // @[system.scala 126:11]
    end else if (_T_46) begin // @[system.scala 125:21]
      Cache_reg_1_State <= rules_23_io_Cache_out_1_State; // @[system.scala 126:11]
    end else begin
      Cache_reg_1_State <= _GEN_772;
    end
    if (reset) begin // @[system.scala 23:24]
      Cache_reg_1_Data <= 2'h0; // @[system.scala 23:24]
    end else if (_T_50) begin // @[system.scala 125:21]
      Cache_reg_1_Data <= rules_25_io_Cache_out_1_Data; // @[system.scala 126:11]
    end else if (_T_48) begin // @[system.scala 125:21]
      Cache_reg_1_Data <= rules_24_io_Cache_out_1_Data; // @[system.scala 126:11]
    end else if (_T_46) begin // @[system.scala 125:21]
      Cache_reg_1_Data <= rules_23_io_Cache_out_1_Data; // @[system.scala 126:11]
    end else begin
      Cache_reg_1_Data <= _GEN_773;
    end
    if (reset) begin // @[system.scala 23:24]
      Cache_reg_2_State <= 2'h0; // @[system.scala 23:24]
    end else if (_T_50) begin // @[system.scala 125:21]
      Cache_reg_2_State <= rules_25_io_Cache_out_2_State; // @[system.scala 126:11]
    end else if (_T_48) begin // @[system.scala 125:21]
      Cache_reg_2_State <= rules_24_io_Cache_out_2_State; // @[system.scala 126:11]
    end else if (_T_46) begin // @[system.scala 125:21]
      Cache_reg_2_State <= rules_23_io_Cache_out_2_State; // @[system.scala 126:11]
    end else begin
      Cache_reg_2_State <= _GEN_774;
    end
    if (reset) begin // @[system.scala 23:24]
      Cache_reg_2_Data <= 2'h0; // @[system.scala 23:24]
    end else if (_T_50) begin // @[system.scala 125:21]
      Cache_reg_2_Data <= rules_25_io_Cache_out_2_Data; // @[system.scala 126:11]
    end else if (_T_48) begin // @[system.scala 125:21]
      Cache_reg_2_Data <= rules_24_io_Cache_out_2_Data; // @[system.scala 126:11]
    end else if (_T_46) begin // @[system.scala 125:21]
      Cache_reg_2_Data <= rules_23_io_Cache_out_2_Data; // @[system.scala 126:11]
    end else begin
      Cache_reg_2_Data <= _GEN_775;
    end
    if (reset) begin // @[system.scala 26:24]
      Chan1_reg_0_Cmd <= 3'h0; // @[system.scala 26:24]
    end else if (_T_50) begin // @[system.scala 125:21]
      Chan1_reg_0_Cmd <= rules_25_io_Chan1_out_0_Cmd; // @[system.scala 127:11]
    end else if (_T_48) begin // @[system.scala 125:21]
      Chan1_reg_0_Cmd <= rules_24_io_Chan1_out_0_Cmd; // @[system.scala 127:11]
    end else if (_T_46) begin // @[system.scala 125:21]
      Chan1_reg_0_Cmd <= rules_23_io_Chan1_out_0_Cmd; // @[system.scala 127:11]
    end else begin
      Chan1_reg_0_Cmd <= _GEN_776;
    end
    if (reset) begin // @[system.scala 26:24]
      Chan1_reg_0_Data <= 2'h0; // @[system.scala 26:24]
    end else if (_T_50) begin // @[system.scala 125:21]
      Chan1_reg_0_Data <= rules_25_io_Chan1_out_0_Data; // @[system.scala 127:11]
    end else if (_T_48) begin // @[system.scala 125:21]
      Chan1_reg_0_Data <= rules_24_io_Chan1_out_0_Data; // @[system.scala 127:11]
    end else if (_T_46) begin // @[system.scala 125:21]
      Chan1_reg_0_Data <= rules_23_io_Chan1_out_0_Data; // @[system.scala 127:11]
    end else begin
      Chan1_reg_0_Data <= _GEN_777;
    end
    if (reset) begin // @[system.scala 26:24]
      Chan1_reg_1_Cmd <= 3'h0; // @[system.scala 26:24]
    end else if (_T_50) begin // @[system.scala 125:21]
      Chan1_reg_1_Cmd <= rules_25_io_Chan1_out_1_Cmd; // @[system.scala 127:11]
    end else if (_T_48) begin // @[system.scala 125:21]
      Chan1_reg_1_Cmd <= rules_24_io_Chan1_out_1_Cmd; // @[system.scala 127:11]
    end else if (_T_46) begin // @[system.scala 125:21]
      Chan1_reg_1_Cmd <= rules_23_io_Chan1_out_1_Cmd; // @[system.scala 127:11]
    end else begin
      Chan1_reg_1_Cmd <= _GEN_778;
    end
    if (reset) begin // @[system.scala 26:24]
      Chan1_reg_1_Data <= 2'h0; // @[system.scala 26:24]
    end else if (_T_50) begin // @[system.scala 125:21]
      Chan1_reg_1_Data <= rules_25_io_Chan1_out_1_Data; // @[system.scala 127:11]
    end else if (_T_48) begin // @[system.scala 125:21]
      Chan1_reg_1_Data <= rules_24_io_Chan1_out_1_Data; // @[system.scala 127:11]
    end else if (_T_46) begin // @[system.scala 125:21]
      Chan1_reg_1_Data <= rules_23_io_Chan1_out_1_Data; // @[system.scala 127:11]
    end else begin
      Chan1_reg_1_Data <= _GEN_779;
    end
    if (reset) begin // @[system.scala 26:24]
      Chan1_reg_2_Cmd <= 3'h0; // @[system.scala 26:24]
    end else if (_T_50) begin // @[system.scala 125:21]
      Chan1_reg_2_Cmd <= rules_25_io_Chan1_out_2_Cmd; // @[system.scala 127:11]
    end else if (_T_48) begin // @[system.scala 125:21]
      Chan1_reg_2_Cmd <= rules_24_io_Chan1_out_2_Cmd; // @[system.scala 127:11]
    end else if (_T_46) begin // @[system.scala 125:21]
      Chan1_reg_2_Cmd <= rules_23_io_Chan1_out_2_Cmd; // @[system.scala 127:11]
    end else begin
      Chan1_reg_2_Cmd <= _GEN_780;
    end
    if (reset) begin // @[system.scala 26:24]
      Chan1_reg_2_Data <= 2'h0; // @[system.scala 26:24]
    end else if (_T_50) begin // @[system.scala 125:21]
      Chan1_reg_2_Data <= rules_25_io_Chan1_out_2_Data; // @[system.scala 127:11]
    end else if (_T_48) begin // @[system.scala 125:21]
      Chan1_reg_2_Data <= rules_24_io_Chan1_out_2_Data; // @[system.scala 127:11]
    end else if (_T_46) begin // @[system.scala 125:21]
      Chan1_reg_2_Data <= rules_23_io_Chan1_out_2_Data; // @[system.scala 127:11]
    end else begin
      Chan1_reg_2_Data <= _GEN_781;
    end
    if (reset) begin // @[system.scala 29:24]
      Chan2_reg_0_Cmd <= 3'h0; // @[system.scala 29:24]
    end else if (_T_50) begin // @[system.scala 125:21]
      Chan2_reg_0_Cmd <= rules_25_io_Chan2_out_0_Cmd; // @[system.scala 128:11]
    end else if (_T_48) begin // @[system.scala 125:21]
      Chan2_reg_0_Cmd <= rules_24_io_Chan2_out_0_Cmd; // @[system.scala 128:11]
    end else if (_T_46) begin // @[system.scala 125:21]
      Chan2_reg_0_Cmd <= rules_23_io_Chan2_out_0_Cmd; // @[system.scala 128:11]
    end else begin
      Chan2_reg_0_Cmd <= _GEN_782;
    end
    if (reset) begin // @[system.scala 29:24]
      Chan2_reg_0_Data <= 2'h0; // @[system.scala 29:24]
    end else if (_T_50) begin // @[system.scala 125:21]
      Chan2_reg_0_Data <= rules_25_io_Chan2_out_0_Data; // @[system.scala 128:11]
    end else if (_T_48) begin // @[system.scala 125:21]
      Chan2_reg_0_Data <= rules_24_io_Chan2_out_0_Data; // @[system.scala 128:11]
    end else if (_T_46) begin // @[system.scala 125:21]
      Chan2_reg_0_Data <= rules_23_io_Chan2_out_0_Data; // @[system.scala 128:11]
    end else begin
      Chan2_reg_0_Data <= _GEN_783;
    end
    if (reset) begin // @[system.scala 29:24]
      Chan2_reg_1_Cmd <= 3'h0; // @[system.scala 29:24]
    end else if (_T_50) begin // @[system.scala 125:21]
      Chan2_reg_1_Cmd <= rules_25_io_Chan2_out_1_Cmd; // @[system.scala 128:11]
    end else if (_T_48) begin // @[system.scala 125:21]
      Chan2_reg_1_Cmd <= rules_24_io_Chan2_out_1_Cmd; // @[system.scala 128:11]
    end else if (_T_46) begin // @[system.scala 125:21]
      Chan2_reg_1_Cmd <= rules_23_io_Chan2_out_1_Cmd; // @[system.scala 128:11]
    end else begin
      Chan2_reg_1_Cmd <= _GEN_784;
    end
    if (reset) begin // @[system.scala 29:24]
      Chan2_reg_1_Data <= 2'h0; // @[system.scala 29:24]
    end else if (_T_50) begin // @[system.scala 125:21]
      Chan2_reg_1_Data <= rules_25_io_Chan2_out_1_Data; // @[system.scala 128:11]
    end else if (_T_48) begin // @[system.scala 125:21]
      Chan2_reg_1_Data <= rules_24_io_Chan2_out_1_Data; // @[system.scala 128:11]
    end else if (_T_46) begin // @[system.scala 125:21]
      Chan2_reg_1_Data <= rules_23_io_Chan2_out_1_Data; // @[system.scala 128:11]
    end else begin
      Chan2_reg_1_Data <= _GEN_785;
    end
    if (reset) begin // @[system.scala 29:24]
      Chan2_reg_2_Cmd <= 3'h0; // @[system.scala 29:24]
    end else if (_T_50) begin // @[system.scala 125:21]
      Chan2_reg_2_Cmd <= rules_25_io_Chan2_out_2_Cmd; // @[system.scala 128:11]
    end else if (_T_48) begin // @[system.scala 125:21]
      Chan2_reg_2_Cmd <= rules_24_io_Chan2_out_2_Cmd; // @[system.scala 128:11]
    end else if (_T_46) begin // @[system.scala 125:21]
      Chan2_reg_2_Cmd <= rules_23_io_Chan2_out_2_Cmd; // @[system.scala 128:11]
    end else begin
      Chan2_reg_2_Cmd <= _GEN_786;
    end
    if (reset) begin // @[system.scala 29:24]
      Chan2_reg_2_Data <= 2'h0; // @[system.scala 29:24]
    end else if (_T_50) begin // @[system.scala 125:21]
      Chan2_reg_2_Data <= rules_25_io_Chan2_out_2_Data; // @[system.scala 128:11]
    end else if (_T_48) begin // @[system.scala 125:21]
      Chan2_reg_2_Data <= rules_24_io_Chan2_out_2_Data; // @[system.scala 128:11]
    end else if (_T_46) begin // @[system.scala 125:21]
      Chan2_reg_2_Data <= rules_23_io_Chan2_out_2_Data; // @[system.scala 128:11]
    end else begin
      Chan2_reg_2_Data <= _GEN_787;
    end
    if (reset) begin // @[system.scala 32:24]
      Chan3_reg_0_Cmd <= 3'h0; // @[system.scala 32:24]
    end else if (_T_50) begin // @[system.scala 125:21]
      Chan3_reg_0_Cmd <= rules_25_io_Chan3_out_0_Cmd; // @[system.scala 129:11]
    end else if (_T_48) begin // @[system.scala 125:21]
      Chan3_reg_0_Cmd <= rules_24_io_Chan3_out_0_Cmd; // @[system.scala 129:11]
    end else if (_T_46) begin // @[system.scala 125:21]
      Chan3_reg_0_Cmd <= rules_23_io_Chan3_out_0_Cmd; // @[system.scala 129:11]
    end else begin
      Chan3_reg_0_Cmd <= _GEN_788;
    end
    if (reset) begin // @[system.scala 32:24]
      Chan3_reg_0_Data <= 2'h0; // @[system.scala 32:24]
    end else if (_T_50) begin // @[system.scala 125:21]
      Chan3_reg_0_Data <= rules_25_io_Chan3_out_0_Data; // @[system.scala 129:11]
    end else if (_T_48) begin // @[system.scala 125:21]
      Chan3_reg_0_Data <= rules_24_io_Chan3_out_0_Data; // @[system.scala 129:11]
    end else if (_T_46) begin // @[system.scala 125:21]
      Chan3_reg_0_Data <= rules_23_io_Chan3_out_0_Data; // @[system.scala 129:11]
    end else begin
      Chan3_reg_0_Data <= _GEN_789;
    end
    if (reset) begin // @[system.scala 32:24]
      Chan3_reg_1_Cmd <= 3'h0; // @[system.scala 32:24]
    end else if (_T_50) begin // @[system.scala 125:21]
      Chan3_reg_1_Cmd <= rules_25_io_Chan3_out_1_Cmd; // @[system.scala 129:11]
    end else if (_T_48) begin // @[system.scala 125:21]
      Chan3_reg_1_Cmd <= rules_24_io_Chan3_out_1_Cmd; // @[system.scala 129:11]
    end else if (_T_46) begin // @[system.scala 125:21]
      Chan3_reg_1_Cmd <= rules_23_io_Chan3_out_1_Cmd; // @[system.scala 129:11]
    end else begin
      Chan3_reg_1_Cmd <= _GEN_790;
    end
    if (reset) begin // @[system.scala 32:24]
      Chan3_reg_1_Data <= 2'h0; // @[system.scala 32:24]
    end else if (_T_50) begin // @[system.scala 125:21]
      Chan3_reg_1_Data <= rules_25_io_Chan3_out_1_Data; // @[system.scala 129:11]
    end else if (_T_48) begin // @[system.scala 125:21]
      Chan3_reg_1_Data <= rules_24_io_Chan3_out_1_Data; // @[system.scala 129:11]
    end else if (_T_46) begin // @[system.scala 125:21]
      Chan3_reg_1_Data <= rules_23_io_Chan3_out_1_Data; // @[system.scala 129:11]
    end else begin
      Chan3_reg_1_Data <= _GEN_791;
    end
    if (reset) begin // @[system.scala 32:24]
      Chan3_reg_2_Cmd <= 3'h0; // @[system.scala 32:24]
    end else if (_T_50) begin // @[system.scala 125:21]
      Chan3_reg_2_Cmd <= rules_25_io_Chan3_out_2_Cmd; // @[system.scala 129:11]
    end else if (_T_48) begin // @[system.scala 125:21]
      Chan3_reg_2_Cmd <= rules_24_io_Chan3_out_2_Cmd; // @[system.scala 129:11]
    end else if (_T_46) begin // @[system.scala 125:21]
      Chan3_reg_2_Cmd <= rules_23_io_Chan3_out_2_Cmd; // @[system.scala 129:11]
    end else begin
      Chan3_reg_2_Cmd <= _GEN_792;
    end
    if (reset) begin // @[system.scala 32:24]
      Chan3_reg_2_Data <= 2'h0; // @[system.scala 32:24]
    end else if (_T_50) begin // @[system.scala 125:21]
      Chan3_reg_2_Data <= rules_25_io_Chan3_out_2_Data; // @[system.scala 129:11]
    end else if (_T_48) begin // @[system.scala 125:21]
      Chan3_reg_2_Data <= rules_24_io_Chan3_out_2_Data; // @[system.scala 129:11]
    end else if (_T_46) begin // @[system.scala 125:21]
      Chan3_reg_2_Data <= rules_23_io_Chan3_out_2_Data; // @[system.scala 129:11]
    end else begin
      Chan3_reg_2_Data <= _GEN_793;
    end
    if (reset) begin // @[system.scala 35:25]
      InvSet_reg_0 <= 1'h0; // @[system.scala 35:25]
    end else if (_T_50) begin // @[system.scala 125:21]
      InvSet_reg_0 <= rules_25_io_InvSet_out_0; // @[system.scala 130:12]
    end else if (_T_48) begin // @[system.scala 125:21]
      InvSet_reg_0 <= rules_24_io_InvSet_out_0; // @[system.scala 130:12]
    end else if (_T_46) begin // @[system.scala 125:21]
      InvSet_reg_0 <= rules_23_io_InvSet_out_0; // @[system.scala 130:12]
    end else begin
      InvSet_reg_0 <= _GEN_794;
    end
    if (reset) begin // @[system.scala 35:25]
      InvSet_reg_1 <= 1'h0; // @[system.scala 35:25]
    end else if (_T_50) begin // @[system.scala 125:21]
      InvSet_reg_1 <= rules_25_io_InvSet_out_1; // @[system.scala 130:12]
    end else if (_T_48) begin // @[system.scala 125:21]
      InvSet_reg_1 <= rules_24_io_InvSet_out_1; // @[system.scala 130:12]
    end else if (_T_46) begin // @[system.scala 125:21]
      InvSet_reg_1 <= rules_23_io_InvSet_out_1; // @[system.scala 130:12]
    end else begin
      InvSet_reg_1 <= _GEN_795;
    end
    if (reset) begin // @[system.scala 35:25]
      InvSet_reg_2 <= 1'h0; // @[system.scala 35:25]
    end else if (_T_50) begin // @[system.scala 125:21]
      InvSet_reg_2 <= rules_25_io_InvSet_out_2; // @[system.scala 130:12]
    end else if (_T_48) begin // @[system.scala 125:21]
      InvSet_reg_2 <= rules_24_io_InvSet_out_2; // @[system.scala 130:12]
    end else if (_T_46) begin // @[system.scala 125:21]
      InvSet_reg_2 <= rules_23_io_InvSet_out_2; // @[system.scala 130:12]
    end else begin
      InvSet_reg_2 <= _GEN_796;
    end
    if (reset) begin // @[system.scala 38:25]
      ShrSet_reg_0 <= 1'h0; // @[system.scala 38:25]
    end else if (_T_50) begin // @[system.scala 125:21]
      ShrSet_reg_0 <= rules_25_io_ShrSet_out_0; // @[system.scala 131:12]
    end else if (_T_48) begin // @[system.scala 125:21]
      ShrSet_reg_0 <= rules_24_io_ShrSet_out_0; // @[system.scala 131:12]
    end else if (_T_46) begin // @[system.scala 125:21]
      ShrSet_reg_0 <= rules_23_io_ShrSet_out_0; // @[system.scala 131:12]
    end else begin
      ShrSet_reg_0 <= _GEN_797;
    end
    if (reset) begin // @[system.scala 38:25]
      ShrSet_reg_1 <= 1'h0; // @[system.scala 38:25]
    end else if (_T_50) begin // @[system.scala 125:21]
      ShrSet_reg_1 <= rules_25_io_ShrSet_out_1; // @[system.scala 131:12]
    end else if (_T_48) begin // @[system.scala 125:21]
      ShrSet_reg_1 <= rules_24_io_ShrSet_out_1; // @[system.scala 131:12]
    end else if (_T_46) begin // @[system.scala 125:21]
      ShrSet_reg_1 <= rules_23_io_ShrSet_out_1; // @[system.scala 131:12]
    end else begin
      ShrSet_reg_1 <= _GEN_798;
    end
    if (reset) begin // @[system.scala 38:25]
      ShrSet_reg_2 <= 1'h0; // @[system.scala 38:25]
    end else if (_T_50) begin // @[system.scala 125:21]
      ShrSet_reg_2 <= rules_25_io_ShrSet_out_2; // @[system.scala 131:12]
    end else if (_T_48) begin // @[system.scala 125:21]
      ShrSet_reg_2 <= rules_24_io_ShrSet_out_2; // @[system.scala 131:12]
    end else if (_T_46) begin // @[system.scala 125:21]
      ShrSet_reg_2 <= rules_23_io_ShrSet_out_2; // @[system.scala 131:12]
    end else begin
      ShrSet_reg_2 <= _GEN_799;
    end
    if (reset) begin // @[system.scala 41:25]
      ExGntd_reg <= 1'h0; // @[system.scala 41:25]
    end else if (_T_50) begin // @[system.scala 125:21]
      ExGntd_reg <= rules_25_io_ExGntd_out; // @[system.scala 132:12]
    end else if (_T_48) begin // @[system.scala 125:21]
      ExGntd_reg <= rules_24_io_ExGntd_out; // @[system.scala 132:12]
    end else if (_T_46) begin // @[system.scala 125:21]
      ExGntd_reg <= rules_23_io_ExGntd_out; // @[system.scala 132:12]
    end else begin
      ExGntd_reg <= _GEN_800;
    end
    if (reset) begin // @[system.scala 44:25]
      CurCmd_reg <= 3'h0; // @[system.scala 44:25]
    end else if (_T_50) begin // @[system.scala 125:21]
      CurCmd_reg <= rules_25_io_CurCmd_out; // @[system.scala 133:12]
    end else if (_T_48) begin // @[system.scala 125:21]
      CurCmd_reg <= rules_24_io_CurCmd_out; // @[system.scala 133:12]
    end else if (_T_46) begin // @[system.scala 125:21]
      CurCmd_reg <= rules_23_io_CurCmd_out; // @[system.scala 133:12]
    end else begin
      CurCmd_reg <= _GEN_801;
    end
    if (reset) begin // @[system.scala 47:25]
      CurPtr_reg <= 2'h0; // @[system.scala 47:25]
    end else if (_T_50) begin // @[system.scala 125:21]
      CurPtr_reg <= rules_25_io_CurPtr_out; // @[system.scala 134:12]
    end else if (_T_48) begin // @[system.scala 125:21]
      CurPtr_reg <= rules_24_io_CurPtr_out; // @[system.scala 134:12]
    end else if (_T_46) begin // @[system.scala 125:21]
      CurPtr_reg <= rules_23_io_CurPtr_out; // @[system.scala 134:12]
    end else begin
      CurPtr_reg <= _GEN_802;
    end
    if (reset) begin // @[system.scala 50:26]
      MemData_reg <= 2'h2; // @[system.scala 50:26]
    end else if (_T_50) begin // @[system.scala 125:21]
      MemData_reg <= rules_25_io_MemData_out; // @[system.scala 135:13]
    end else if (_T_48) begin // @[system.scala 125:21]
      MemData_reg <= rules_24_io_MemData_out; // @[system.scala 135:13]
    end else if (_T_46) begin // @[system.scala 125:21]
      MemData_reg <= rules_23_io_MemData_out; // @[system.scala 135:13]
    end else begin
      MemData_reg <= _GEN_803;
    end
    if (reset) begin // @[system.scala 53:26]
      AuxData_reg <= 2'h2; // @[system.scala 53:26]
    end else if (_T_50) begin // @[system.scala 125:21]
      AuxData_reg <= rules_25_io_AuxData_out; // @[system.scala 136:13]
    end else if (_T_48) begin // @[system.scala 125:21]
      AuxData_reg <= rules_24_io_AuxData_out; // @[system.scala 136:13]
    end else if (_T_46) begin // @[system.scala 125:21]
      AuxData_reg <= rules_23_io_AuxData_out; // @[system.scala 136:13]
    end else begin
      AuxData_reg <= _GEN_804;
    end
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

                initial begin
                    assume(reset==1);
                end

                  always @(posedge clock) begin
    //
    if (~reset) begin
      assert(1'h1); // @[system.scala 141:7]
    end
    //
    if (~reset) begin
      assert((~(Cache_reg_1_State == 2'h2) | Cache_reg_2_State == 2'h0) & (~(Cache_reg_1_State == 2'h1) | (
        Cache_reg_2_State == 2'h0 | Cache_reg_2_State == 2'h1))); // @[system.scala 141:7]
    end
    //
    if (~reset) begin
      assert((~(Cache_reg_2_State == 2'h2) | Cache_reg_1_State == 2'h0) & (~(Cache_reg_2_State == 2'h1) | (
        Cache_reg_1_State == 2'h0 | Cache_reg_1_State == 2'h1))); // @[system.scala 141:7]
    end
    //
    if (~reset) begin
      assert(1'h1); // @[system.scala 141:7]
    end
    //
    if (_T_67) begin
      assert(~((~(~ExGntd_reg) | MemData_reg == AuxData_reg) & Cache_reg_1_State != 2'h0) | Cache_reg_1_Data ==
        AuxData_reg); // @[system.scala 144:7]
    end
    //
    if (_T_67) begin
      assert(~((~(~ExGntd_reg) | MemData_reg == AuxData_reg) & Cache_reg_2_State != 2'h0) | Cache_reg_2_Data ==
        AuxData_reg); // @[system.scala 144:7]
    end
  end
endmodule
