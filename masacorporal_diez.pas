program masacorporal_diez;
var
  masacorp,peso,altura:real;
begin
  writeln('Ingrese el peso de la persona en kilogramos');
  readln(peso);
  writeln('Ingrese la altura de la persona en metros');
  readln(altura);
  masacorp:=peso/(altura*altura);
  if (masacorp>=18)and(masacorp<=25)then
  writeln('la persona tiene una contextura normal');
    if(masacorp<18)or(masacorp>25)then
    writeln('la persona no tiene una contextura normal');
readln;
end.

