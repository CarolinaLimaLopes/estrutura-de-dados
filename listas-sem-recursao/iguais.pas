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

{verificar se duas listas sao iguais}
function verifica(L:lista; M:lista):boolean;
begin
        if (L = nil) or (M = nil) then
                verifica:= false
        else
                if (L^.item <> M^.item) then
                        verifica:= false
                else
                        L:=L^.prox^.prox;
                        M:=M^.prox^.prox;

end;

procedure exiba(L:lista);
begin
        while (L <> nil) do
        begin
                write(L^.item);
                L:=L^.prox;
        end;
end;


var L, M, A, B :lista;
begin
	clrscr;
	L:= no(1, no(2, no(0, nil)));
        M:= no(1, no(2, no(0, nil)));
        write('Lista L: ');
        exiba(L);
        writeln;
        write('Lista M: ');
        exiba(M);
        writeln;
        write(verifica(L,M));
        writeln;
        writeln;

        A:= no(1, no(2, no(5, nil)));
        B:= no(6, no(3, nil));
        write('Lista A: ');
        exiba(A);
        writeln;
        write('Lista B: ');
        exiba(B);
        writeln;
        write(verifica(A,B));

	readln;
end.
