program ej8;
uses crt;
var minimo: integer;
    vueltas: integer;
    contador: Integer;
    numero: integer;
    b: Boolean; 
begin
readln(vueltas);
  readln(numero);
  minimo:= numero;
  readln(numero);
  contador:= 2;
  b:= minimo < numero;
   while (b) and (vueltas > contador) do
    begin
      contador:= contador + 1;
      readln(numero);
      b:= minimo < numero;
    end;
  if b then
      begin
      writeln('el primer numero es el minimo');
      end
      else
      begin
      writeln('el primer numero no es el minimo');
      end; 
  readkey();
 end.