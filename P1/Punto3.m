%Punto 3
%Vectores
A = [1 1 1]
B = [-2 -3 -5]

%Producto vectorial
C = cross(A,B)

%Proyeccion
AsB = (dot(A,B)/(norm(B)^2))*B
BsA = (dot(A,B)/(norm(A)^2))*A

%Representación
quiver3(0,0,0,A(1),A(2),A(3),2,'r');
hold on
quiver3(0,0,0,B(1),B(2),B(3),2,'b');
quiver3(0,0,0,C(1),C(2),C(3),2,'g');
quiver3(0,0,0,AsB(1),AsB(2),AsB(3),2,'y');
quiver3(0,0,0,BsA(1),BsA(2),BsA(3),2,'c');
legend({'Vector A','Vector B', 'Producto Vectorial',...
    'Proyeccion A sobre B', 'Proyeccion B sobre A'},'Location','southwest');
view();
hold off