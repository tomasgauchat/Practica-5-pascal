program ejdos;
var cantidad : integer;
numero : integer;
i : integer;
acumulador : integer;
begin
   acumulador := 0;
   readln(cantidad);
   readln(numero);
   acumulador := numero;
   for i := 1 to cantidad-2 do
    
        begin
                readln(numero);
                writeln(acumulador-numero);
                acumulador := numero;        
        end;
        readln(numero);
end.