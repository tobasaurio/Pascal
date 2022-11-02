program ejercicio11;
var
   dist,tiempo,consumo,vel,consumoKM: real;
begin
Writeln('Ingrese distancia');
readln(dist);
Writeln('Ingrese tiempo');
readln(tiempo);
Writeln('Ingrese consumo');
readln(consumo);
vel:=dist/tiempo;
writeln('la velocidad es de',vel:3:2,'KM/H');
consumoKM:=consumo/dist;
writeln('el consumo por KM es',consumoKM:3:2,'litros');
readln
end.

