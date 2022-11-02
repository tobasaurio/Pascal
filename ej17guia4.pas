program ej17guia4;
var
arch:text;
numero,n:integer;
i,l,maxpar,contis,conti:byte;

begin
  assign(arch,'Sorteos.txt');
  reset(arch);
  readln(arch,n);
  contis:=0;
  for i:=1 to n do
   begin
     maxpar:=0;
     conti:=0;
     for l:=1 to 6 do
      begin
       read(arch,numero);
        if numero mod 2<>0 then
          conti:=conti+1
        else
          if numero>maxpar then
           maxpar:=numero;
      end;
     if maxpar<>0 then
      writeln('el mayor numero par es',maxpar)
     else
       writeln('no hay numeros pares');
    if conti<>0 then
       contis:=contis+1;
   end;
writeln('la cantidad de sorteos que tuvieron al menos un impar es',contis);
readln;
end.

