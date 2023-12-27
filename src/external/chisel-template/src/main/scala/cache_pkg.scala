import chisel3._
import chisel3.util._
import chisel3.experimental.ChiselEnum
object CACHE_STATE extends ChiselEnum {
val I,S,E = Value
}

class CACHE(val NODE_NUM:Int,val DATA_NUM:Int) extends Bundle{
val State = CACHE_STATE()
val Data = UInt(log2Ceil((DATA_NUM+1)).W)
}

object MSG_CMD extends ChiselEnum {
val Empty,ReqS,ReqE,Inv,InvAck,GntS,GntE = Value
}

class MSG(val NODE_NUM:Int,val DATA_NUM:Int) extends Bundle{
val Cmd = MSG_CMD()
val Data = UInt(log2Ceil((DATA_NUM+1)).W)
}

