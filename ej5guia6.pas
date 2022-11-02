program ej5guia6;
type
  st6=string[6] ;
  tvecp=array[1..50] of st6;
  tveca=array[1..50] of word;
  tvecpre=array[1..50] of real;

function preciomin(vecanio:tveca;vecprecio:tvecpre;n:byte;anio:word):real;
 var
   i:byte;
   min:real;
begin
  min:=99999;
  for i:=1 to n do
  begin
    if anio=vecanio[i] then
      if vecprecio[i]<min then
        min:=vecprecio[i];
  end;
  if min<>99999 then
    preciomin:=min
  else
    preciomin:=0;
end;

function cantvehiculos(vecprecio:tvecpre;n:byte;precio:real):byte;
var
  i,cont:byte;
  begin
    cont:=0;
    for i:=1 to n do
     if vecprecio[i]<precio then
        cont:=cont+1;

    cantvehiculos:=cont;
  end;
function promedio(vecprecio:tvecpre;vecanio:tveca;n:byte;a1,a2:word):real;
 var
   i,cont:byte;
   sum:real;
 begin
   cont:=0;
   sum:=0;
   for i:=1 to n do
    begin
      if(vecanio[i]>=a1) and (vecanio[i]<=a2) then
        begin
          cont:=cont+1;
          sum:=sum+vecprecio[i]
        end;
    end;
   if cont<>0 then
     promedio:=sum/cont
   else
     promedio:=0;
 end;

begin
end.

