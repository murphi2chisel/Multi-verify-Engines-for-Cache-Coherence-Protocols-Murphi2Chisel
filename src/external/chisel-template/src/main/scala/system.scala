import chisel3._
import chisel3.util._
import scala.collection.mutable.ArrayBuffer
import CACHE_STATE._
import MSG_CMD._
class system(NODE_NUM:Int,DATA_NUM:Int) extends Module{
val io = IO(new Bundle {
val en_a = Input(UInt(log2Ceil((NODE_NUM-1+1)*(DATA_NUM-1+1)*1+(NODE_NUM-1+1)*11+0+(DATA_NUM-1+1)).W))
val Cache_out = Output(Vec(NODE_NUM+1,new CACHE(NODE_NUM,DATA_NUM)))
val Chan1_out = Output(Vec(NODE_NUM+1,new MSG(NODE_NUM,DATA_NUM)))
val Chan2_out = Output(Vec(NODE_NUM+1,new MSG(NODE_NUM,DATA_NUM)))
val Chan3_out = Output(Vec(NODE_NUM+1,new MSG(NODE_NUM,DATA_NUM)))
val InvSet_out = Output(Vec(NODE_NUM+1,Bool()))
val ShrSet_out = Output(Vec(NODE_NUM+1,Bool()))
val ExGntd_out = Output(Bool())
val CurCmd_out = Output(MSG_CMD())
val CurPtr_out = Output(UInt(log2Ceil((NODE_NUM+1)).W))
val MemData_out = Output(UInt(log2Ceil((DATA_NUM+1)).W))
val AuxData_out = Output(UInt(log2Ceil((DATA_NUM+1)).W))
})
var rules = ArrayBuffer[node]()
val Cache_reg = Reg(Vec(NODE_NUM+1,new CACHE(NODE_NUM,DATA_NUM)))
io.Cache_out:=Cache_reg
val Chan1_reg = Reg(Vec(NODE_NUM+1,new MSG(NODE_NUM,DATA_NUM)))
io.Chan1_out:=Chan1_reg
val Chan2_reg = Reg(Vec(NODE_NUM+1,new MSG(NODE_NUM,DATA_NUM)))
io.Chan2_out:=Chan2_reg
val Chan3_reg = Reg(Vec(NODE_NUM+1,new MSG(NODE_NUM,DATA_NUM)))
io.Chan3_out:=Chan3_reg
val InvSet_reg = Reg(Vec(NODE_NUM+1,Bool()))
io.InvSet_out:=InvSet_reg
val ShrSet_reg = Reg(Vec(NODE_NUM+1,Bool()))
io.ShrSet_out:=ShrSet_reg
val ExGntd_reg = Reg(Bool())
io.ExGntd_out:=ExGntd_reg
val CurCmd_reg = Reg(MSG_CMD())
io.CurCmd_out:=CurCmd_reg
val CurPtr_reg = Reg(UInt(log2Ceil((NODE_NUM+1)).W))
io.CurPtr_out:=CurPtr_reg
val MemData_reg = Reg(UInt(log2Ceil((DATA_NUM+1)).W))
io.MemData_out:=MemData_reg
val AuxData_reg = Reg(UInt(log2Ceil((DATA_NUM+1)).W))
io.AuxData_out:=AuxData_reg
for(d <- 1 until (DATA_NUM+1)){
rules += Module(new Init(NODE_NUM,DATA_NUM,d))
}
for(i <- 1 until (NODE_NUM+1)){
for(d <- 1 until (DATA_NUM+1)){
rules += Module(new Store(NODE_NUM,DATA_NUM,i,d))
}
}
for(i <- 1 until (NODE_NUM+1)){
rules += Module(new SendReqS(NODE_NUM,DATA_NUM,i))
}
for(i <- 1 until (NODE_NUM+1)){
rules += Module(new SendReqE(NODE_NUM,DATA_NUM,i))
}
for(i <- 1 until (NODE_NUM+1)){
rules += Module(new RecvReqS(NODE_NUM,DATA_NUM,i))
}
for(i <- 1 until (NODE_NUM+1)){
rules += Module(new RecvReqE(NODE_NUM,DATA_NUM,i))
}
for(i <- 1 until (NODE_NUM+1)){
rules += Module(new SendInv(NODE_NUM,DATA_NUM,i))
}
for(i <- 1 until (NODE_NUM+1)){
rules += Module(new SendGntS(NODE_NUM,DATA_NUM,i))
}
for(i <- 1 until (NODE_NUM+1)){
rules += Module(new SendGntE(NODE_NUM,DATA_NUM,i))
}
for(i <- 1 until (NODE_NUM+1)){
rules += Module(new RecvGntS(NODE_NUM,DATA_NUM,i))
}
for(i <- 1 until (NODE_NUM+1)){
rules += Module(new RecvGntE(NODE_NUM,DATA_NUM,i))
}
for(i <- 1 until (NODE_NUM+1)){
rules += Module(new SendInvAck(NODE_NUM,DATA_NUM,i))
}
for(i <- 1 until (NODE_NUM+1)){
rules += Module(new RecvInvAck(NODE_NUM,DATA_NUM,i))
}
for(i <- 0 until (NODE_NUM-1+1)*(DATA_NUM-1+1)*1+(NODE_NUM-1+1)*11+0+(DATA_NUM-1+1)) {
rules(i).io.Cache_in := Cache_reg
rules(i).io.Chan1_in := Chan1_reg
rules(i).io.Chan2_in := Chan2_reg
rules(i).io.Chan3_in := Chan3_reg
rules(i).io.InvSet_in := InvSet_reg
rules(i).io.ShrSet_in := ShrSet_reg
rules(i).io.ExGntd_in := ExGntd_reg
rules(i).io.CurCmd_in := CurCmd_reg
rules(i).io.CurPtr_in := CurPtr_reg
rules(i).io.MemData_in := MemData_reg
rules(i).io.AuxData_in := AuxData_reg
rules(i).io.en_r:=(io.en_a=== i.U)
when(io.en_a=== i.U){
Cache_reg := rules(i).io.Cache_out
Chan1_reg := rules(i).io.Chan1_out
Chan2_reg := rules(i).io.Chan2_out
Chan3_reg := rules(i).io.Chan3_out
InvSet_reg := rules(i).io.InvSet_out
ShrSet_reg := rules(i).io.ShrSet_out
ExGntd_reg := rules(i).io.ExGntd_out
CurCmd_reg := rules(i).io.CurCmd_out
CurPtr_reg := rules(i).io.CurPtr_out
MemData_reg := rules(i).io.MemData_out
AuxData_reg := rules(i).io.AuxData_out
}
}

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
assert(forall(1,NODE_NUM,i=>(!((ShrSet_reg(i)===true.B)&&((Cache_reg(i).State===I)&&((Chan2_reg(i).Cmd===Empty)&&((ExGntd_reg===false.B)&&(CurCmd_reg===ReqS))))))))
}