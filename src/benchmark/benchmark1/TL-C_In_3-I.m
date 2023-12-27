
Const
    -- config start
    coreNum: 2;    -- 2
    allNodeNum: 3; -- 3
    allBranchNum: 2;
    -- config end

Type
    l1Id: 2 .. allNodeNum;

    cacheId: 1..1;

    nodeId: 1..allNodeNum;

    branchType: 1.. allBranchNum;

    stateType: enum{None,Trunk,Branch,Tip};

    AType: enum{A_None, AcquirePerm, AcquireBlock};

    BType: enum{B_None, ProbePerm, ProbeBlock};

    CType: enum{C_None, Release, ReleaseData, ProbeAck, ProbeAckData};

    DType: enum{D_None, Grant, GrantData, ReleaseAck};

    EType: enum{E_None, GrantAck};

    growType: enum{NtoB, NtoT, BtoT};

    capType: enum{toN, toB, toT};

    pruneType: enum{BtoN, TtoN, TtoB, NtoN};

    chAType: record
        opcode: AType;
        para: growType;
    end;

    chBType: record
        opcode: BType;
        para: capType;
    end;

    chCType: record
        opcode: CType;
        para: pruneType;
    end;

    chDType: record
        opcode: DType;
        para: capType;
    end;

    chEType: record
        opcode: EType;
    end;

    slave_pending_Type: enum{S_None, pending_ProbeAck, pending_ProbeAckData, pending_GrantAck};

    master_pending_Type: enum{M_None, pending_Grant, pending_GrantData, pending_ReleaseAck};

    cacheType: record
        state: stateType;
    end;

    TreeNode: Record
        cache: cacheType;
        sons: array[branchType] of nodeId;
        directory: array[branchType] of stateType;
        slave_pending: array[branchType] of slave_pending_Type;
        master_pending: master_pending_Type;
        chanA: array[branchType] of chAType;
        chanB: array[branchType] of chBType;
        chanC: array[branchType] of chCType;
        chanD: array[branchType] of chDType;
        chanE: array[branchType] of chEType;
    end;

Var
    Tree: array [nodeId] of TreeNode;
startstate "Init"
begin
Tree[1].cache.state := None;
Tree[1].sons[1] := 2;
Tree[1].chanA[1].opcode := A_None;
Tree[1].chanB[1].opcode := B_None;
Tree[1].chanC[1].opcode := C_None;
Tree[1].chanD[1].opcode := D_None;
Tree[1].chanE[1].opcode := E_None;
Tree[1].master_pending := M_None;
Tree[1].slave_pending[1] := S_None;
Tree[1].directory[1] := None;
Tree[1].sons[2] := 3;
Tree[1].chanA[2].opcode := A_None;
Tree[1].chanB[2].opcode := B_None;
Tree[1].chanC[2].opcode := C_None;
Tree[1].chanD[2].opcode := D_None;
Tree[1].chanE[2].opcode := E_None;
Tree[1].master_pending := M_None;
Tree[1].slave_pending[2] := S_None;
Tree[1].directory[2] := None;
for cur : l1Id do
    Tree[cur].cache.state := None;
    Tree[cur].master_pending := M_None;
endfor;

endstartstate;

-- L1 sends msg
ruleset i: l1Id do
rule "send_AcquireBlock_toB"
    Tree[i].cache.state = None &
    Tree[i].master_pending = M_None
==>
begin
    Tree[((i-2)/2)+1].chanA[(i%2)+1].opcode  := AcquireBlock;
    Tree[((i-2)/2)+1].chanA[(i%2)+1].para    := NtoB;
    Tree[i].master_pending := pending_GrantData;
endrule;

rule "send_AcquirePerm_toT"
    Tree[i].cache.state = Branch &
    Tree[i].master_pending = M_None
==>
begin
    Tree[((i-2)/2)+1].chanA[(i%2)+1].opcode  := AcquirePerm;
    Tree[((i-2)/2)+1].chanA[(i%2)+1].para := BtoT;
    Tree[i].master_pending := pending_Grant;
endrule;

