program ejuno;
uses math;
var numero : integer;
contador : integer;

begin
        contador:= 2;
        readln(numero);
        while numero <> 0 do
        begin
                  if power(-1 , contador) = 1 then
                  begin
                            writeln(numero);
                            writeln(numero*numero);
                  end; 
                  contador:= contador+1;
                  readln(numero); 

        end;
end.