program sueldoydeuda_nueve;
var
  sueldo,deuda,restosueldo:byte;

begin
  writeln('Ingrese el sueldo a cobrar');
  readln(sueldo);
  writeln('Ingrese el monto de la deuda');
  readln(deuda);
  restosueldo:=sueldo-deuda;
  if (sueldo>deuda)then
    writeln('usted tiene un resto de',restosueldo,'pesos');
  if(sueldo<deuda)then
   writeln('usted no puede saldar la deuda');
readln;
end.

