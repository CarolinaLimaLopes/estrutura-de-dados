Program Arvore ;
uses crt;
type titem = integer;
type Arvb = ^bloco;
		bloco = record
			esq: Arvb;
			item: titem;
			dir: Arvb;
		end;

function no(e:Arvb; x:titem; d:Arvb):Arvb;
var n: Arvb;
begin
        new(n);
        n^.esq:= e;
        n^.item:= x;
        n^.dir:= d;
        no:= n;
end;

function max(x,y:titem):titem;
begin
		if (x > y) then max:=x
		else max:= y;

end;

{determinar altura da arvore}
function alt(A:Arvb):integer;
begin
        if (A = nil) then alt:= 0
        else alt:= max(alt(A^.esq),alt(A^.dir));
end;


var A: Arvb;
begin
	clrscr;
	A:= no(no(no(nil,0,nil),1,nil),2,no(no(nil,4,nil),3,no(nil,5,nil)));
     writeln(alt(A));
	readln;
end.
