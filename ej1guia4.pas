program ej1guia4;
var
  par,impar,total:byte;
  porpar,porimpar:real;
  n:integer;

begin
  writeln('ingerese un numero (0 para finalizar)');
  readln(n);
  par:=0;
  impar:=0;
  total:=0;

  while n<>0 do
     begin
     total:=total+1;
     if (n MOD 2=0) then
       par:=par+1
     else
       impar:=impar+1;
     writeln('ingerese un numero (0 para finalizar)');
     readln(n)
     end;
  if (total<>0) then
    begin
  porpar:=(par*100)/total;
  porimpar:=(impar*100)/total;
  writeln(' el porcentaje de pares es de',porpar:8:2,'%');
  writeln(' el porcentaje de impares es de',porimpar:8:2,'%');
    end
  else
 writeln('no se ingreso un num <>0');
  readln;
end.

