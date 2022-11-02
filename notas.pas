program notas;
type
  tv1=array[1..9]of word;
  tv2=array[1..9]of string[10];
const
  cursos:tv2=('primero','segundo','tercero','cuarto','quinto','sexto','septimo','octavo','noveno');

procedure iniciavec(var v:tv1);
 var
   i:byte;
 begin
    for i:=1 to 9 do
     v[i]:=0;
 end;
procedure cuantos (var total, aprob:tv1);
 var
   anio,nota:byte;
   arch:text;
 begin
 assign(arch,'Escuela.txt');
 reset(arch);
  while not eof (arch) do
   begin
   readln(arch,anio,nota);
   total[anio]:=total[anio]+1;
   if nota>=7 then
     aprob[anio]:=aprob[anio]+1;
   end;
 end;
function satisfactorio(total,aprob:tv1):boolean;
 var
   i:byte;
begin
i:=1;
 while (i<=9) and (aprob[i]/total[i]>=0.7)do
  i:=i+1;
 satisfactorio:=i>9;
end;
procedure escribe(total:tv1;cursos:tv2);
var
  sum:word;
  i:byte;
begin
 sum:=0;
 writeln('anio  cantidad');
 for i:=1 to 9 do
  begin
   sum:=sum+total[i];
   writeln(cursos[i],'   ',total[i]);
   writeln('total ',sum);
  end;
end;

var
  total,aprob:tv1;
begin
  iniciavec(total);
  iniciavec(aprob);
  cuantos(total,aprob);
  if satisfactorio(total,aprob)then
   writeln('nivel satis')
  else
   writeln('nivel no satis');

  escribe (total,cursos);
  readln;
end.