rule "send_AcquireBlock_toT"
    Tree[i].cache.state = None &
    Tree[i].master_pending = M_None
==>
begin
    Tree[((i-2)/2)+1].chanA[(i%2)+1].opcode  := AcquireBlock;
    Tree[((i-2)/2)+1].chanA[(i%2)+1].para := NtoT;
    Tree[i].master_pending := pending_GrantData;
endrule;

rule "send_Release_BtoN"
    Tree[i].cache.state = Branch &
    Tree[i].master_pending = M_None &
    Tree[((i-2)/2)+1].chanC[(i%2)+1].opcode = C_None
==>
begin
    Tree[((i-2)/2)+1].chanC[(i%2)+1].opcode := Release;
    Tree[((i-2)/2)+1].chanC[(i%2)+1].para := BtoN;
    Tree[i].master_pending := pending_ReleaseAck;
    Tree[i].cache.state := None;
endrule;

rule "send_Release_TtoN"
    Tree[i].cache.state = Tip &
    Tree[i].master_pending = M_None &
    Tree[((i-2)/2)+1].chanC[(i%2)+1].opcode = C_None
==>
begin
    Tree[((i-2)/2)+1].chanC[(i%2)+1].para := TtoN;
    Tree[((i-2)/2)+1].chanC[(i%2)+1].opcode := ReleaseData;
    Tree[i].master_pending := pending_ReleaseAck;
    Tree[i].cache.state := None;
endrule;
endruleset;

-- L1 responds
ruleset i: l1Id do
rule "respond_Grant_toT"
    Tree[((i-2)/2)+1].chanD[(i%2)+1].opcode = Grant &
    Tree[((i-2)/2)+1].chanD[(i%2)+1].para = toT
==>
begin
    Tree[i].cache.state := Tip;
    Tree[((i-2)/2)+1].chanD[(i%2)+1].opcode := D_None;
    Tree[i].master_pending := M_None;
    Tree[((i-2)/2)+1].chanE[(i%2)+1].opcode  := GrantAck;
endrule;

rule "respond_GrantData_toB"
    Tree[((i-2)/2)+1].chanD[(i%2)+1].opcode = GrantData &
    Tree[((i-2)/2)+1].chanD[(i%2)+1].para = toB
==>
begin
    Tree[i].cache.state := Branch;
    Tree[((i-2)/2)+1].chanD[(i%2)+1].opcode := D_None;
    Tree[i].master_pending := M_None;
    Tree[((i-2)/2)+1].chanE[(i%2)+1].opcode := GrantAck;
endrule;

rule "respond_GrantData_toT"
    Tree[((i-2)/2)+1].chanD[(i%2)+1].opcode = GrantData &
    Tree[((i-2)/2)+1].chanD[(i%2)+1].para = toT
==>
begin
    Tree[i].cache.state := Tip;
    Tree[((i-2)/2)+1].chanD[(i%2)+1].opcode := D_None;
    Tree[i].master_pending := M_None;
    Tree[((i-2)/2)+1].chanE[(i%2)+1].opcode := GrantAck;
endrule;

rule "respond_Probe_NtoN"
    (Tree[((i-2)/2)+1].chanB[(i%2)+1].opcode = ProbePerm |
    Tree[((i-2)/2)+1].chanB[(i%2)+1].opcode = ProbeBlock) &
    (Tree[((i-2)/2)+1].chanB[(i%2)+1].para = toN |
    Tree[((i-2)/2)+1].chanB[(i%2)+1].para = toB) &
    Tree[((i-2)/2)+1].chanC[(i%2)+1].opcode = C_None &
    (Tree[i].master_pending != M_None ->
    Tree[i].master_pending != pending_ReleaseAck)&
    Tree[i].cache.state = None
==>
begin
    Tree[((i-2)/2)+1].chanC[(i%2)+1].opcode  := ProbeAck;
    Tree[((i-2)/2)+1].chanC[(i%2)+1].para    := NtoN;
    Tree[((i-2)/2)+1].chanB[(i%2)+1].opcode  := B_None;
    Tree[i].cache.state := None;
endrule;

