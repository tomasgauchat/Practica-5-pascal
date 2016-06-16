program ej6;

uses crt;

var vueltas: integer;
    contador: integer;
    a: integer;
    b: integer;
    c: integer;
    i: integer;
    

begin
 readln(vueltas);

        readln(a);
        readln(b);
        readln(c);
        contador:= 0;
 for i:= 1 to vueltas-2 do
       begin
       contador:= contador + 1;
       
       if (a>b) and (a>c) then
               begin
               write(a);
               writeln(' es el mayor');
               write('su posicion es ');
               writeln('1/3');
               end
       else
               begin
               if (b>a) and (b>c) then
                 begin
                      write(b);
                      writeln(' es el mayor');
                      write('su posicion es ');
                      writeln('2/3');
                  end
               else
               if (c>a) and (c>b) then
                    begin
                    write(c);
                      writeln(' es el mayor');
                      write('su posicion es ');
                      writeln('3/3');
                    end
                else
                    begin
                    writeln('hay 2 o mas numeros iguales');
                    
                    
                    end;
                
                
                
                end;
        a:=b;
        b:=c;
        readln(c);        
       
       
       
       
       
       end;
 
 readkey();
 
 
  
end.