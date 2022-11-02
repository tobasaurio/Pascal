program parcial2022_2cuatri;
var
  arch:text;
  floreria,masventas,masventat:string[10];
  tipoflor,aux,t:char;
  meta,ventas:byte;
  total,rosas,jazmin,clavel,margarita,maxprom,prom,totventas,vendio,ventast,tvendio:real;
begin
  assign(arch,'Floreria.txt');
  reset(arch);
  read(arch,floreria);
  writeln('ingrese que flores seran T (R,J,C,M)');
  readln(t);
  maxprom:=0;
  tvendio:=0;
  while floreria <> '*' do
   begin
   writeln(floreria);
    total:=0;
    vendio:=0;
    totventas:=0;
    rosas:=0;
    jazmin:=0;
    clavel:=0;
    margarita:=0;
    readln(arch,meta);
    read(arch,ventas);
     while ventas<>0 do
      begin
       readln(arch,aux,tipoflor);
       case tipoflor of
        'R':rosas:=200*ventas;
        'M':margarita:=100*ventas;
        'C':clavel:=150*ventas;
        'J':jazmin:=50*ventas;
       end;
       vendio:=vendio+1;
       totventas:=ventas+totventas;
       if meta>=ventas then
        writeln('no alcanzo la meta de venta de ', tipoflor);
       if (UPCASE(t))=tipoflor then
          begin
            ventast:=ventas;
            if ventast>tvendio then
            begin
             tvendio:=ventast;
             masventat:=floreria;
             end;
          end;
        read(arch,ventas);
      end;
     total:=rosas+margarita+clavel+jazmin;
     writeln('la floreria ',floreria,'vendio unn total de ',total:0:2,' pesos');
     prom:=(totventas/vendio);
     if prom>maxprom then
      begin
        maxprom:=prom;
        masventas:=floreria;
      end;
     readln(arch);
     read(arch,floreria);
   end;
writeln('la floreria que mas vendio "T"= ',t,' fue ',masventat);
writeln('la floreria que tuvo un mayor promedio de ventas fue ',masventas);
readln;
close(arch);
end.

