program ejercicio12;
const
  hora=8;
var
  suelbruto,suelneto,canthoras,oncepor,cincopor:real;
begin
writeln('ingrese la cantidad de horas');
readln(canthoras);
suelbruto:=hora*canthoras;
oncepor:=(11*suelbruto)/100;
cincopor:=(5*suelbruto)/100;
suelneto:=suelbruto-(oncepor+cincopor);
writeln('el empleado tiene un sueldo neto de',suelneto:3:2,'pesos,y un sueldo bruto de',suelbruto:3:2,'pesos');
readln
end.

