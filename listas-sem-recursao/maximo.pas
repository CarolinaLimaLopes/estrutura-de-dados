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

{verificar item maximo da lista}
function max(L:lista):integer;
var maior: integer;
        aux: lista;
begin
        if (L = nil) then write('Lista vazia')
        else if (L^.prox = nil) then maior:= L^.item
        else
        begin
                maior:=L^.item;
                aux:=L^.prox;
                repeat
                        if (maior < aux^.item) then
                                maior:= aux^.item;
                        aux:=aux^.prox;
                until (aux^.prox = nil);
        end;
        max:=maior;
end;

var L:lista;
begin
	clrscr;
	L:= no(1, no(9, no(7, no(55, no(10, no(5, no(3, nil)))))));
	write(max(L));
	readln;
end.
