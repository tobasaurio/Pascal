program ej1ejadd;
var
  nombre:string;
  tipo:byte;
  cantidad,monto,excedente:real;

begin
  writeln('ingrese el nombre del productor, ingrese *** para terminar');
  readln(nombre);
  while nombre <> '***' do
   begin
     writeln('ingrese las hectarias (has) a fumigar');
     readln(cantidad);
     writeln('ingrese el tipo de fumigacion que desea (1-4)');
     readln(tipo);
      case tipo of
       1..2:monto:= (20*cantidad);
       3:monto:= (30*cantidad);
       4:monto:= (40*cantidad);
      end;
     if cantidad>100 then
      monto:=monto*0.95;
     if monto>1500 then
      begin
        excedente:= monto-1500;
        monto:=1500+(excedente*0.90);
      end;
writeln('el cliente ',nombre,' quiere un tipo ', tipo ,' de fumigacion,en ',cantidad:8:2, ' has., su costo sera de ', monto:8:2,'pesos');
writeln('ingrese el nombre del nuevo productor, ingrese *** para terminar');
readln(nombre);
readln;
  end;
end.
