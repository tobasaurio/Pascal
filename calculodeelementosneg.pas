program calculodeelementosneg;
type
  TM=array[1..5,1..5]of real;
function cuentanegativos(a:TM;n:byte):real;
 var
   cont,i,j:byte;
 begin
  cont:=0;
  for i:=2 to n do
   for j:=1 to i-1 do
    if a[i,j]<0 then
     cont:=cont+1;
  cuentanegativos:=cont;
 end;
function cuentapositivos(a:TM;n:byte):real;
 var
   cont,i,j:byte;
 begin
  cont:=0;
  for i:=1 to n-1 do
   for j:=i+1 to n do
    if a[i,j]<0 then
     cont:=cont+1;
  cuentapositivos:=cont;
 end;
begin
end.

