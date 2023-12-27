const clientNUMS : 2; -- 设置成2，比较方便观察结果
type state : enum{I, T, C, E}; -- 4种进程的状态

     client: 1..clientNUMS;

var n : array [client] of state; -- 存储各个进程状态的数组

    x : boolean;   -- 临界区的标志

startstate "Init" -- 初始状态时，每个进程都是I状态。 临界区为“可申请”状态
 for i: client do
    n[i] := I;
  end;
  x := true;
endstartstate;

ruleset i : client   do   -- 规则集，使得每个进程都都按照这个规则集运行
rule "Try" n[i] = I ==> begin
      n[i] := T;endrule;

rule "Crit"
      n[i] = T & x = true ==>begin
      n[i] := C; x := false; endrule;

rule "Exit"
      n[i] = C ==>begin
      n[i] := E;endrule;


rule "Idle"
      n[i] = E ==> begin n[i] := I;
      x := true;endrule;
endruleset;



ruleset i:client; j: client do   -- 对于每2个进程之间，都满足该一致性协议
invariant "coherence"
 i != j -> (n[i] = C -> n[j] != C);
endruleset;
