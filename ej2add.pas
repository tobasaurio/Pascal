program ej2add;
var
  dia:byte;
  nopago,condesc,monto,hora:real;
  auto:string;

begin
  writeln('ingrese el numro del dia');
  readln(dia);
  writeln('ingrese el modelo del auto, *** para finalizar el dia');
  readln(auto);
  nopago:=0;
  condesc:=0;
  while auto<>'***' do
   begin
     writeln('ingrese la cantidad de horas que estuvo');
     readln(hora);
     monto:=1.5*hora;
     if monto<=20 then
      monto:=monto
     else
       if (20<monto) and (monto<=50) then
        begin
         monto:=(hora-2)*1.5;
         if monto<=0 then
           nopago:=nopago+1
         else
           condesc:=condesc+1;
        end
        else
          if (50<monto) and (monto<=100) then
           begin
           monto:=(hora-3)*1.5;
             if monto<=0 then
           nopago:=nopago+1
         else
           condesc:=condesc+1;
           end
          else
            if (dia<=5) then
             begin
              monto:=0;
              nopago:=nopago+1;
             end
            else
             begin
              monto:=monto-8;
              condesc:=condesc+1;
             end;

      writeln('ingrese el modelo del auto, *** para finalizar el dia');
      readln(auto);
    end;
writeln('la cantidad de autos que no pagaron fueron ',nopago:0:2);
writeln('la cantidad de autos que  pagaron con descuento fueron ',condesc:0:2);
readln;
end.

