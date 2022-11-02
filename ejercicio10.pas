program ejercicio10;
var
  vol,alt,rad:real;
begin
writeln('ingrese el radio del cilindro');
readln(rad);
writeln('ingrese el altura del cilindro');
readln(alt);
vol:=pi*(rad*rad)*alt;
writeln('el volumen del cilindo es',vol:3:2,'m3');
readln
end.

