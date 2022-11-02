program ej3add;
var
  arch:text;
  i,aprob,n,tp:byte;
  mejorprom,cantalum,tpsdes,prom,sumnot,cantalumtpsdes:real;
  nombre,alummej:string;

begin
  assign(arch,'Tps.txt');
  reset(arch);
  mejorprom:=0;
  cantalum:=0;
  aprob:=0;
  cantalumtpsdes:=0;
  readln(arch,n);
  readln(arch,nombre);
  while nombre<>'***' do
   begin
       sumnot:=0;
       tpsdes:=0;;
       cantalum:=cantalum+1;
       for i:=1 to n do
        begin
         readln(arch,tp);
         sumnot:=sumnot+tp;
         if tp<4 then
          tpsdes:=tpsdes+1;
        end;
       prom:=(sumnot/n);
       if (prom>=4) and (tpsdes<2) then
        aprob:=aprob+1;
       if prom>mejorprom then
        begin
          alummej:=nombre;
          mejorprom:=prom;
        end;
       if (tpsdes>=2) and (prom>=4) then
        cantalumtpsdes:=cantalumtpsdes+1;
   readln(arch,nombre);
   end;
  writeln('lacantidad de alumnos que desaprobaron 2 tp pero tienen promedio 4 es de ',cantalumtpsdes:0:2);
  writeln('el porcentaje de alumnos que aprobaron es de ',((aprob*100)/cantalum):0:2,' %');
  writeln('el mejor promedio lo tiene ',alummej);
  close(arch);
  readln;
end.

