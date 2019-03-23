%Punto 1
vMin = input('Introduzca el valor minimo: ');
vMax = input('Introduzca el valor maximo: ');
x = 0:.1:9.9;
y = vMin + (vMax - vMin) .* rand(1,100);

hold on
plot(x, y, 'r');
plot(x(y==min(y)), min(y), 'bo');
plot(x(y==max(y)), max(y), 'go');

axis([x(y==max(y))-1 x(y==max(y))+1 vMax-1 vMax+1 ]);
hold off