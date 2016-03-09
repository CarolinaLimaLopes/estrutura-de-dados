Program Listas ;
uses crt;
type titem = integer;
type lista = ^bloco;
		bloco = record
			item: titem;
			prox: lista;
		end;

function no(x:titem; p:lista):lista;
var n: lista;
begin
        new(n);
        n^.item:= x;
        n^.prox:= p;
        no:= n;
end;
{verificar o enesimo da lista}
function enesimo(x:titem; L:lista):integer;
begin
        if (L = nil) then halt
        else if (x = 1) then enesimo:= L^.item
        else enesimo:= enesimo(x - 1 , L^.prox);
end;

var L:lista;
begin
	clrscr;
	L:= no(2, no(9, no(7, no(5, no(1, no(5, no(3, nil)))))));
	write(enesimo(3,L));
	readln;
end.
