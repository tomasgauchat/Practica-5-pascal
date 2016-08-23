program aleatorio;

uses crt;

var i : integer;
    array_1 : array[1..15] of integer;
    array_2 : array[1..10] of integer;
    array_3 : array[1..25] of Integer;
    j : Integer;
    k : Integer;
    aux : Integer;

const array_1_len : integer = 15;
const array_2_len : integer = 10;
const array_3_len : integer = 25;


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
    randomize(); //habilitar para generar en cada ejecución una lista distinta de números.
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
    randomize(); //habilitar para generar en cada ejecución una lista distinta de números.
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

    //TODO: resolver TP



for i := 1 to 15-1 do
    begin
      for j := i+1 to 15 do
        begin
          if array_1 [i] > array_1 [j] then
            begin
              aux := array_1[i];
              array_1[i] := array_1[j];
              array_1[j] := aux;

            end;
        end;
    end;

    

    for i := 1 to 10-1 do
    begin
      for j := i+1 to 10 do
        begin
          if array_2[i] > array_2[j] then
            begin
              aux := array_2[i];
              array_2[i] := array_2[j];
              array_2[j] := aux;

            end;
        end;
    end;



i := 1;
j := 1;

for k:= 1 to 25 do
begin
      if  (j <= 10) and (i <= 15) then
      begin
            if array_1[i] <= array_2[j] then
                    begin
                    if array_1[i] = array_2[j] then
                            begin
                            array_3[k]:= array_1[i];
                            j:= j + 1;
                            i:= i + 1;
                            end
                            else
                            begin
                            array_3[k]:= array_1[i];
                            i:= i + 1;
                            end;
                    end
                    else
                    begin
                    array_3[k]:= array_2[j];
                    j:= j + 1;
                    end;
      end
      else
      begin
             if i > 15 then
            begin
                                if j <= 10 then
                                begin

                                        array_3[k]:= array_2[j];
                                        j:= j + 1;
                                end
            end
            else
            begin
                                if i<= 15 then
                                begin
                                    array_3[k]:= array_1[i];
                                    i:= i + 1;
                                end;
               end;   
    end;
     
end;

readkey();
for k:= 1 to 15 do
begin
    writeln(array_1[k]);
end;
readkey();
clrscr();
readkey();
for k:= 1 to 10 do
begin
    writeln(array_2[k]);
end;
readkey();

clrscr();

for k:= 1 to 25 do
begin
readkey();
    writeln(array_3[k]);
end;
end.
=======
program aleatorio;

uses crt;

var i : integer;
    array_1 : array[1..15] of integer;
    array_2 : array[1..10] of integer;
    array_3 : array[1..25] of Integer;
    j : Integer;
    k : Integer;
    aux : Integer;

const array_1_len : integer = 15;
const array_2_len : integer = 10;
const array_3_len : integer = 25;


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
    randomize(); //habilitar para generar en cada ejecución una lista distinta de números.
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
    randomize(); //habilitar para generar en cada ejecución una lista distinta de números.
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

    //TODO: resolver TP



for i := 1 to 15-1 do
    begin
      for j := i+1 to 15 do
        begin
          if array_1 [i] > array_1 [j] then
            begin
              aux := array_1[i];
              array_1[i] := array_1[j];
              array_1[j] := aux;

            end;
        end;
    end;

    

    for i := 1 to 10-1 do
    begin
      for j := i+1 to 10 do
        begin
          if array_2[i] > array_2[j] then
            begin
              aux := array_2[i];
              array_2[i] := array_2[j];
              array_2[j] := aux;

            end;
        end;
    end;



i := 1;
j := 1;

for k:= 1 to 25 do
begin
      if  (j < 10) and (i < 15) then
      begin
      if array_1[i] <= array_2[j] then
            begin
            if array_1[i] = array_2[j] then
                    begin
                    array_3[k]:= array_1[i];
                    j:= j + 1;
                    i:= i + 1;
                    end
                    else
                    begin
                    array_3[k]:= array_1[i];
                    i:= i + 1;
                    end;
            end
            else
            begin
            array_3[k]:= array_2[j];
            j:= j + 1;
            end;
      end
      else
      begin
             if i > 15 then
            begin
                if j <= 10 then
                begin

                        array_3[k]:= array_2[j];
                        j:= j + 1;
                end
            end
            else
            begin
                if i<= 15 then
                begin
                 if array_1[i] = array_2[j] then
                  begin
                    array_3[k] := array_1[i];
                    i := i + 1;
                    j := j + 1;
                  end
                 else
                 begin
if j > 10 then
  
                  begin
                    array_3[k]:= array_1[i];
                    i:= i + 1;
                  end;
               end;   
            end;
      end;
      end;
end;

readkey();
for k:= 1 to 15 do
begin
    writeln(array_1[k]);
end;
readkey();
clrscr();
readkey();
for k:= 1 to 10 do
begin
    writeln(array_2[k]);
end;
readkey();

clrscr();

for k:= 1 to 25 do
begin
readkey();
    writeln(array_3[k]);
end;
end.
