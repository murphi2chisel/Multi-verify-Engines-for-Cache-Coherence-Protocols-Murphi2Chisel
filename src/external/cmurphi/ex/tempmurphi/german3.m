const

  NODE_NUM : 3;
  DATA_NUM : 2;

type

  NODE : 1..NODE_NUM;
  DATA : 1..DATA_NUM;

  CACHE_STATE : enum {I, S, E};                            -- I（invalid）无效、S（share）读共享、E（Exclusive）写互斥
  CACHE : record State : CACHE_STATE; Data : DATA; end;

  MSG_CMD : enum {Empty, ReqS, ReqE, Inv, InvAck, GntS, GntE};
  MSG : record Cmd : MSG_CMD; Data : DATA; end;            -- 一个 MSG 包括 Cmd(命令) 和 Data(数据)

var

  Cache : array [NODE] of CACHE;
  -- 每个 NODE 都有3个通信通道，Chan1、Chan2、Chan3
  Chan1 : array [NODE] of MSG;                              -- chanel1: cache向home发送——sendReqS, sendReqEI, sendReqES
  Chan2 : array [NODE] of MSG;                              -- chanel2: home向cache发送——InvS, InvE, GntS, GntE
  Chan3 : array [NODE] of MSG;                              -- chanel3: cache向home发送——InvAck
  InvSet : array [NODE] of boolean;
  ShrSet : array [NODE] of boolean;
  ExGntd : boolean;                                         -- 互斥标志，表示 memory 是否在写
  CurCmd : MSG_CMD;                                         -- home 用以记录 当前执行的命令
  CurPtr : NODE;                                            -- home 用以记录 当前运行命令的节点
  MemData : DATA;                                           -- memory 当前存放的数据
  AuxData : DATA;

                                                            -- 初始化问题，python是弱类型的，本来是想在初始化阶段定义结构；但现在来看，部分变量未声明，导致实现也有一点问题
ruleset d : DATA do startstate "Init"                       -- 对 DATA 进行枚举，即假定要传的数据为1、2
  for i : NODE do
    Chan1[i].Cmd := Empty; Chan2[i].Cmd := Empty; Chan3[i].Cmd := Empty;
    Cache[i].State := I; InvSet[i] := false; ShrSet[i] := false;
  end;
  ExGntd := false; CurCmd := Empty; MemData := d; AuxData := d;
endstartstate; endruleset;


ruleset i : NODE; d : DATA do rule "Store"                   -- 若 cache 的状态为 E，则 给 cache 的 data 赋值
  Cache[i].State = E
==> begin
  Cache[i].Data := d; AuxData := d;
endrule; endruleset;

-- chanl1 是 cache 向 home 发送申请的通道，申请的内容包括：申请读、申请写
ruleset i : NODE do rule "SendReqS"
  Chan1[i].Cmd = Empty & Cache[i].State = I
==> begin
  Chan1[i].Cmd := ReqS;
endrule; endruleset;

ruleset i : NODE do rule "SendReqE"
  Chan1[i].Cmd = Empty & (Cache[i].State = I | Cache[i].State = S)
==> begin
  Chan1[i].Cmd := ReqE;
endrule; endruleset;

ruleset i : NODE do rule "RecvReqS"
  CurCmd = Empty & Chan1[i].Cmd = ReqS
==> begin
  CurCmd := ReqS; CurPtr := i; Chan1[i].Cmd := Empty;
  for j : NODE do InvSet[j] := ShrSet[j]; end;   -- 虽然有时候不报错，但也无法打印出来，但有时候显示已经写在文件中了
endrule; endruleset;

ruleset i : NODE do rule "RecvReqE"
  CurCmd = Empty & Chan1[i].Cmd = ReqE
==> begin
  CurCmd := ReqE; CurPtr := i; Chan1[i].Cmd := Empty;
  for j : NODE do InvSet[j] := ShrSet[j]; end;
endrule; endruleset;

-- Chanl2 是 home 向 cache 发送命令的通道，包括：使 cache 无效；通过 cache 的申请；
ruleset i : NODE do rule "SendInv"
  Chan2[i].Cmd = Empty & InvSet[i] = true &
  ( CurCmd = ReqE | CurCmd = ReqS & ExGntd = true )
==> begin
  Chan2[i].Cmd := Inv; InvSet[i] := false;
endrule; endruleset;

ruleset i : NODE do rule "SendGntS"
  CurCmd = ReqS & CurPtr = i & Chan2[i].Cmd = Empty & ExGntd = false
==> begin
  Chan2[i].Cmd := GntS; Chan2[i].Data := MemData; ShrSet[i] := true;
  CurCmd := Empty;
endrule; endruleset;

ruleset i : NODE do rule "SendGntE"
  CurCmd = ReqE & CurPtr = i & Chan2[i].Cmd = Empty & ExGntd = false &
  forall j : NODE do ShrSet[j] = false end   -- forall 语法
==> begin
  Chan2[i].Cmd := GntE; Chan2[i].Data := MemData; ShrSet[i] := true;
  ExGntd := true; CurCmd := Empty;
endrule; endruleset;

ruleset i : NODE do rule "RecvGntS"
  Chan2[i].Cmd = GntS
==> begin
  Cache[i].State := S; Cache[i].Data := Chan2[i].Data;
  Chan2[i].Cmd := Empty;
endrule; endruleset;

ruleset i : NODE do rule "RecvGntE"
  Chan2[i].Cmd = GntE
==> begin
  Cache[i].State := E; Cache[i].Data := Chan2[i].Data;
  Chan2[i].Cmd := Empty;
endrule; endruleset;

-- Chanl3 是从 cache 流向 home 的命令通道，命令用于确认之前收到的 home 传来的使无效命令
ruleset i : NODE do rule "SendInvAck"
  Chan2[i].Cmd = Inv & Chan3[i].Cmd = Empty
==> begin
  Chan2[i].Cmd := Empty; Chan3[i].Cmd := InvAck;
  if (Cache[i].State = E) then Chan3[i].Data := Cache[i].Data; end;
  Cache[i].State := I;
endrule; endruleset;

ruleset i : NODE do rule "RecvInvAck"
  Chan3[i].Cmd = InvAck & CurCmd != Empty
==> begin
  Chan3[i].Cmd := Empty; ShrSet[i] := false;
  if (ExGntd = true)
  then ExGntd := false; MemData := Chan3[i].Data; end;
endrule; endruleset;

ruleset i: NODE; j: NODE do
invariant "CntrlProp"
    i != j -> (Cache[i].State = E -> Cache[j].State = I) &
              (Cache[i].State = S -> Cache[j].State = I | Cache[j].State = S);
endruleset;

ruleset i: NODE do
invariant "DataProp"
  ( ExGntd = false -> MemData = AuxData ) &
   Cache[i].State != I -> Cache[i].Data = AuxData ;
endruleset;