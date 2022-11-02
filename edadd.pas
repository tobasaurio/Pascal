program edadd;
var
edad:byte;
begin
  Writeln('Ingrese la edad');
  readln(edad);
  if (edad>=18) and (edad<=21)then
  writeln('puede ingresar');
       if (edad>=1) and (edad<=17)then
         writeln('no puede ingresar');
           if (edad>=22) and (edad<=100)then
             writeln('no puede ingresar');
readln
end.

