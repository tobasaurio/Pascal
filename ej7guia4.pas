program ej7guia4;
var
  a,b,num,acum:real;
  cont:byte;
  arch:text;
begin
  assign(arch,'Numeros.txt');
  reset(arch);
  readln(arch,a,b);
  acum:=0;
  cont:=0;
  while not eof(arch)do
  begin
   readln(arch,num);
    if (num>=a) and (num<=b) then
      begin
           cont:=cont+1;
           acum:=acum+num;
      end;
   end;
  if cont<>0 then
    writeln('el promedio de numeros es de',(acum/cont):8:2)
  else
    writeln('no hay numeros en el intervalo');
close(arch);
readln;
end.
