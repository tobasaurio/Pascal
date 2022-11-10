program EJClasefichas;
type
  mco=array[1..4,1..4]of char;
  mca=array[1..4,1..4]of byte;
  vca=array[1..4]of byte;
procedure cargacolor (var matcolor:mco;var matcant:mca;n:byte);
var
  arch:text;
  aux:char;
  i,j:byte;
begin
  assign(arch,'Fichas.txt');
  reset(arch);
  for i:=1 to n do
    begin
    for j:=1 to n do
      read(arch,matcolor[i,j],aux);
    readln(arch);
    end;
  for i:=1 to n do
    begin
    for j:=1 to n do
      read(arch,matcant[i,j]);
    readln(arch);
    end;
end;
procedure muestracolor(matcolor:mco;n:byte);
var
  i,j:byte;
begin
  for i:=1 to n do
    begin
    for j:=1 to n do
       write(matcolor[i,j],' ');
   writeln;
    end;
end;
procedure muestracant(matcant:mca;n:byte);
var
  i,j:byte;
begin
  for i:=1 to n do
    begin
    for j:=1 to n do
       write(matcant[i,j],' ');
   writeln;
    end;
end;
function sumacolores(matcant:mca;n:byte):byte;
var
  i,j,acum:byte;
begin
  acum:=0;
  for i:=1 to n do
    begin
     for j:=1 to n do
       acum:=acum+matcant[i,j];
    end;
 sumacolores:=acum;
end;
function todocolor(matcolor:mco;n:byte):byte;
var
  i,j,r,v,a,cont:byte;
begin
  cont:=0;
  for j:=1 to n do
    begin
     r:=0;
     v:=0;
     a:=0;
    for i:=1 to n do
      begin
        if matcolor[i,j]='R' then
          r:=r+1
        else
          if matcolor[i,j]='V' then
            v:=v+1
          else
            a:=a+1;
      end;
    if (r<>0) and (v<>0) and (a<>0) then
      cont:=cont+1;
    end;
todocolor:=cont;
end;
procedure colordado (var vecantidad:vca; matcolor:mco;matcant:mca;n:byte;color:char;var acumcolor:byte);
var
  i,j,acum:byte;
begin
  acumcolor:=0;
  for i:=1 to n do
    begin
    acum:=0;
     for j:=1 to n do
       begin
        if matcolor[i,j]=(UPCASE(color))then
          begin
            acum:=acum+matcant[i,j];
            acumcolor:=acumcolor+matcant[i,j];
          end;
       end;
     vecantidad[i]:=acum;
    end;
end;
function porcentaje(color:char;acumcolor:byte):real;
var
  matcant:mca;
  n:byte;
begin
  porcentaje:=((acumcolor*100)/sumacolores(matcant,n));
end;

procedure muestravec(vecantidad:vca;n:byte);
var
  i:byte;
begin
  for i:=1 to n do
       writeln(vecantidad[i],' ');
end;
 var
   matcolor:mco;
   matcant:mca;
   vecantidad:vca;
   n,acumcolor:byte;
   color:char;
begin
  n:=4;
  cargacolor(matcolor,matcant,n);
  muestracolor(matcolor,n);
  writeln();
  muestracant(matcant,n);
  writeln();
  writeln('a)');
  writeln('la cantidad de columnas que tienen todos los colores son ',todocolor(matcolor,n));
  writeln();
  writeln('ingrese un color a analizar (R,V,A)');
  readln(color);
  writeln('b)');
  colordado(vecantidad,matcolor,matcant,n,color,acumcolor);
  writeln('hay un total de ',sumacolores(matcant,n),' colore, y el porcentaje del color ',UPCASE(color),' respecto al total es de ',porcentaje(color,acumcolor):0:2,' %');

  muestravec(vecantidad,n);
  readln;
end.

