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

{verificar se x pertence na lista}
function pertence(x:titem; L:lista):boolean;
begin
	if (L = nil) then pertence:= false
     else if ( x = L^.item ) then pertence:= true
	else pertence:= pertence(x, L^.prox);
end;

var L:lista;
begin
	clrscr;
	L:= no(1, no(9, no(7, no(5, no(1, no(5, no(3, nil)))))));
	write(pertence(2,L));
	readln;
end.