rule "respond_ProbePerm_BtoN"
    Tree[((i-2)/2)+1].chanB[(i%2)+1].opcode = ProbePerm &
    Tree[((i-2)/2)+1].chanB[(i%2)+1].para = toN &
    Tree[((i-2)/2)+1].chanC[(i%2)+1].opcode = C_None &
    (Tree[i].master_pending != M_None ->
    Tree[i].master_pending != pending_ReleaseAck)&
    Tree[i].cache.state = Branch
==>
begin
    Tree[((i-2)/2)+1].chanC[(i%2)+1].opcode  := ProbeAck;
    Tree[((i-2)/2)+1].chanC[(i%2)+1].para    := BtoN;
    Tree[((i-2)/2)+1].chanB[(i%2)+1].opcode  := B_None;
    Tree[i].cache.state := None;
endrule;

rule "respond_ProbeBlock_TtoN"
    Tree[((i-2)/2)+1].chanB[(i%2)+1].opcode = ProbeBlock &
    Tree[((i-2)/2)+1].chanB[(i%2)+1].para = toN &
    Tree[((i-2)/2)+1].chanC[(i%2)+1].opcode = C_None &
    (Tree[i].master_pending != M_None ->
    Tree[i].master_pending != pending_ReleaseAck)&
    Tree[i].cache.state = Tip
==>
begin
    Tree[((i-2)/2)+1].chanC[(i%2)+1].para    := TtoN;
    Tree[((i-2)/2)+1].chanC[(i%2)+1].opcode  := ProbeAckData;
    Tree[((i-2)/2)+1].chanB[(i%2)+1].opcode  := B_None;
    Tree[i].cache.state := None;
endrule;

rule "respond_ProbeBlock_TtoB"
    Tree[((i-2)/2)+1].chanB[(i%2)+1].opcode = ProbeBlock &
    Tree[((i-2)/2)+1].chanC[(i%2)+1].opcode = C_None &
    (Tree[i].master_pending != M_None ->
    Tree[i].master_pending != pending_ReleaseAck)&
    Tree[i].cache.state = Tip
==>
begin
    Tree[((i-2)/2)+1].chanC[(i%2)+1].para    := TtoB;
    Tree[((i-2)/2)+1].chanC[(i%2)+1].opcode  := ProbeAckData;
    Tree[i].cache.state := Branch;
    Tree[((i-2)/2)+1].chanB[(i%2)+1].opcode := B_None;
endrule;

rule "receive_ReleaseAck"
    Tree[((i-2)/2)+1].chanD[(i%2)+1].opcode = ReleaseAck
==>
begin
    Tree[i].master_pending := M_None;
    Tree[((i-2)/2)+1].chanD[(i%2)+1].opcode := D_None;
endrule;
endruleset;

-- Ln <-> Ln+1
ruleset i : cacheId; b : branchType do
rule "Ln_receive_AcquirePerm_Tip_Branch_None"
    Tree[i].chanA[b].opcode = AcquirePerm &
    Tree[i].cache.state = Tip &
    forall k : branchType do
        (k != b -> Tree[i].directory[k] = None) &
        Tree[i].slave_pending[k] = S_None
    endforall &
    Tree[i].directory[b] = Branch
==>
begin
    Tree[i].chanA[b].opcode := A_None;
    Tree[i].chanD[b].opcode := Grant;
    Tree[i].chanD[b].para := toT;
    Tree[i].directory[b] := Tip;
    Tree[i].cache.state := Trunk;
    Tree[i].slave_pending[b] := pending_GrantAck;
endrule;

rule "Ln_receive_AcquirePerm_Tip_None_None"
    Tree[i].chanA[b].opcode = AcquirePerm &
    Tree[i].cache.state = Tip &
    forall k : branchType do
        (k != b -> Tree[i].directory[k] = None) &
        Tree[i].slave_pending[k] = S_None
    endforall &
    Tree[i].directory[b] = None
==>
begin
    Tree[i].chanA[b].opcode := A_None;
    Tree[i].chanD[b].opcode := GrantData;
    Tree[i].chanD[b].para := toT;
    Tree[i].directory[b] := Tip;
    Tree[i].cache.state := Trunk;
    Tree[i].slave_pending[b] := pending_GrantAck;
