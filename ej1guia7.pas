program ej1guia7;
////falta el porcedimiento de carga de matriz////
type
  tmat=array[1..20,1..20]of integer;
procedure cargamatriz(var mat:tmat;n,m:byte);
var
   i,j:byte;
begin
  for i:=1 to n do
   begin
    for j:=1 to m do
      begin
        writeln('ingrese un valor');
        readln(mat[i,j]);
      end;
    end;
end;
procedure muestramat(mat:tmat;n,m:byte);
var
   i,j:byte;
begin
  for i:=1 to n do
    begin
     for j:=1 to m do
       write(mat[i,j],' ');
     writeln;
    end;
end;

function cuentacoin (mat:tmat;n,m:byte;valor:integer):byte;
var
  i,j,cont:byte;
 begin
   cont:=0;
   for i:=1 to n do
      for j:=1 to m do
         if mat[i,j]=valor then
          cont:=cont+1;
  cuentacoin:=cont;
 end;
procedure posnegcero (mat:tmat;n,m:byte; var pos,neg,cero:byte);
var
  i,j:byte;
begin
 pos:=0;
 neg:=0;
 cero:=0;
   for i:=1 to n do
      for j:=1 to m do
         if mat[i,j]>0 then
          pos:=pos+1
         else
           if mat[i,j]<0 then
            neg:=neg+1
           else
             cero:=cero+1;
end;
procedure cambiofila (var mat:tmat;h,k,m:byte);
var
  j:byte;
  aux:integer;
  begin
   for j:=1 to m do
    begin
      aux:= mat[h,j];
      mat[h,j]:= mat[k,j];
      mat[k,j]:=aux;
    end;
  end;
var
   mat:tmat;
   n,m,h,k,pos,neg,cero:byte;
   valor:integer;
begin
  writeln('ingrese la cantidad de fila (n)');
  readln(n);
   writeln('ingrese la cantidad de columnas (m)');
  readln(m);
  cargamatriz(mat,n,m);
  muestramat(mat,n,m);
  writeln('ingrese un valor');
  readln(valor);
  writeln('la cant de veces que aparece el valor es ',cuentacoin(mat,n,m,valor));
  posnegcero(mat,n,m,pos,neg,cero);
  writeln('la cantidad de pos es ',pos,' ,la cantidad de neg es ',neg,' y de nulos es ',cero);
  repeat
    writeln('ingrese h');
    readln(h)
  until (h>0) and (h<=n);
   repeat
    writeln('ingrese k');
    readln(k)
  until (k>0) and (k<=n);
  cambiofila(mat,h,k,m);
  muestramat(mat,n,m);
  readln;
end.

