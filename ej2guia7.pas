program ej2guia7;
type
  tm=array[1..50,1..50]of integer;
procedure cargamatriz(var mar:tm; var n,m:byte);
 var
   i,j:byte;
 begin
   writeln('ingresar el valor de n');
   readln(n);
   writeln('ingresar el valor de m');
   readln(m);
   for i:=1 to n do
    for j:=1 to m do
     begin
      writeln('ingresa un valor');
      readln(mar[i,j]);
     end;
 end;
procedure muestramatriz(mar:tm;n,m:byte);
 var
   i,j:byte;
begin
   for i:=1 to n do
    begin
     for j:=1 to m do
       write(mar[i,j],' ');
     writeln;
    end;
end;
function filamayor(mar:tm;n,m:byte):byte;
 var
   i,j:byte;
   suma,sumamax:integer;
 begin
   sumamax:=0;
   for i:=1 to n do
    begin
    suma:=0;
    for j:=1 to m do
       suma:=suma+mar[i,j];
    if suma>sumamax then
     begin
     sumamax:=suma;
     filamayor:=i;
     end;
    end;
 end;
function colummayor(mar:tm;n,m:byte):byte;
 var
   i,j:byte;
   suma,sumamax:integer;
 begin
   sumamax:=9999;
   for j:=1 to m do
    begin
    suma:=0;
    for i:=1 to n do
       suma:=suma+mar[i,j];
    if suma<sumamax then
     begin
     sumamax:=suma;
     colummayor:=j;
     end;
    end;
 end;
procedure mostrafila(mar:tm;filamax,m:byte);
var
  j:byte;
begin
 for j:=1 to m do
  writeln(mar[filamax,m]);
end;
procedure mostracolum(mar:tm;n,colummax:byte);
var
  i:byte;
begin
 for i:=1 to n do
  writeln(mar[n,colummax]);
end;
var
  mar:tm;
  n,m,filamax,colummax:byte;
begin
  cargamatriz(mar,n,m);
  muestramatriz(mar,n,m);
  filamax:=filamayor(mar,n,m);
  colummax:=colummayor(mar,n,m);
  writeln('el indice de la mayor fila es ',filamax,' y la fila es:');
  mostrafila(mar,filamax,m);
  writeln('el indice de la mayor columna es ',colummax,' y la columna es:');
  mostracolum(mar,n,colummax);
  readln;
end.

