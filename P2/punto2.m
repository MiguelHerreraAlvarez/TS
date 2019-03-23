disp("PROPIEDAD DE LINEALIDAD")
clear;
syms a t w s;
exponencial=exp(-a*t);
seno=sin(t*w);

L_seno_mas_exponencial=laplace(seno+exponencial)

L_seno=laplace(seno);
L_exponencial=laplace(exponencial);
suma_L_seno_y_L_exponencial=L_seno + L_exponencial


disp("PROPIEDAD DE DERIVACION")
clear;
syms t s;
f=2*t;
L_f_dt=laplace(diff(f))
L_f_dt_A_MANO= s*laplace(f)

disp("PROPIEDAD DE INTEGRACION")
clear;
syms t s;
f=2*t;
L_f_dt=laplace(int(f))
L_f_dt_A_MANO= (1/s)*laplace(f)

disp("PROPIEDAD TRASLACION COMPLEJA")
clear;
syms a t;
f=2*t;
L_f=laplace(f)
traslacion_compleja=laplace(exp(a*t)*f)