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

{verificar o enesimo item da lista}
function enesimo(x:titem; L:lista):integer;
var cont: integer;
begin
        cont:= 1 ;
        if (L^.prox = nil) then write('O £nico item ‚:' , L^.item)
        else
        begin
                while (cont <> x) do
                begin
                        inc(cont);
                        L:=L^.prox;
                end;
        end;

        enesimo:=L^.item;
end;

var L:lista;
begin
	clrscr;
	L:= no(2, no(9, no(7, no(5, no(1, no(5, no(3, nil)))))));
	write(enesimo(2,L));
	readln;
end.
