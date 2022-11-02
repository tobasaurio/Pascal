program ej2guia4;
var
  a,b,n,eninter,cantn,nuevon,suman:real;


begin
  writeln('ingrese los limites laterales del intervalo (A y B)');
  readln(a,b);
  writeln('ingrese cuantos numeros que ingresara');
  readln(n);
  cantn:=0;
  eninter:=0;
  suman:=0;
   while cantn<n do
       begin
         writeln('ingrese un numero');
         readln(nuevon);
         cantn:=cantn+1;
        if (nuevon>=a) and (nuevon<=b) then
          begin
           eninter:=eninter+1;
           suman:=nuevon+suman;
          end
        end;
 if eninter<>0 then
   writeln('el promedio de los que estan dentro del intervalo es de',(suman/eninter):8:2)
  else
    writeln('no hay numeros en el intervalo');
readln;
end.

