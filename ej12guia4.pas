program ej12guia4;
const
  desc=0.1;
  valor=1000;
  var
    i,n,nodesc:byte;
    importe,conceptdesc:real;
begin
  repeat
  writeln('ingrese cant de ventas');
  readln(n);
  until (n>0);
  conceptdesc:=0;
  nodesc:=0;
  for i:= 1 to n do
   begin
     writeln('ingrese el importe');
     readln(importe);
     if importe>valor then
         conceptdesc:=conceptdesc+(importe*desc)
     else
         nodesc:=nodesc+1;
   end;
writeln('el monto en concepto de descuento es de',conceptdesc:8:2);
writeln('la cantidad de ventas sin descuento fueron',nodesc);
readln;
end.

