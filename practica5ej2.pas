program ejdos;

uses crt;

var cantidad : integer;
numero : integer;
i : integer;
acumulador : integer;
begin
   acumulador := 0;
   readln(cantidad);
   readln(numero);
   acumulador := numero;
   for i := 2 to cantidad do
   begin
        readln(numero);
        writeln(acumulador-numero);
        acumulador := numero;        
   end;
   readkey();
end.