syms t s
f=t
F=laplace(t)

disp("TEOREMA DEL VALOR FINAL")

lmite_f=limit(f,t,Inf)
limite_sF=limit(s*F,s,0,"right")

disp("TEOREMA DEL VALOR INICIAL")

lmite_f=limit(f,t,0)
limite_sF=limit(s*F,s,Inf)