endrule;

rule "Ln_receive_AcquirePerm_Tip_x_Branch"
    Tree[i].chanA[b].opcode = AcquirePerm &
    Tree[i].cache.state = Tip &
    exists k : branchType do
        k != b &
        Tree[i].directory[k] = Branch &
        Tree[i].slave_pending[k] = S_None
    end
==>
begin
    for k : branchType do
        if k != b & Tree[i].directory[k] = Branch &
            Tree[i].slave_pending[k] = S_None then
            Tree[i].chanB[k].opcode := ProbePerm;
            Tree[i].chanB[k].para := toN;
            Tree[i].slave_pending[k] := pending_ProbeAck;
        endif;
    endfor;
endrule;

rule "Ln_receive_AcquirePerm_Trunk"
    Tree[i].chanA[b].opcode = AcquirePerm &
    Tree[i].cache.state = Trunk
==>
begin
    for k : branchType do
        if  Tree[i].directory[k] = Tip &
            Tree[i].slave_pending[k] = S_None then
                Tree[i].chanB[k].opcode := ProbeBlock;
                Tree[i].chanB[k].para := toN;
                Tree[i].slave_pending[k] := pending_ProbeAck;
        endif;
    endfor;
endrule;

rule "Ln_receive_AcquireBlock_NtoB_BranchTip"
    Tree[i].chanA[b].opcode = AcquireBlock &
    Tree[i].chanA[b].para = NtoB &
    (Tree[i].cache.state = Branch | Tree[i].cache.state = Tip) &
    Tree[i].slave_pending[b] = S_None
==>
begin
    Tree[i].chanA[b].opcode := A_None;
    Tree[i].chanD[b].opcode := GrantData;
    Tree[i].chanD[b].para := toB;
    Tree[i].slave_pending[b] := pending_GrantAck;
    Tree[i].directory[b] := Branch;
endrule;

rule "Ln_receive_AcquireBlock_NtoB_Trunk"
    Tree[i].chanA[b].opcode = AcquireBlock &
    Tree[i].chanA[b].para = NtoB &
    Tree[i].cache.state = Trunk &
    exists k : branchType do
        k != b &
        Tree[i].directory[k] = Tip &
        Tree[i].slave_pending[k] = S_None
    end
==>
begin
    for k : branchType do
        if k != b & Tree[i].directory[k] = Tip then
            Tree[i].chanB[k].opcode := ProbeBlock;
            Tree[i].chanB[k].para := toB;
            Tree[i].slave_pending[k] := pending_ProbeAck;
        endif;
    endfor;
endrule;

rule "Ln_receive_AcquireBlock_NtoT_Tip_None_None"
    Tree[i].chanA[b].opcode = AcquireBlock &
    Tree[i].chanA[b].para = NtoT &
    Tree[i].cache.state = Tip &
    forall k : branchType do
        Tree[i].directory[k] = None &
        Tree[i].slave_pending[k] = S_None
    endforall
==>
begin
    Tree[i].chanA[b].opcode := A_None;
    Tree[i].chanD[b].opcode := GrantData;
    Tree[i].chanD[b].para := toT;
    Tree[i].slave_pending[b] := pending_GrantAck;
    Tree[i].cache.state := Trunk;
    Tree[i].directory[b] := Tip;
endrule;

rule "Ln_receive_AcquireBlock_NtoT_Tip_x_Branch"
    Tree[i].chanA[b].opcode = AcquireBlock &
    Tree[i].chanA[b].para = NtoT &
    Tree[i].cache.state = Tip &
    exists k : branchType do
        k != b &
        Tree[i].directory[k] = Branch &
        Tree[i].slave_pending[k] = S_None
    end
==>
begin
    for k : branchType do
        if k != b & Tree[i].directory[k] = Branch &
            Tree[i].slave_pending[k] = S_None then
            Tree[i].chanB[k].opcode := ProbePerm;
            Tree[i].chanB[k].para := toN;
            Tree[i].slave_pending[k] := pending_ProbeAck;
        endif;
    endfor;
