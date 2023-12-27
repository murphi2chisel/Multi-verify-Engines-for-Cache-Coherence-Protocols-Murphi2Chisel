import chisel3._
import chisel3.util._
import CACHE_STATE._
import MSG_CMD._
class node(NODE_NUM:Int,DATA_NUM:Int) extends Module{
val io = IO(new Bundle {
val en_r = Input(Bool())
val Cache_in = Input(Vec(NODE_NUM+1,new CACHE(NODE_NUM,DATA_NUM)))
val Cache_out = Output(Vec(NODE_NUM+1,new CACHE(NODE_NUM,DATA_NUM)))
val Chan1_in = Input(Vec(NODE_NUM+1,new MSG(NODE_NUM,DATA_NUM)))
val Chan1_out = Output(Vec(NODE_NUM+1,new MSG(NODE_NUM,DATA_NUM)))
val Chan2_in = Input(Vec(NODE_NUM+1,new MSG(NODE_NUM,DATA_NUM)))
val Chan2_out = Output(Vec(NODE_NUM+1,new MSG(NODE_NUM,DATA_NUM)))
val Chan3_in = Input(Vec(NODE_NUM+1,new MSG(NODE_NUM,DATA_NUM)))
val Chan3_out = Output(Vec(NODE_NUM+1,new MSG(NODE_NUM,DATA_NUM)))
val InvSet_in = Input(Vec(NODE_NUM+1,Bool()))
val InvSet_out = Output(Vec(NODE_NUM+1,Bool()))
val ShrSet_in = Input(Vec(NODE_NUM+1,Bool()))
val ShrSet_out = Output(Vec(NODE_NUM+1,Bool()))
val ExGntd_in = Input(Bool())
val ExGntd_out = Output(Bool())
val CurCmd_in = Input(MSG_CMD())
val CurCmd_out = Output(MSG_CMD())
val CurPtr_in = Input(UInt(log2Ceil((NODE_NUM+1)).W))
val CurPtr_out = Output(UInt(log2Ceil((NODE_NUM+1)).W))
val MemData_in = Input(UInt(log2Ceil((DATA_NUM+1)).W))
val MemData_out = Output(UInt(log2Ceil((DATA_NUM+1)).W))
val AuxData_in = Input(UInt(log2Ceil((DATA_NUM+1)).W))
val AuxData_out = Output(UInt(log2Ceil((DATA_NUM+1)).W))
})

  def forall(left: Int, right: Int, f: Int => Bool): Bool = {
    val v = Wire(Vec(right - left + 1, Bool()))
    v(0) := f(left)
    for (i <- left until right) {
      v(i - left + 1) := v(i - left) & f(i + 1)
    }
    return v(right - left)
  }

  def exists(left: Int, right: Int, f: Int => Bool): Bool = {
    val v = Wire(Vec(right - left + 1, Bool()))
    v(0) := f(left)
    for (i <- left until right) {
      v(i - left + 1) := v(i - left) | f(i + 1)
    }
    return v(right - left)
  }
io.Cache_out:=io.Cache_in
io.Chan1_out:=io.Chan1_in
io.Chan2_out:=io.Chan2_in
io.Chan3_out:=io.Chan3_in
io.InvSet_out:=io.InvSet_in
io.ShrSet_out:=io.ShrSet_in
io.ExGntd_out:=io.ExGntd_in
io.CurCmd_out:=io.CurCmd_in
io.CurPtr_out:=io.CurPtr_in
io.MemData_out:=io.MemData_in
io.AuxData_out:=io.AuxData_in
}
