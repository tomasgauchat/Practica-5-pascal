
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
                                                end;//if numero > anteultimo then
                                end; //if numero<> 0 then
                        readln(numero);
                end; //while (numero <> 0) and (ultimo <> 0) do
        end; //if numero<> 0 then
end; //if numero <> 0 then

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
                        writeln('No hay un segundo numero');  
                end; // if anteultimo <> 0 then
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
                end; //if anteultimo <> 0 then
end; //if ultimo <> 0 then

end.