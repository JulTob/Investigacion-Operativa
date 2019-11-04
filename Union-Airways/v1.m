% Turnos:
A= [1 0 0 0 0; 1 1 0  0 0; 1 1 0 0 0; 1 1 1 0 0; 0 1 1 0 0; 0 0 1 1 0; 0 0 1 1 0; 0 0 0 1 0; 0 0 0 1 1; 0 0 0 0 1];
%No. minimo de trabajadores por turne
b= [48 79 65 87 64 73 82 43 52 15];
% Trabajadores
Trabajadores=ones(1,5);
% Funcion de costes
Z= [170 160 175 180 195];


intcon=1:5;
[z,val]=intlinprog(Z,intcon, -A, -b)
[trab,tval]=intlinprog(Trabajadores,intcon, -A, -b)
