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

{determinar tamanho da arvore}
function tam(A:Arvb):integer;
begin
        if (A = nil) then tam:= 0
        else tam:= tam(A^.esq) + tam(A^.dir) + 1;
end;



var A: Arvb;
begin
	clrscr;
	A:= no(no(no(nil,0,nil),1,nil),2,no(no(nil,4,nil),3,no(nil,5,nil)));
     writeln(tam(A));
	readln;
end.
