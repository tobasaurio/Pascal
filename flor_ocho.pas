program flor_ocho;
var
  paloa,palob,paloc:byte;

begin
  writeln('los palos de las cartas se ingresan con numeros, 1 es de oro, 2 es de basto, 3 es de copa y 4 es de espada');
  writeln('ingrese el palo de la primer carta');
  readln(paloa);
  writeln('ingrese el palo de la segunda carta');
  readln(palob);
  writeln('ingrese el palo de la tercera carta');
  readln(paloc);
  if (paloa=palob) and (palob=paloc)then
  writeln('usted obtuvo flor');
   if(paloa<>palob)or (palob<>paloc)then
   writeln('usted no obtuvo flor');
   readln
end.

