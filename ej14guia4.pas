program ej14guia4;
var
  arch:text;
  n,i:byte;
  x,monto,desc,importe,desctotal,maxvent,contvl,importevl:real;
  rubro,aux,rubromax:char;

begin
  assign(arch,'Farmacia.txt');
  reset(arch);
  readln(arch,n);
  readln(arch,x);
  desctotal:=0;
  contvl:=0;
  importevl:=0;
  desctotal:=0;
  maxvent:=0;
  for i:=1 to n do
   begin
     desc:=0;
     readln(arch,monto,aux,rubro);
     case rubro of
      'L': begin
          importe:=monto;
          contvl:=contvl+1;
          importevl:=importevl+importe;
           end;
      'M':begin
          importe:=monto*0.77;
          desc:=monto*0.23;
          end;
      'P':begin
          importe:=monto*0.9;
          desc:=monto*0.1;
          end;
      'A':if monto>x then
        begin
          importe:=monto*0.95;
          desc:=monto*0.05;
        end
        else
         importe:=monto;
     end;
  writeln('el importe es', importe:8:2);
  if desc<>0 then
    begin
   writeln('el descuento es',desc:8:2);
   desctotal:=desctotal+desc;
    end;
  if monto>maxvent then
    begin
    maxvent:=monto;
    rubromax:=rubro;
    end;
   end;
writeln('el total desc es', desctotal:8:2);
writeln('el total de ventas en vl es',contvl:8:2);
writeln('elimporte en vl es',importevl:8:2);
writeln('el monto max es', maxvent:8:2);
writeln('y pertenece al rubro de',rubromax);
close(arch);
readln;


end.

