%Opcional 1
max=100001;
x=[1/max];
years=1:max;

for i = years(2:max)
  prob= (i-1)/100000 * i/100000;
  x(i)=prob*100;
end

plot(years,x)
xlabel('Años')
ylabel('%')
title('Probabilidad de repetir un número anterior cualquiera')