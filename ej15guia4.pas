program ej15guia4;
var
 pulsa,velmax:byte;
 catea,cateb,catec,cicliter,riesgotres,ncicli,acumvel,cantcata:real;
begin
  writeln('ingrese la cantidad de ciclistas');
  readln(ncicli);
  catea:=0;
  cateb:=0;
  catec:=0;
  riesgotres:=0;
  cicliter:=0;
  acumvel:=0;
  cantcata:=0;
  while cicliter<ncicli do
   begin
     writeln('ingrese la velocidad maxima que alcanzo');
     readln(velmax);
     writeln('ingrese las pulsaciones maximas que registro');
     readln(pulsa);
     case pulsa of
      0..120:writeln('el ciclista tiene un nivel de riesgo 1');
      121..160:writeln('el ciclista tiene un nivel de riesgo 2');
      161..254:begin
               writeln('el ciclista tiene un niver de riesgo 3');
               riesgotres:=riesgotres+1;
               end;
     end;
     case velmax of
      0..39:begin
            writeln('el ciclista tiene una categoria C');
            catec:=catec+1;
            end;
      40..49:begin
             writeln('el ciclista tiene una categoria B');
             cateb:=cateb+1;
             end;
      50..254:begin
              writeln('el ciclista tiene una categoria A');
              catea:=catea+1;
              end;
      end;
     acumvel:=acumvel+velmax;
     cicliter:=cicliter+1;
     if (pulsa<120) and (velmax>50) then
       cantcata:=cantcata+1;
   end;
writeln('En la categoria A hubo ',catea:8:2,'participantes');
writeln('En la categoria B hubo ',cateb:8:2,'participantes');
writeln('En la categoria C hubo ',catec:8:2,'participantes');
writeln('el porcentaje que hubo en categoria de riesgo 3 son',((riesgotres*100)/ncicli):8:2,'%');
writeln('El promedio de velocidades maximas es de ',(acumvel/ncicli):8:2,'km/h');
writeln('la cantidad de corredores de categoria a y con nivel de riesgo 1 son',cantcata:8:2);

if catec=0 then
  writeln('la categoria c no tuvo ningun participante');
if cateb=0 then
  writeln('la categoria b no tuvo ningun participante');
if catea=0 then
  writeln('la categoria a no tuvo ningun participante');
readln;
end.

