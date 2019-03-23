syms s t u F
%Tenemos que L(t f(3t)) es igual a (2*s)/(1-(s^2))^2, que definimos como F
F = (2*s)/(1-(s^2))^2;

%Paso 1, convertir L(t f(3t)) a L(f(3t)). Para ello se hace la integral
%definida entre s e infinito.
F1orig = int(subs(F,s,u),u,s,Inf)
%Como nos da una fucion por trozos cogemos la parte que nos interesa
F1 = 1/(s^2-1)

%Paso 2, convertir L(f(3t)) en L(f(5t)).
F2 = 3/5*subs(F1,s,3/5*s)

%Paso 3, convertir L(f(5t)) en L(e^(2t) f(5t)).
F3 = subs(F2,s,s-2)

%Paso 4, convertir L(e^(2t) f(5t)) en L((e^(2t) f(5t))/t)
F4 = int(subs(F3,s,u),u,s,Inf)

%Por lo tanto, L((e^(2t) f(5t))/t) equivale a F4.