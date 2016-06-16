program ej5;
var resultado : integer;
anteultimo : integer;
ultimo : integer;
vueltas : integer;
T : integer;

begin
  anteultimo := 0;
  ultimo := 1;
  resultado := 1;
  readln(T);
  while resultado <= T do
    begin
        anteultimo := ultimo;
        ultimo := resultado;
        resultado := anteultimo+ultimo;        
     end;
   writeln(resultado);
end.