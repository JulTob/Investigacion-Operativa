%Ejemplo tipo Nori & Leets Co.
%Empresa de Hierro

% Objetivo: reducir contaminación ambiental

% Tipos de Hornos
%HA %Altos Hornos
%HSM %Hornos Siemens Martins

%Principales contaminantes

%Particulas : P  
%Oxido de Azufre: OS
%Hidrocarburos: Hdr

% Metodos 
%Aumentar Altura de cchimeneas
%Filtros
%Mejores Combustibles

%Chimeneas : HA = x1
%Chimeneas : HSM = x2
%Filtros: HA = x3
%Filtros: HSM = x4
%Combustibles: HA = x5
%Combustibles: HSM = x6

%Minimizar costes
%Unidades en millones de $
%-- min Z = 8x1 + 10x2 + 7x3 +6x4 + 11x5 + 9x6
%reduccion de emisiones
%P  : 12x1 + 9x2  + 25x3 + 20x4 + 17x5 + 13x6 >= 60
%SO2: 35x1 + 42x2 + 18x3 + 31x4 + 56x5 + 49x6 >= 150
%Hdr: 37x1 + 53x2 + 28x3 + 24x4 + 29x5 + 20x6 >= 125


%--linprog: min Z -> x*A <= b
A= [ 12 9 25 20 17 13 ; 35 42 18 31 56 49; 37 53 28 24 29 20];
b=[60 150 125];
Z=[8 10 7 6 11 9];
Aeq=[];
beq=[];
lowerbound= [0,0,0,0,0,0]; %lb=zeros(1,6);
upperbound=[1 1 1 1 1 1];  %ub=ones(1,6);
[x, Zval]= linprog(Z,-A,-b,Aeq,beq,lowerbound,upperbound)
