program ejercicio9;
var
  pesoin,pesofin,pesoper,porper:real;
begin
Writeln('ingrese peso inicial');
readln(pesoin);
Writeln('ingrese peso final');
readln(pesofin);
pesoper:=pesoin-pesofin;
porper:=(pesoper*100)/pesoin;
writeln('perdio el',porper:3:2,'% de su peso inicial');
readln
end.

