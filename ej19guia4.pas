program ej19guia4;
var
  n,numero:integer;
  contsub,numsig,numant,numerostot:byte;

begin
  writeln('ingrese la cantidad numeros que ingresara');
  readln(n);
  numerostot:=0;
  contsub:=0;
  while numerostot<n do
    begin
        writeln('ingrese un numero');
        readln(numero);
        numant:=numero-1;
        numsig:=numero+1;
        while(numero=numsig) or (numero=numant) do
         begin
          writeln('ingrese un numero');
          readln(numero);
          numant:=numero-1;
          numsig:=numero+1;
          numerostot:=numerostot+1;
         end;
      contsub:=contsub+1;
    end;
writeln('la cantidad de subconjuntos son',contsub);
readln;
end.

