%Opcional 2
D = input('Introduzca la duración: ');
f = input('Introduzca el valor de frecuencia: ');
dt = D/10000;

t = 0:dt:D;
sq = square(2*pi*f*t);

%Integral
Int = cumtrapz(t,sq);
%Derivada
Der = diff(sq)/(dt);
%Integral derivada
DerInt = diff(Int)/(dt);

%Representación

%Representa la onda, la derivada y la integral
subplot(3,1,1);
plot(t,sq);
hold on;
plot(t,Int);
plot(0:dt:D-dt,Der);
hold off;
title('Onda, derivada e integral');
xlabel('Tiempo');
ylabel('sq(t)');

%Representa solo la onda y la integral para poder apreciar los datos
subplot(3,1,2);
plot(t,sq);

hold on;
plot(t,Int);
hold off; 
title('Onda e integral');
xlabel('Tiempo');
ylabel('sq(t)');

%Representa la derivada de la integral que, como se observa de la gráfica
%anterior, coincide con la onda original
subplot(3,1,3);
plot(0:dt:D-dt,DerInt);
title('Derivada de la integral');
xlabel('Tiempo');
ylabel('sq(t)');
