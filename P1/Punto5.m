%Punto 5
%v(t) = V0*sen(wt)=V0 sen(2PIft)

   %%Time specifications:
   Fs = 8000;                   % samples per second
   dt = 1/Fs;                   % seconds per sample
   StopTime = 0.25;             % seconds
   t = (0:dt:StopTime-dt)';     % seconds
   
   %%Sine wave:
   Fc = 60;                     % hertz
   
   x0 = 125*sin(2*pi*Fc*t);
   subplot(2,1,1);
   hold on;
   plot(t,x0,'r');
   x1 = 125*sin(2*pi*Fc*t + deg2rad(120));   
   plot(t,x1,'g');
   x2 = 125*sin(2*pi*Fc*t + deg2rad(240));   
   plot(t,x2,'b');
   xlabel('Tiempo (s)');
   title('Voltaje en funcion del tiempo');
   zoom xon;
   hold off;
   subplot(2,1,2);
   
   hold on;
   d0 = x0 - x1;
   plot(t,d0,'y');
   d1 = x0 - x2;
   plot(t,d1,'c');
   hold off;