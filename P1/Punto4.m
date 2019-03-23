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
    %realiza la inversi�n de matriz mediante c�lculos de punto flotante,
    %en la pr�ctica C*Cinv est� cerca de la matriz de identidad
    %eye(size(C)), pero no es exactamente igual, por lo que utilizando el
    %m�todo round() podemos arreglarlo aproximando los valores.
else
    disp('El resultado no es la matriz identidad.')
end