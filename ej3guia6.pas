program ej3guia6;
type
  vnum=array[1..50]of integer;
  vpos=array[1..50]of integer;
  vneg=array[1..50]of integer;

procedure cargavec(var numeros:vnum;n:byte);
var
  i:byte;
begin
  for i:=1 to n do
    begin
    writeln('ingrese un valor + o -');
    readln(numeros[i]);
    end;
end;
procedure muestravec (numeros:vnum;n:byte);
var
  i:byte;
begin
  for i:=1 to n do
      write(numeros[i],' ');
end;
procedure analisigno(var negativos:vneg;var positivos:vpos; var k,j:byte;numeros:vnum;n:byte);
var
  i:byte;
begin
  j:=0;
  k:=0;
  for i:=1 to n do
  begin
  if (numeros[i])>0 then
    begin
      j:=j+1;
      positivos[j]:=numeros[i];
    end
  else
    begin
    k:=k+1;
    negativos[k]:=numeros[i];
    end;
   end;
end;
procedure muestraneg(negativos:vneg;k:byte);
var
  i:byte;
begin
   for i:=1 to k do
      write(negativos[i],' ');
end;
procedure muestrapos(positivos:vpos;j:byte);
var
  i:byte;
begin
   for i:=1 to j do
      write(positivos[i],' ');
end;
var
  n,j,k:byte;
  numeros:vnum;
  positivos:vpos;
  negativos:vneg;
begin
  repeat
  writeln('ingrese la cantidad de numero que ingresara');
  readln(n)
  until (n>0);
  cargavec(numeros,n);
  writeln('arreglo inicial');
  muestravec(numeros,n);
  analisigno(negativos,positivos,k,j,numeros,n);
  writeln();
  if k>j then
   begin
   writeln('arreglo negativo tiene mas numeros');
     muestrapos(negativos,k);
     writeln();
   end
  else
   if k<j then
    begin
     writeln('arreglo positivo tiene mas numeros');
     muestrapos(positivos,j);
     writeln();
    end
  else
   begin
     writeln(' ambos arreglos tienen la misma cantidad de numeros');
     writeln('arreglo negativo');
     muestrapos(negativos,k);
     writeln();
     writeln('arreglo positivo');
     muestrapos(positivos,j);
     writeln();
   end;
  readln;
end.

