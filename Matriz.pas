Program Matrices;

var matriz : array [1..3,1..4] of real;
var i : integer;
dato,aux_det_a,aux_det_b : real;

function determinante(dato: real): real;
    begin
      aux_det_a := matriz[1,1]*matriz[2,2]*matriz[3,3]+matriz[1,2]*matriz[2,3]*matriz[3,1]+matriz[1,3]*matriz[2,1]* matriz[3,2];
      
      aux_det_b := matriz[3,1]*matriz[2,2]*matriz[1,3]+matriz[3,2]*matriz[2,3]*matriz[1,1]+matriz[3,3]*matriz[2,1]*matriz[1,2];

      determinante:= aux_det_a - aux_det_b;
    end;//funcion para sacar el determinante

function resolucion_x(dato: real): real;
    begin
      aux_det_a := matriz[1,4]*matriz[2,2]*matriz[3,3]+matriz[1,2]*matriz[2,3]*matriz[3,4]+matriz[1,3]*matriz[2,4]* matriz[3,2];
      
      aux_det_b := matriz[3,4]*matriz[2,2]*matriz[1,3]+matriz[3,2]*matriz[2,3]*matriz[1,4]+matriz[3,3]*matriz[2,4]*matriz[1,2];

      resolucion_x:= aux_det_a - aux_det_b;
      resolucion_x:= resolucion_x / determinante(5);
    end;//funcion para sacar el det de x

function resolucion_y(dato: real): real;
    begin
      aux_det_a := matriz[1,1]*matriz[2,4]*matriz[3,3]+matriz[1,4]*matriz[2,3]*matriz[3,1]+matriz[1,3]*matriz[2,1]* matriz[3,4];
      
      aux_det_b := matriz[3,1]*matriz[2,4]*matriz[1,3]+matriz[3,4]*matriz[2,3]*matriz[1,1]+matriz[3,3]*matriz[2,1]*matriz[1,4];

      resolucion_y:= aux_det_a - aux_det_b;
      resolucion_y:= resolucion_y / determinante(5);
    end;//funcion para sacar el det de y

function resolucion_z(dato: real): real;
    begin
      aux_det_a := matriz[1,1]*matriz[2,2]*matriz[3,4]+matriz[1,2]*matriz[2,4]*matriz[3,1]+matriz[1,4]*matriz[2,1]* matriz[3,2];
      
      aux_det_b := matriz[3,1]*matriz[2,2]*matriz[1,4]+matriz[3,2]*matriz[2,4]*matriz[1,1]+matriz[3,4]*matriz[2,1]*matriz[1,2];

      resolucion_z:= aux_det_a - aux_det_b;
      resolucion_z:= resolucion_z / determinante(5);
    end;//funcion para sacar el det de z    

begin//comienza el programa
for i:= 1 to 3 do
  begin
    writeln('ingrese dato fila ', i ,' columna 1');
    readln(dato);
    matriz[i,1] := dato;
    writeln('ingrese dato fila ', i ,' columna 2');
    readln(dato);
    matriz[i,2] := dato;
    writeln('ingrese dato fila ', i ,' columna 3');
    readln(dato);
    matriz[i,3] := dato;
    writeln('ingrese resultado fila ', i);
    readln(dato);
    matriz[i,4] := dato;
  end;//datos ingresados en la matriz

writeln('Su determinante es:');
writeln(determinante(5):2:2);
writeln('El valor de x es:');
writeln(resolucion_x(5):2:2);
writeln('El valor de y es:');
writeln(resolucion_y(5):2:2);
writeln('El valor de z es:');
writeln(resolucion_z(5):2:2);


end.