endrule;

rule "Ln_receive_AcquireBlock_NtoT_Trunk"
    Tree[i].chanA[b].opcode = AcquireBlock &
    Tree[i].chanA[b].para = NtoT &
    Tree[i].cache.state = Trunk &
    exists k : branchType do
        k != b &
        Tree[i].directory[k] = Tip &
        Tree[i].slave_pending[k] = S_None
    end
==>
begin
    for k : branchType do
        if k != b &
           Tree[i].directory[k] = Tip &
           Tree[i].slave_pending[k] = S_None then
            Tree[i].chanB[k].opcode := ProbeBlock;
            Tree[i].chanB[k].para := toN;
            Tree[i].slave_pending[k] := pending_ProbeAck;
        endif;
    endfor;
endrule;

rule "Ln_receive_ProbeAck_BtoNNtoN"
    Tree[i].chanC[b].opcode = ProbeAck &
    (Tree[i].chanC[b].para = BtoN |
    Tree[i].chanC[b].para = NtoN)
==>
begin
    Tree[i].chanC[b].opcode := C_None;
    Tree[i].directory[b] := None;
    Tree[i].slave_pending[b] := S_None;
endrule;

rule "Ln_receive_ProbeAckData_TtoN"
    Tree[i].chanC[b].opcode = ProbeAckData &
    Tree[i].chanC[b].para = TtoN
==>
begin
    Tree[i].chanC[b].opcode := C_None;
    Tree[i].directory[b] := None;
    Tree[i].cache.state := Tip;
    Tree[i].slave_pending[b] := S_None;
endrule;

rule "Ln_receive_ProbeAckData_TtoB"
    Tree[i].chanC[b].opcode = ProbeAckData &
    Tree[i].chanC[b].para = TtoB
==>
begin
    Tree[i].chanC[b].opcode := C_None;
    Tree[i].directory[b] := Branch;
    Tree[i].cache.state := Tip;
    Tree[i].slave_pending[b] := S_None;
endrule;

rule "Ln_receive_Release_BtoNNtoN"
    Tree[i].chanC[b].opcode = Release &
    (Tree[i].chanC[b].para = BtoN |
    Tree[i].chanC[b].para = NtoN)
==>
begin
    Tree[i].chanC[b].opcode := C_None;
    Tree[i].directory[b] := None;
    Tree[i].chanD[b].opcode := ReleaseAck;
endrule;

rule "Ln_receive_ReleaseData"
    Tree[i].chanC[b].opcode = ReleaseData
==>
begin
    Tree[i].chanC[b].opcode := C_None;
    Tree[i].cache.state := Tip;
    Tree[i].directory[b] := None;
    Tree[i].chanD[b].opcode := ReleaseAck;
endrule;

rule "Ln_receive_GrantAck"
    Tree[i].chanE[b].opcode = GrantAck
==>
begin
    Tree[i].chanE[b].opcode := E_None;
    Tree[i].slave_pending[b] := S_None;
endrule;
endruleset;

-- Ln+1 <-> Ln <-> Ln-1
ruleset i : cacheId; b1 : branchType do
rule "Ln_receive_AcquirePerm_Branch_x_x"
    i > 1 &
    Tree[i].chanA[b1].opcode = AcquirePerm &
    Tree[i].cache.state = Branch &
    Tree[i].master_pending = M_None
==>
begin
    Tree[((i-2)/2)+1].chanA[(i%2)+1].opcode := AcquirePerm;
    Tree[((i-2)/2)+1].chanA[(i%2)+1].para := BtoT;
    Tree[i].master_pending := pending_Grant;
endrule;

rule "Ln_receive_AcquirePerm_None"
    i > 1 &
    Tree[i].chanA[b1].opcode = AcquirePerm &
    Tree[i].cache.state = None &
    Tree[i].master_pending = M_None
==>
begin
    Tree[((i-2)/2)+1].chanA[(i%2)+1].opcode := AcquireBlock;
    Tree[((i-2)/2)+1].chanA[(i%2)+1].para := NtoT;
    Tree[i].master_pending := pending_GrantData;
