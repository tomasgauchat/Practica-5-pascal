
program ej12;
var ultimo : integer;
    anteultimo : integer;
    numero : integer;

begin

readln(numero);

if numero <> 0 then

begin

      ultimo := numero;  
      readln(numero);
      
      if numero<> 0 then
        begin
        
        if numero < ultimo then
          begin
                anteultimo := numero;
          End
          else
          begin
                anteultimo := ultimo;
                ultimo := numero;
          end;
        
        ReadLn(numero);

         while (numero <> 0) do
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
                                                end;//if numero > anteultimo then
                                end; //if numero<> 0 then
                        readln(numero);
                end; //while (numero <> 0) and (ultimo <> 0) do
        
                WriteLn(ultimo, anteultimo);
        end
        else
        begin
                writeln('No hay un segundo numero'); 
        end; //if numero<> 0 then
end
else
begin
        WriteLn('No hay numeros en su conjunto');
end; //if numero <> 0 then

end.