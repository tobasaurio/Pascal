program calculodediagonales;
 type
   TM=array[1..5,1..5]of real;
function sumadiagonal(a:TM;n:byte):real;
var
  i:byte;
  sum:real;
begin
  sum:=0;
  for i:=1 to n do
   sum:=sum+a[i,i];
  sumadiagonal:=sum;
end;
function sumadiagonalinversa(a:TM;n:byte):real;
var
  i:byte;
  sum:real;
begin
  sum:=0;
  for i:=1 to n do
   sum:=sum+a[i,n-i+1];
  sumadiagonalinversa:=sum;
end;
begin
end.

