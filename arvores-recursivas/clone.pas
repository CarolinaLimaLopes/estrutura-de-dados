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

{fazer um clone da arvore}
function clone(A:Arvb):Arvb;
begin
        if (A = nil) then clone:= nil
        else clone:= no(clone(A^.esq), A^.item, clone(A^.dir));
end;

function exiba(A: Arvb):Arvb;
begin
	if (A = nil) then exit;
	write(A^.item);
	A:= A^.esq;
	A:= A^.dir;
end;


var A, B: Arvb;
begin
	clrscr;
	A:= no(no(no(nil,0,nil),1,nil),2,no(no(nil,4,nil),3,no(nil,5,nil)));
    exiba(A);
	writeln;
	writeln;
	clone(A, B);
	exiba(B);
	readln;
end.
