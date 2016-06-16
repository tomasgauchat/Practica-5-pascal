program ej7;
var vueltas:integer;
    maximo: integer;
    numero: integer;
    i: integer;
    ultimo: integer;
    diferencia: integer;

begin
readln(vueltas);
maximo:= 0;

readln(numero);
ultimo:= numero;
readln(numero);
maximo:=ultimo - numero;
ultimo:= numero;


for i:= 3 to vueltas do
    begin
    readln(numero);
    diferencia:= ultimo - numero;
    
        if diferencia > maximo then
        begin
        maximo:= diferencia;
        
        end;      
    
        
    
    
    end;
  writeln(maximo);
    




  
end.