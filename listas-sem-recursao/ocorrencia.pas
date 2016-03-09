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

{verificar quantas vezes x ocorre na lista}
function ocorrencia(L:lista; x:titem):integer;
var cont: integer;
begin
	cont:= 0;
	while(L <> nil) do
        begin
                if (L^.item=x) then
                        cont:= cont + 1;
                L:=L^.prox;
        end;
        ocorrencia:=cont;
end;

var L:lista;
begin
	clrscr;
	L:= no(1, no(9, no(7, no(5, no(1, no(5, no(3, nil)))))));
	write(ocorrencia(L,5));
	readln;
end.
