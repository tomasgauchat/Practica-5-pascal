
program ej12;
var ultimo : integer;
    anteultimo : integer;
    numero : integer;

begin

readln(numero);

if numero <> 0 then
begin
      readln(numero);
      if numero<> 0 then
        begin
          //codigo programa
        end;  
end;



ultimo := 0;
anteultimo := 0;

readln(numero);

if numero <> 0 then
begin
            ultimo := numero;
end;

if ultimo <> 0 then
begin
            readln(numero);
end;


if (ultimo > numero) and (numero <> 0) then
begin
            anteultimo := numero;
end
else
begin
            anteultimo := ultimo;
            ultimo := numero 
end;

if (numero <> 0) and (ultimo <> 0) then
begin
            readln(numero);
end;

while (numero <> 0) and (ultimo <> 0) do
begin
        if numero > ultimo then
        begin
                anteultimo := ultimo;
                ultimo := numero;
        end
        else
        begin
                if numero > anteultimo then
                begin
                    anteultimo := numero;
                end;
        end;
        readln(numero);
end;
if ultimo <> 0 then
begin
        write('El numero mas grande es ');
        writeln(ultimo);
        if anteultimo <> 0 then
        begin
                Write('El segundo numero mas grande es ');
                writeln(anteultimo);
        end
        else
        begin
                writeln(ultimo);
                writeln('No hay un segundo numero');  
        end;
end
else
begin
        if anteultimo <> 0 then
        begin
                write('El numero mas grande es ');
                writeln(anteultimo);
        end
        else
        begin
                WriteLn('No hay numeros en su conjunto');
        end;
end;
        
end.