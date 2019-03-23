clear;
syms t;
impulso=dirac(t)
L_impulso=laplace(impulso)

% REPRESENTACION F IMPULSO
% ------------------------
% t=-1:.1:1
% f=eval(impulso)
% idt = f == Inf; % find Inf
% f(idt) = 1;     % set Inf to finite value
% plot(t,f)


clear;
syms t;
escalon=heaviside(t)
L_escalon=laplace(escalon)

% REPRESENTACION F ESCALON
% ------------------------
% t=-1:.1:1
% f=eval(escalon)
% plot(t,f)


clear;
syms a t;
exponencial=exp(-a*t)
L_exponencial=laplace(exponencial)

% REPRESENTACION F EXPONENCIAL
% ----------------------------
% t=-1:.1:1,a=1
% f=eval(exponencial)
% plot(t,f)


clear;
syms t n;
L_t=laplace(t)
L_t_de_n=laplace(t^n)


clear;
syms t w k;
seno=k * sin(t*w)
L_seno=laplace(seno)

% REPRESENTACION F SENO
% ---------------------
% t=-pi:pi/2:4*pi,w=2,k=5
% f=eval(seno)
% plot(t,f)


clear;
syms t w k;
coseno=k * cos(t*w)
L_coseno=laplace(coseno)

% REPRESENTACION F COSENO
% -----------------------
% t=-pi:pi/2:4*pi,w=1,k=2
% f=eval(coseno)
% plot(t,f)