endrule;

rule "Ln_receive_AcquireBlock_NtoB_None"
    i > 1 &
    Tree[i].chanA[b1].opcode = AcquireBlock &
    Tree[i].chanA[b1].para = NtoB &
    Tree[i].cache.state = None &
    Tree[i].master_pending = M_None
==>
begin
    Tree[((i-2)/2)+1].chanA[(i%2)+1].opcode := AcquireBlock;
    Tree[((i-2)/2)+1].chanA[(i%2)+1].para := NtoB;
    Tree[i].master_pending := pending_GrantData;
endrule;

rule "Ln_receive_AcquireBlock_NtoT_None"
    i > 1 &
    Tree[i].chanA[b1].opcode = AcquireBlock &
    Tree[i].chanA[b1].para = NtoT &
    Tree[i].cache.state = None &
    Tree[i].master_pending = M_None
==>
begin
    Tree[((i-2)/2)+1].chanA[(i%2)+1].opcode := AcquireBlock;
    Tree[((i-2)/2)+1].chanA[(i%2)+1].para := NtoT;
    Tree[i].master_pending := pending_GrantData;
endrule;

rule "Ln_receive_AcquireBlock_NtoT_Branch_x_x"
    i > 1 &
    Tree[i].chanA[b1].opcode = AcquireBlock &
    Tree[i].chanA[b1].para = NtoT &
    Tree[i].cache.state = Branch &
    Tree[i].master_pending = M_None
==>
begin
    Tree[((i-2)/2)+1].chanA[(i%2)+1].opcode := AcquirePerm;
    Tree[((i-2)/2)+1].chanA[(i%2)+1].para := BtoT;
    Tree[i].master_pending := pending_Grant;
endrule;
endruleset;

-- Ln receive
-- from lower level
ruleset i : cacheId do
rule "Ln_receive_Grant"
    i > 1 &
    Tree[((i-2)/2)+1].chanD[(i%2)+1].opcode = Grant &
    Tree[((i-2)/2)+1].chanD[(i%2)+1].para = toT
==>
begin
    Tree[i].cache.state := Tip;
    Tree[((i-2)/2)+1].chanD[(i%2)+1].opcode := D_None;
    Tree[i].master_pending := M_None;
    Tree[((i-2)/2)+1].chanE[(i%2)+1].opcode := GrantAck;
endrule;

rule "Ln_receive_GrantData_toB"
    i > 1 &
    Tree[((i-2)/2)+1].chanD[(i%2)+1].opcode = GrantData &
    Tree[((i-2)/2)+1].chanD[(i%2)+1].para = toB
==>
begin
    Tree[i].cache.state := Branch;
    Tree[((i-2)/2)+1].chanD[(i%2)+1].opcode := D_None;
    Tree[i].master_pending := M_None;
    Tree[((i-2)/2)+1].chanE[(i%2)+1].opcode := GrantAck;
endrule;

rule "Ln_receive_GrantData_toT"
    i > 1 &
    Tree[((i-2)/2)+1].chanD[(i%2)+1].opcode = GrantData &
    Tree[((i-2)/2)+1].chanD[(i%2)+1].para = toT
==>
begin
    Tree[i].cache.state := Tip;
    Tree[((i-2)/2)+1].chanD[(i%2)+1].opcode := D_None;
    Tree[i].master_pending := M_None;
    Tree[((i-2)/2)+1].chanE[(i%2)+1].opcode := GrantAck;
endrule;

rule "Ln_receive_ReleaseAck"
    i > 1 &
    Tree[((i-2)/2)+1].chanD[(i%2)+1].opcode = ReleaseAck
==>
begin
    Tree[((i-2)/2)+1].chanD[(i%2)+1].opcode := D_None;
    Tree[i].master_pending := M_None;
endrule;

rule "Ln_receive_Probe_None"
    i > 1 &
    (Tree[((i-2)/2)+1].chanB[(i%2)+1].opcode = ProbeBlock |
    Tree[((i-2)/2)+1].chanB[(i%2)+1].opcode = ProbePerm) &
    Tree[i].cache.state = None &
    (Tree[i].master_pending = M_None |
    Tree[i].master_pending != pending_ReleaseAck)
