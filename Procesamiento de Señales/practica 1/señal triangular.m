clc;
clear;
%triangle=(-sawtooth(t,1)) % Forma para generar una se�al rampa
t=-3*pi:0.01:3*pi;%definici�n del vector tiempo  
triangle=(-sawtooth(t,0.5))

t=-3:6/1884:3;%Dedefinici�n del tiempo para ajustar el paso portero en 0.5
plot (t,triangle);grid % Grafica la se�al
xlabel('t (s)');ylabel('y(t)');
ttle=['Se�al triangular'];
title(ttle);
