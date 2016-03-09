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

{anexar uma lista com outra}
procedure anexa(L:lista; M:lista);
begin
        if (L = nil) then
                L:= M
        else
        begin
                while (L^.prox <> nil) do
                        L:=L^.prox;
        end;
        L^.prox:=M;
end;


procedure exiba(L:lista);
begin
        while (L <> nil) do
        begin
                write(L^.item);
                L:=L^.prox;
        end;
end;


var L, M :lista;
begin
	clrscr;
	L:= no(1, no(2, no(3, no(4, no(5, no(6, no(7, nil)))))));
        M:=no(8, no(9, no(0, nil)));
        write('Lista L: ');
        exiba(L);
        writeln;
        write('Lista M: ');
        exiba(M);
        writeln;
        writeln;
	anexa(L,M);
        write('Lista L com ANEXO: ');
        exiba(L);
        writeln;
        write('Lista M: ');
        exiba(M);
	readln;
end.
