program ej11;
var numero : integer;
    negativo : integer;

begin
  readln(numero);
  while  (numero > 0 ) do
    begin
    readln(numero);
    end;
if numero < 0 then
    begin
    write(numero);
    writeln(' Es negativo');
    end
    else
    begin
    writeln('No hay ninguno numero negativo');
    end
end.