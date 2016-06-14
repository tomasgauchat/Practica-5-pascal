program ej10;
var vueltas : integer;
    numero : integer;
    acumulador : integer;
    contador : Integer;
begin
  contador := 2;
  readln(vueltas);
  readln(numero);
  acumulador := numero;
  readln(numero);
  while (acumulador < numero) and (contador < vueltas) do
    begin
      acumulador := numero;
      readln(numero);
      contador := contador + 1;
    end;
    if acumulador >= numero then
        begin
         writeln('No estan ordenados de menor a mayor'); 
        end
    else
        begin
          writeln('Estan ordenados de menor a mayor');
        end;
end.