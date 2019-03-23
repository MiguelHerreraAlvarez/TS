%Punto 2
u1000 = vMin + (vMax - vMin) .* rand(1,1000);
u10000 = vMin + (vMax - vMin) .* rand(1,10000);
n1000 = vMin + (vMax - vMin) .* randn(1,1000);
n10000 = vMin + (vMax - vMin) .* randn(1,10000);

subplot(2,2,1)
hist(u1000)
title('Uniforme 1000 elementos');

subplot(2,2,2)
hist(u10000)
title('Uniforme 10000 elementos');

subplot(2,2,3)
hist(n1000)
title('Normalizado 1000 elementos');

subplot(2,2,4)
hist(n10000)
title('Normalizado 10000 elementos');