program Tparreglo;

uses crt;

var i : integer;
    array_1 : array[1..15] of integer;
    array_2 : array[1..10] of integer;
    array_3 : array[1..25] of integer;
    C1,C2,C3,AUX: integer;

const array_1_len : integer = 15;
const array_2_len : integer = 10;

function existe_en_array_1(numero : integer): Boolean;
var i : integer;
begin 
        i := 1;
        while (array_1[i] <> numero) and (i < array_1_len) do
        begin
            i := i + 1;
        end;  
        existe_en_array_1 := array_1[i] = numero;
end;

function existe_en_array_2(numero : integer): Boolean;
var i : integer;
begin 
        i := 1;
        while (array_2[i] <> numero) and (i < array_2_len) do
        begin
            i := i + 1;
        end;  
        existe_en_array_2 := array_2[i] = numero;
end;

procedure asignar_valores_array_1();
var i, numero_aleatorio :integer;
begin
    //randomize(); //habilitar para generar en cada ejecuciÃ³n una lista distinta de nÃºmeros.
    i := 1;
    while i <= array_1_len do
    begin
        numero_aleatorio := round(random()*20+1);//genera un numero aleatorio entre 1 y 20
        if not existe_en_array_1(numero_aleatorio) then
        begin
            array_1[i]:=numero_aleatorio;
            i := i +1;
        end;
    end;
end;

procedure asignar_valores_array_2();
var i, numero_aleatorio :integer;
begin
    //randomize(); //habilitar para generar en cada ejecuciÃ³n una lista distinta de nÃºmeros.
    i := 1;
    while i <= array_2_len do
    begin
        numero_aleatorio := round(random()*20+1);//genera un numero aleatorio entre 1 y 20
        if not existe_en_array_2(numero_aleatorio) then
        begin
            array_2[i]:=numero_aleatorio;
            i := i +1;
        end;
    end;
end;

begin 
    asignar_valores_array_1();
    asignar_valores_array_2();

//arranca el programa

For C1 := 1 to 14 do
begin
    For I:= (C1+1) to 15 do
    begin
        If array_1 [c1] > array_1 [i] then 
        begin
            AUX := array_1 [c1];
            array_1 [c1] := array_1[i];
            array_1[i] := AUX;
        end; //If array_1 (C1) > array_1(I) then
    end; //For I:= (C1+1) to 15 do
end; //For C1 := 1 to 14 do

Writeln('Comienza arreglo1');
for i := 1 to 15 do
begin
writeln(array_1[i]);
end; //prueba array_1}
writeln('termina arreglo1');
readkey();

for c2 := 1 to 9 do
begin
    for i := (c2+1) to 10 do
    begin
        if array_2[c2] > array_2[i] then
        begin
            aux := array_2 [c2];
            array_2 [c2] := array_2 [i];
            array_2[i] := aux;
        end; //if array_2(c2) > array_2(i) then
    end; //for i := (c2+1) to 10 do
end; //for c2 := 1 to 9 do

writeln('comienza arreglo2');
for i := 1 to 10 do
begin
writeln(array_2[i]);
end; //prueba array_2}
writeln('finaliza arreglo2');
readkey();

c1:=0;
c2:=0;
c3:=0;

while (c1<=15) and (c2<=10) do
begin
    if array_1[c1] < array_2[c2] then
    begin
        array_3[c3] := array_1[c1];
        c1 := c1+1;
    end 
    else
    begin
        if array_1[c1] = array_2[c2] then
        begin
            array_3[c3] := array_1 [c1];
            c1 := c1+1;
            c2 := c2+1;
        end
        else
        begin
            array_3[c3] := array_2 [c2];
            c2 := c2+1;
        end; //if array_1(c1) = array_2(c2) then
    end; //if array_1(c1) < array_2(c2) then
c3:=C3+1;
end;//while c1<10 and c2<15 do

for i:= 1 to 25 do
  begin
  writeln(array_3[i]); 
  end;
{writeln(c1);
writeln(c2);}
writeln('hasta aca acomoda los 2 arreglos');
readkey();

{While (C1<15) or (c2<10) do
begin
      If c1=15 then
      begin
        array_3[c3] := array_2[c2];
        C2:=C2+1;
      end // If c1=15 do
    else
      begin
        array_3[c3] :=array_1[c1];
        c1:=c1+1;
      end;// If c1=15 do
c3:= c3+1;
end;//While C1 < 15 or c2<10 do} 

if c1 >= 15 then
  begin
        while c2<=10 do
        begin
          array_3[c3] := array_2[c2];
          c3 := c3+1;
          c2 := c2+1;
        end;//while c2<10 do
  end
  else
  begin
        while c1<=15 do
          begin
           array_3[c3] := array_1[c1];
           c3 := c3+1;
           c1 := c1+1; 
          end; //while c1<15 do
  end; //if c1 = 15 then
for i:= 1 to 25 do
  begin
  writeln(array_3[i]); 
  end;

writeln('los dos acomodados');
{writeln(c1);
writeln(c2);
writeln(c3);}
End.