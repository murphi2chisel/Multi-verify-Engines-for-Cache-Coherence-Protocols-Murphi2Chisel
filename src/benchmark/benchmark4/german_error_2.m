const

  NODE_NUM : 4;
  DATA_NUM : 2;

type

  NODE : scalarset(NODE_NUM);
  DATA : 1..DATA_NUM;

  CACHE_STATE : enum {I, S, E};                           
  CACHE : record State : CACHE_STATE; Data : DATA; end;

  MSG_CMD : enum {Empty, ReqS, ReqE, Inv, InvAck, GntS, GntE};
  MSG : record Cmd : MSG_CMD; Data : DATA; end;            

var

  Cache : array [NODE] of CACHE;
  Chan1 : array [NODE] of MSG;                              
  Chan2 : array [NODE] of MSG;                             
  Chan3 : array [NODE] of MSG;                              
  InvSet : array [NODE] of boolean;
  ShrSet : array [NODE] of boolean;
  ExGntd : boolean;                                         
  CurCmd : MSG_CMD;                                         
  CurPtr : NODE;                                            
  MemData : DATA;                                           
  AuxData : DATA;

                                                            
ruleset d : DATA do startstate "Init"                       
  for i : NODE do
    Chan1[i].Cmd := Empty; Chan2[i].Cmd := Empty; Chan3[i].Cmd := Empty;
    Cache[i].State := I; InvSet[i] := false; ShrSet[i] := false;
  end;
  ExGntd := false; CurCmd := Empty; MemData := d; AuxData := d;
endstartstate; endruleset;


ruleset i : NODE; d : DATA do rule "Store"                   
  Cache[i].State = E
==> begin
  Cache[i].Data := d; AuxData := d;
endrule; endruleset;


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
  for j : NODE do InvSet[j] := ShrSet[j]; end;   
endrule; endruleset;

ruleset i : NODE do rule "RecvReqE"
  CurCmd = Empty & Chan1[i].Cmd = ReqE
==> begin
  CurCmd := ReqE; CurPtr := i; Chan1[i].Cmd := Empty;
  for j : NODE do InvSet[j] := ShrSet[j]; end;
endrule; endruleset;


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
  forall j : NODE do ShrSet[j] = false end   
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


invariant "test_531"
!(Cache[1].State=I&Cache[1].Data=2&Cache[2].State=I&Cache[2].Data=1&Cache[3].State=I&Cache[3].Data=1&Cache[4].State=S&Cache[4].Data=2&Chan1[1].Cmd=ReqE&Chan1[2].Cmd=Empty&Chan1[3].Cmd=Empty&Chan1[4].Cmd=Empty&Chan2[1].Cmd=Empty&Chan2[1].Data=1&Chan2[2].Cmd=Empty&Chan2[2].Data=2&Chan2[3].Cmd=Empty&Chan2[3].Data=1&Chan2[4].Cmd=Inv&Chan2[4].Data=2&Chan3[1].Cmd=Empty&Chan3[1].Data=2&Chan3[2].Cmd=Empty&Chan3[2].Data=1&Chan3[3].Cmd=Empty&Chan3[3].Data=2&Chan3[4].Data=2&InvSet[1]=false&InvSet[2]=false&InvSet[3]=false&InvSet[4]=false&ShrSet[1]=false);