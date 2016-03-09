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

{fazer clone de uma lista}
function clone( L:lista):lista;
begin
	if (L = nil) then clone:= nil
        else clone:= no(L^.item, clone(L^.prox));
end;

procedure exiba(L:lista);
begin
        while (L <> nil) do
        begin
                write(L^.item);
                L:=L^.prox;
        end;
end;

var L, M:lista;
begin
	clrscr;
	L:= no(1, no(9, no(7, no(5, no(1, no(5, no(3, nil)))))));
	M:= (clone(L));
	writeln;
	exiba(L);
	writeln;
	exiba(M);
	readln;
end.
