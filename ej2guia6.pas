program ej2guia6;
type
  tv=array[1..50]of word;
procedure cargavec(var vec:tv;var n:byte);
 var
   arch:text;
 begin
   n:=0;
   assign(arch,'Naturales.txt');
   reset(arch);
   while not eof (arch) do
    begin
      n:=n+1;
      readln(arch,vec[n]);
    end;
   close (arch);
end;
procedure nulosparesimpares(var nulos,pares,impares:byte;n:byte;vec:tv);
 var
   i:byte;
begin
  nulos:=0;
  pares:=0;
  impares:=0;
  for i:=1 to n do
   begin
     if (vec[i]mod 2=0) and (vec[i]<>0) then
      pares:=pares+1
     else
       if vec[i]mod 2<>0 then
         impares:=impares+1
       else
         nulos:=nulos+1
   end;
end;
procedure multiplica(vec:tv;n:byte;valor:word);
 var
   i:byte;
 begin
   i:=2;
    while(i<=n) do
     begin
       writeln('posicion ',i,' con valor ',vec[i]*valor);
       i:=i+2;
     end;
 end;
function maximo(vec:tv;n:byte):byte;
 var
   i,posmax:byte;
   max:word;
 begin
   max:=0;
   for i:=1 to n do
    if vec[i]>max then
    begin
       max:=vec[i];
       posmax:=i;
    end;
   maximo:=posmax;
 end;
var
  vec:tv;
  n,nulos,pares,impares:byte;
  valor:word;
begin
   cargavec(vec,n);
   nulosparesimpares(nulos,pares,impares,n,vec);
   writeln('la cantidad de nulos: ',nulos,', la cantidad de pares: ',pares,', y la cantidad de impares: ',impares);
  repeat
    writeln('ingrese un valor');
    readln(valor);
  until valor<>0 ;
  multiplica(vec,n,valor);
  writeln('la posicion del maximo es: ',maximo(vec,n));
  readln;
end.

