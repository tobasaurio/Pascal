program ej4guia4;
var
  cantnum,cuantnum,num,mayor:integer;

begin
  writeln('ingrese la cantidad de numeros que ingresara');
  readln(cuantnum);
  mayor:=0;
  cantnum:=0;
   while cantnum<cuantnum do
     begin
       writeln('ingrese un numero entero distinto de 0');
       readln(num);
        if num<>0 then
          begin
            cantnum:=cantnum+1;
            if(num MOD 3=0) and (num>mayor)then
              mayor:=num
          end
        else
          writeln('el numero es 0');
     end;
writeln('el mayor numero multiplo de 3 es ',mayor);
readln;
end.

