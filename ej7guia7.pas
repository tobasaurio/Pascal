program ej7guia7;
type
  tmat=array[1..31,1..25]of word;
const
  m=25;
  n=31;
procedure inicializa(var edificio:tmat);
var
  piso,dia:byte;
begin
  for dia:=1 to 31 do
    for piso:=1 to 25 do
      edificio[dia,piso]:=0;
end;
procedure cargaedificio(var edificio:tmat);
var
  piso,dia:byte;
  contp:word;
  arch:text;
begin
  assign(arch,'Edificio.txt');
  reset(arch);
  while not eof (arch) do
   begin
     readln(arch,dia,piso,contp);
     edificio[dia,piso]:=edificio[dia,piso]+contp;
   end;
  close(arch);
end;
procedure muestraedificio(edificio:tmat);
var
  piso,dia:byte;
begin
  for dia:=1 to 31 do
    begin
      for piso:=1 to 25 do
        write(edificio[dia,piso],' ');
        writeln();
    end;
end;
function sumatotalmes(edificio:tmat):word;
var
  piso,dia:byte;
  aux:word;
begin
  aux:=0;
  for dia:=1 to 31 do
    for piso:=1 to 25 do
      aux:=aux+edificio[dia,piso];
  sumatotalmes:=aux;
end;
procedure promediodiario(edificio:tmat);
var
  piso,dia:byte;
  aux:byte;
begin
   for dia:=1 to 31 do
     begin
     aux:=0;
     for piso:=1 to 25 do
       aux:=aux+edificio[dia,piso];
       writeln('el promedio del dia fue ',(aux/25));
     end;


end;

function porcentaje(diax:byte;edificio:tmat;total:word):real;
var
  dia,piso:byte;
  suma:word;
begin
  suma:=0;
  for piso:= 1 to 25 do
    suma:=suma+edificio[diax,piso];
  if total<>0 then
    porcentaje:=(suma*100)/total
  else
    porcentaje:=0;
end;
var
  edificio:tmat;
  diax:byte;
begin
  inicializa(edificio);
  cargaedificio(edificio);
  muestraedificio(edificio);
  writeln('la cantidad de persona que subieron en el mes es ',sumatotalmes(edificio));
  promediodiario(edificio);
  repeat
  writeln('ingrese dia especifico');
  readln(diax);
  until (diax>0) and (diax<=31);
  writeln('el porcentaje en ese dia fue ',porcentaje(diax,edificio,sumatotalmes(edificio)));
  readln;

end.

