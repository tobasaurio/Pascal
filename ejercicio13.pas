program ejercicio13;
const
  alim=3;
  limp=2;
  otro=5;
var
  Cantpuntosa,cantpuntosl,cantpuntoso,importa,importl,importo:real;
begin
writeln('ingrese la cantidad gastada en alimentos');
readln(importa);
writeln('ingrese la cantidad gastada en limpieza');
readln(importl);
writeln('ingrese la cantidad gastada en otro');
readln(importo);
Cantpuntosa:=importa/alim;
Cantpuntosl:=importl/limp;
Cantpuntoso:=importo/otro;
writeln('usted obtuvo',Cantpuntosa:1:1,'puntos por alimentos,',cantpuntosl:1:1,'puntos por limpieza y',cantpuntoso:1:1,'por otros');
readln
end.

