var x : 1 .. 5;
startstate begin x := 1; end;
rule true ==> begin x := x + 1; end;
