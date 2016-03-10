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

{verificar se x esta na arvore}
function pert(x:titem; A:Arvb):boolean;
begin
        if (A = nil) then pert:= false
		else if (A^.item = x) then pert:= true
        else pert:= pert(x, A^.esq) or pert(x, A^.dir);
end;


var A: Arvb;
begin
	clrscr;
	A:= no(no(no(nil,0,nil),1,nil),2,no(no(nil,4,nil),3,no(nil,5,nil)));
    pert(4,A);
	writeln;
	pert(8,A);
	readln;
end.
