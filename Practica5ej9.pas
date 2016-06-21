program ej9;
var numero : integer;
    minimo : Integer;
    
begin
    readln(numero);
    //minimo := 0;
    minimo := numero;
    while (numero <> 0) and (minimo <= numero) do
    begin
      readln(numero);
    end; 

    if numero = 0 then
    begin
        write(minimo);
        writeln(' Es el mas chico');
    end
    else
    begin
      write(minimo);
      writeln(' No es el mas chico');
      write(numero);
      writeln(' Es el mas chico');
    end
    
end.