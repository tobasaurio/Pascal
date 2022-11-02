program sacaonoelasdeoro_siete;
var
  ncarta,palo:int64;
begin
  writeln('los palos se indican con numeros, 1 es el oro, 2 es el basto, 3 es copa y 4 es de espada');
  writeln('ingrese el numero de carta (el numero del as es 13)');
  readln(ncarta);
  writeln('ingrese el palo de la carta(recuerde que se indica con numeros)');
  readln(palo);
  if (ncarta=13) and (palo=1)then
  writeln('usted obtuvo el as de oro');
   if(ncarta<>13) and (palo<>1)then
   writeln('usted no obtuvo el as de oro');
   readln
end.




