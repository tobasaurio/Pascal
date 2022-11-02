program ej4add;
var
  arch:text;
  n,i,dia,diamax,cantdias:byte;
  litros,litrosmax,cantlitros:real;
  tambo,suptambo:string;
begin
  assign(arch,'Tambos.txt');
  reset(arch);
  readln(arch,n);
  for i:=1 to n do //tambos
  begin
    readln(arch,tambo);
    read(arch,dia);
    litrosmax:=0;
    cantdias:=0;
    cantlitros:=0;
     while dia<>0 do //dias
       begin
          readln(arch,litros);
          cantdias:=cantdias+1;
          cantlitros:=cantlitros+litros;
          if litros>750 then
           begin
            suptambo:=tambo;
            writeln('el tambo ',suptambo, ' supero 750 litros');
           end;
          if litros>litrosmax then
           begin
             litrosmax:=litros;
             diamax:=dia;
           end;
       read(arch,dia);
       end;
  readln(arch);
  writeln('la empresa ',tambo,' en el dia ',diamax,' los maximos litros fueron ',litrosmax:0:2);
   if cantdias<>0 then
    writeln('entrego un promedio de ', (cantlitros/cantdias):0:2 ,' litros')
   else
     writeln('el tambo no entrego produccion');
  end;

close(arch);
readln;
end.

