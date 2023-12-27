var
	x : 1 .. 100;
	y : real(4, 99);
	y2 : real(3, 10);

externfun floor_int(x : real(4, 99)) : 1 .. 100 "floor_int.h";
	
startstate
	y := 4.8;
	x := floor_int(y);
	y2 := y;
end;

rule x = 1 ==> begin x := 2; end;

invariant x = 1;