==>
begin
    Tree[((i-2)/2)+1].chanB[(i%2)+1].opcode := B_None;
    Tree[((i-2)/2)+1].chanC[(i%2)+1].opcode := ProbeAck;
    Tree[((i-2)/2)+1].chanC[(i%2)+1].para := NtoN;
endrule;

rule "Ln_receive_ProbePerm_Branch_None"
    i > 1 &
    Tree[((i-2)/2)+1].chanB[(i%2)+1].opcode = ProbePerm &
    Tree[i].cache.state = Branch &
    forall k : branchType do
        Tree[i].directory[k] = None
    endforall &
    (Tree[i].master_pending = M_None |
    Tree[i].master_pending != pending_ReleaseAck)
==>
begin
    Tree[((i-2)/2)+1].chanB[(i%2)+1].opcode := B_None;
    Tree[((i-2)/2)+1].chanC[(i%2)+1].opcode := ProbeAck;
    Tree[((i-2)/2)+1].chanC[(i%2)+1].para := BtoN;
    Tree[i].cache.state := None;
endrule;

rule "Ln_receive_ProbePerm_Branch_Branch"
    i > 1 &
    Tree[((i-2)/2)+1].chanB[(i%2)+1].opcode = ProbePerm &
    Tree[i].cache.state = Branch &
    exists k : branchType do
        Tree[i].directory[k] = Branch
    end &
    (Tree[i].master_pending = M_None |
    Tree[i].master_pending != pending_ReleaseAck)
==>
begin
    for k : branchType do
        if  Tree[i].directory[k] = Branch &
            Tree[i].slave_pending[k] = S_None then
                Tree[i].chanB[k].opcode := ProbePerm;
                Tree[i].chanB[k].para := toN;
                Tree[i].slave_pending[k] := pending_ProbeAck;
        endif;
    endfor;
endrule;

rule "Ln_receive_ProbeBlock_toN_Tip_None"
    i > 1 &
    Tree[((i-2)/2)+1].chanB[(i%2)+1].opcode = ProbeBlock &
    Tree[((i-2)/2)+1].chanB[(i%2)+1].para = toN &
    Tree[i].cache.state = Tip &
    forall k : branchType do
        Tree[i].directory[k] = None
    endforall &
    (Tree[i].master_pending = M_None |
    Tree[i].master_pending != pending_ReleaseAck)
==>
begin
    Tree[((i-2)/2)+1].chanB[(i%2)+1].opcode := B_None;
    Tree[i].cache.state := None;
    Tree[((i-2)/2)+1].chanC[(i%2)+1].para := TtoN;
    Tree[((i-2)/2)+1].chanC[(i%2)+1].opcode := ProbeAckData;
    Tree[i].cache.state := None;
endrule;

rule "Ln_receive_ProbeBlock_toB_Tip"
    i > 1 &
    Tree[((i-2)/2)+1].chanB[(i%2)+1].opcode = ProbeBlock &
    Tree[((i-2)/2)+1].chanB[(i%2)+1].para = toB &
    Tree[i].cache.state = Tip &
    (Tree[i].master_pending != M_None ->
    Tree[i].master_pending != pending_ReleaseAck)
==>
begin
    Tree[((i-2)/2)+1].chanB[(i%2)+1].opcode := B_None;
    Tree[i].cache.state := Branch;
    Tree[((i-2)/2)+1].chanC[(i%2)+1].para := TtoB;
    Tree[((i-2)/2)+1].chanC[(i%2)+1].opcode := ProbeAckData;
endrule;

rule "Ln_receive_ProbeBlock_toN_Trunk"
    i > 1 &
    Tree[((i-2)/2)+1].chanB[(i%2)+1].opcode = ProbeBlock &
    Tree[((i-2)/2)+1].chanB[(i%2)+1].para = toN &
    Tree[i].cache.state = Trunk
