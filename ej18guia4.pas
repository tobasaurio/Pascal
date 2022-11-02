program ej18guia4;
var
numero,max:integer;
conts,cont,posmax:byte;

begin
  writeln('ingrese un numero');
  readln(numero);
  cont:=0;
  max:=0;
  while numero<>0 do//subconjunto
  begin
    conts:=0;
    cont:=cont+1;
    while numero<>0 do//cero terminacion
    begin
      conts:=conts+1;
      readln(numero);
    end;
    if conts>max then
     begin
       max:=conts;
       posmax:=cont;
     end;
    writeln('la cant de num del subconjunto es',conts);
    readln(numero);
  end;
  writeln('el orden del conjunto mas numeroso es',posmax,'con',max,'numeros');



  readln;
  end.

