%Punto 4
I = randn(3,6)
J = randn(10,4)
K = randn(7,6)

%Compuesta, inversa y comprobacion de identidad
C = [I; K];
C = [C J]
Cinv = inv(C)

if round(C*Cinv) == eye(size(C))
    disp('El resultado es la matriz identidad.')
    %Idealmente, C*Cinv produce la matriz de identidad. Dado que inv()
    %realiza la inversión de matriz mediante cálculos de punto flotante,
    %en la práctica C*Cinv está cerca de la matriz de identidad
    %eye(size(C)), pero no es exactamente igual, por lo que utilizando el
    %método round() podemos arreglarlo aproximando los valores.
else
    disp('El resultado no es la matriz identidad.')
end