==>
begin
    for k : branchType do
        if  Tree[i].directory[k] = Tip &
            Tree[i].slave_pending[k] = S_None then
                Tree[i].chanB[k].opcode := ProbeBlock;
                Tree[i].chanB[k].para := toN;
                Tree[i].slave_pending[k] := pending_ProbeAck;
        endif;
    endfor;
endrule;

rule "Ln_receive_ProbeBlock_toB_Trunk"
    i > 1 &
    Tree[((i-2)/2)+1].chanB[(i%2)+1].opcode = ProbeBlock &
    Tree[((i-2)/2)+1].chanB[(i%2)+1].para = toB &
    Tree[i].cache.state = Trunk
==>
begin
    for k : branchType do
        if  Tree[i].directory[k] = Tip &
            Tree[i].slave_pending[k] = S_None then
                Tree[i].chanB[k].opcode := ProbeBlock;
                Tree[i].chanB[k].para := toB;
                Tree[i].slave_pending[k] := pending_ProbeAck;
        endif;
    endfor;
endrule;
endruleset;

-- Ln send msg
ruleset i : cacheId do
rule "Ln_send_Release_Branch"
    i > 1 &
    Tree[i].cache.state = Branch &
    forall k : branchType do
        Tree[i].directory[k] = None &
        Tree[i].chanA[k].opcode = A_None
    endforall &
    Tree[i].master_pending = M_None &
    Tree[((i-2)/2)+1].chanC[(i%2)+1].opcode = C_None
==>
begin
    Tree[((i-2)/2)+1].chanC[(i%2)+1].opcode := Release;
    Tree[((i-2)/2)+1].chanC[(i%2)+1].para := BtoN;
    Tree[i].master_pending := pending_ReleaseAck;
    Tree[i].cache.state := None;
endrule;

rule "Ln_send_Release_Tip"
    i > 1 &
    Tree[i].cache.state = Tip &
    forall k : branchType do
        Tree[i].directory[k] = None &
        Tree[i].chanA[k].opcode = A_None
    endforall &
    Tree[i].master_pending = M_None &
    Tree[((i-2)/2)+1].chanC[(i%2)+1].opcode = C_None
==>
begin
    Tree[((i-2)/2)+1].chanC[(i%2)+1].para := TtoN;
    Tree[((i-2)/2)+1].chanC[(i%2)+1].opcode := ReleaseData;
    Tree[i].master_pending := pending_ReleaseAck;
    Tree[i].cache.state := None;
endrule;
endruleset;

--special for l3
rule "L3_send_release_Tip"
    Tree[1].cache.state = Tip &
    forall k : branchType do
        Tree[1].directory[k] = None &
        Tree[1].chanA[k].opcode = A_None
    endforall
==>
begin
    Tree[1].cache.state := None;
endrule;

ruleset b : branchType do
rule "L3_receive_AcquirePerm_None"
    Tree[1].chanA[b].opcode = AcquirePerm &
    Tree[1].cache.state = None
==>
begin
    Tree[1].cache.state := Tip;
endrule;

rule "L3_receive_AcquireBlock"
    Tree[1].chanA[b].opcode = AcquireBlock &
    Tree[1].cache.state = None
==>
begin
    Tree[1].cache.state := Tip;
endrule;
endruleset;

invariant "mutual_exclusion"
forall i : nodeId do
forall j : nodeId do
    i != j ->
    !(Tree[i].cache.state = Tip & Tree[j].cache.state = Tip)
endforall
endforall;

invariant "coherence_tree_1"
forall i : cacheId do
    Tree[i].cache.state = Trunk ->
    exists b :branchType do
        Tree[i].directory[b] = Tip
    end
endforall &
forall i : l1Id do
    Tree[i].cache.state != Trunk
endforall;

invariant "coherence_tree_2"
forall i : cacheId do
    forall b1 : branchType do
        forall b2 : branchType do
            b1 != b2 & Tree[i].directory[b1] = Tip -> Tree[i].cache.state != Branch & Tree[i].directory[b2] != Branch
        endforall
    endforall
endforall;

invariant "coherence_tree_3"
forall i : cacheId do
    Tree[i].cache.state = None ->
    forall b : branchType do
        Tree[i].directory[b] = None
    endforall
endforall;