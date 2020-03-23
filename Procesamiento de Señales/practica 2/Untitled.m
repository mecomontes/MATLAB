clc;
clear;
clf;
n = 0:100;
s1 = cos(2*pi*0.05*n); % funcion a baja frecuencia
s2 = cos(2*pi*0.47*n); % funcion a alta frecuencia
x = s1+s2;
% Implementacion de filtro
M = input('Longitud deseada del filtro = ');
num = ones(1,M);%genera un vector de unos
y = filter(num,1,x)/M;
% Muestra la entrada y la salida
clf;
subplot(2,2,1); % permite graficar varias graficas en una corrida
plot(n, s1);
axis([0, 100, -2, 2]);
xlabel('Indice de tiempo n'); ylabel('Amplitud');
title('Se�al #1');
subplot(2,2,2);
plot(n, s2);
axis([0, 100, -2, 2]);
xlabel('Indice de tiempo n'); ylabel('Amplitud');
title('Se�al #2');
subplot(2,2,3);
plot(n, x);
axis([0, 100, -2, 2]);
xlabel('Indice de tiempo n'); ylabel('Amplitud');
title('Se�al de entrada');
subplot(2,2,4);
plot(n, y);
axis([0, 100, -2, 2]);
xlabel('Indice de tiempo n'); ylabel('Amplitud');
title('Se�al de salida');	
axis;
