program resulucionparcialtramos;
var
  arch:text;
  tramo,patente,tramomastrans,automasrap:string[7];
  n,i:byte;
  velmax,vel,supvelmax,cantautos,masvel,pasaronautos:real;
begin
  assign(arch,'Tramos.txt');
  reset(arch);
  readln(arch,n);
  pasaronautos:=0;
  for i:=1 to n do
   begin
     cantautos:=0;
     supvelmax:=0;
     masvel:=0;
     read(arch,tramo);
     readln(arch,velmax);
     read(arch,patente);
   while patente<>'***' do
     begin
      cantautos:=cantautos+1;
      readln(arch,vel);
      if vel>velmax then
       begin
         supvelmax:=supvelmax+1;
       if vel>masvel then
        automasrap:=patente;
       end;
      read(arch,patente);
     end;
  if cantautos>pasaronautos then
   begin
   pasaronautos:=cantautos;
   tramomastrans:=tramo;
   end;
readln(arch);
writeln('en el tramo ',tramo,' el porcentaje de conductores que superaron la vel max es de ',((supvelmax*100)/cantautos):0:2,'%');
writeln('en el tramo ',tramo,' la patente que paso mas rapido fue ',automasrap);
   end;
writeln('el tramo ',tramomastrans,' es el mas transitado');
close(arch);
readln;
end.

