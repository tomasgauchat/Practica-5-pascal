program ej4;
var resultado : integer;
anteultimo : integer;
ultimo : integer;
vueltas : integer;
i : integer;
begin
  anteultimo := 0;
  ultimo := 1;
  resultado := 1;
  readln(vueltas);
  writeln(anteultimo);
  writeln(ultimo);
  writeln(resultado);
  for i := 4 to vueltas do
    
     begin
        anteultimo := ultimo;
        ultimo := resultado;
        resultado := anteultimo+ultimo;
        writeln(resultado);
     end;
end.