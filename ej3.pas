program ej3;
var numero : integer;
acumulador : integer;
begin
  readln(numero);
  acumulador := numero;
  readln(numero);
  while numero <> 0  do
        begin
          writeln(acumulador-numero);
          acumulador := numero;
          readln(numero);
        end;
end.
