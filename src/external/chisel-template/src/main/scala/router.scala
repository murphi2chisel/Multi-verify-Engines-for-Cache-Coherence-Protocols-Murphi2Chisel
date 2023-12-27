import chisel3._
import chisel3.util._
import CACHE_STATE._
import MSG_CMD._
class Init(NODE_NUM:Int,DATA_NUM:Int,d:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
for(i <- 1 until (NODE_NUM+1)){
io.Chan1_out(i).Cmd := Empty
io.Chan2_out(i).Cmd := Empty
io.Chan3_out(i).Cmd := Empty
io.Cache_out(i).State := I
io.InvSet_out(i) := false.B
io.ShrSet_out(i) := false.B
}

io.ExGntd_out := false.B
io.CurCmd_out := Empty
io.MemData_out := d.U
io.AuxData_out := d.U
}
}
class Store(NODE_NUM:Int,DATA_NUM:Int,i:Int,d:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when((io.Cache_in(i).State===E)){
io.Cache_out(i).Data := d.U
io.AuxData_out := d.U
}
}
}
class SendReqS(NODE_NUM:Int,DATA_NUM:Int,i:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Chan1_in(i).Cmd===Empty)&&(io.Cache_in(i).State===I))){
io.Chan1_out(i).Cmd := ReqS
}
}
}
class SendReqE(NODE_NUM:Int,DATA_NUM:Int,i:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Chan1_in(i).Cmd===Empty)&&((io.Cache_in(i).State===I)||(io.Cache_in(i).State===S)))){
io.Chan1_out(i).Cmd := ReqE
}
}
}
class RecvReqS(NODE_NUM:Int,DATA_NUM:Int,i:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.CurCmd_in===Empty)&&(io.Chan1_in(i).Cmd===ReqS))){
io.CurCmd_out := ReqS
io.CurPtr_out := i.U
io.Chan1_out(i).Cmd := Empty
for(j <- 1 until (NODE_NUM+1)){
io.InvSet_out(j) := io.ShrSet_in(j)
}

}
}
}
class RecvReqE(NODE_NUM:Int,DATA_NUM:Int,i:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.CurCmd_in===Empty)&&(io.Chan1_in(i).Cmd===ReqE))){
io.CurCmd_out := ReqE
io.CurPtr_out := i.U
io.Chan1_out(i).Cmd := Empty
for(j <- 1 until (NODE_NUM+1)){
io.InvSet_out(j) := io.ShrSet_in(j)
}

}
}
}
class SendInv(NODE_NUM:Int,DATA_NUM:Int,i:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Chan2_in(i).Cmd===Empty)&&((io.InvSet_in(i)===true.B)&&((io.CurCmd_in===ReqE)||((io.CurCmd_in===ReqS)&&(io.ExGntd_in===true.B)))))){
io.Chan2_out(i).Cmd := Inv
io.InvSet_out(i) := false.B
}
}
}
class SendGntS(NODE_NUM:Int,DATA_NUM:Int,i:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.CurCmd_in===ReqS)&&((io.CurPtr_in===i.U)&&((io.Chan2_in(i).Cmd===Empty)&&(io.ExGntd_in===false.B))))){
io.Chan2_out(i).Cmd := GntS
io.Chan2_out(i).Data := io.MemData_in
io.ShrSet_out(i) := true.B
io.CurCmd_out := Empty
}
}
}
class SendGntE(NODE_NUM:Int,DATA_NUM:Int,i:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.CurCmd_in===ReqE)&&((io.CurPtr_in===i.U)&&((io.Chan2_in(i).Cmd===Empty)&&((io.ExGntd_in===false.B)&&forall(1,NODE_NUM,j=>(io.ShrSet_in(j)===false.B))))))){
io.Chan2_out(i).Cmd := GntE
io.Chan2_out(i).Data := io.MemData_in
io.ShrSet_out(i) := true.B
io.ExGntd_out := true.B
io.CurCmd_out := Empty
}
}
}
class RecvGntS(NODE_NUM:Int,DATA_NUM:Int,i:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when((io.Chan2_in(i).Cmd===GntS)){
io.Cache_out(i).State := S
io.Cache_out(i).Data := io.Chan2_in(i).Data
io.Chan2_out(i).Cmd := Empty
}
}
}
class RecvGntE(NODE_NUM:Int,DATA_NUM:Int,i:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when((io.Chan2_in(i).Cmd===GntE)){
io.Cache_out(i).State := E
io.Cache_out(i).Data := io.Chan2_in(i).Data
io.Chan2_out(i).Cmd := Empty
}
}
}
class SendInvAck(NODE_NUM:Int,DATA_NUM:Int,i:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Chan2_in(i).Cmd===Inv)&&(io.Chan3_in(i).Cmd===Empty))){
io.Chan2_out(i).Cmd := Empty
io.Chan3_out(i).Cmd := InvAck
when((io.Cache_in(i).State===E)){
io.Chan3_out(i).Data := io.Cache_in(i).Data
}

io.Cache_out(i).State := I
}
}
}
class RecvInvAck(NODE_NUM:Int,DATA_NUM:Int,i:Int) extends node(NODE_NUM,DATA_NUM){
when(io.en_r){
when(((io.Chan3_in(i).Cmd===InvAck)&&(io.CurCmd_in=/=Empty))){
io.Chan3_out(i).Cmd := Empty
io.ShrSet_out(i) := false.B
when((io.ExGntd_in===true.B)){
io.ExGntd_out := false.B
io.MemData_out := io.Chan3_in(i).Data
}

}
}
}
