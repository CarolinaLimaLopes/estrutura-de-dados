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
{substituir x por y na lista}
procedure sub(x,y:titem; L:lista);
begin
	while(L <> nil) do
        begin
                if (L^.item=x) then
                        L^.item:= y;
                L:=L^.prox;
        end;
end;

procedure exiba(L:lista);
begin
        while (L <> nil) do
        begin
                write(L^.item);
                L:= L^.prox;
        end;
end;


var L:lista;
Begin
	clrscr;
	L:= no(1, no(9, no(7, no(5, no(1, no(5, no(3, nil)))))));
	sub(5,8,L);
       exiba(L);
	readln;
End.
