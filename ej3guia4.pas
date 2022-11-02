program ej3guia4;
var
  num,cuantnum,cantnum,menor,mayor:integer;


begin
  writeln('ingrese la cantidad de numeros que ingresara');
  readln(cuantnum);
  cantnum:=0;
  menor:=0;
  mayor:=0;
  while cantnum<cuantnum do
     begin
       writeln('ingrese un numero entero distinto de 0');
       readln(num);
       if num<>0 then
        begin
          cantnum:=cantnum+1;
           if num<menor then
            menor:=num
           else
             if num>mayor then
              mayor:=num;
        end
       else
         writeln('debe ser distinto de 0');

     end;
writeln('el mayor numero es',mayor);
writeln('el menor numero es',menor);

readln;
end.

