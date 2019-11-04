% Job Shop Company
% 3 Maquinas
% 4 sitios adecuados
% 
% Localizarlas para reducir el coste de manejo
% 
% Coste de manejo
% 
% Localidad       1    	2         3       4
% Maquina
% 
% 1               13      16      12      11
% 
% 2               15      M       13      20
% 
% 3               5       7       10      6

% cij= Coste maquina i en pos j

% Sumatorio(c-1j)=1
% Sumatorio(c-2j)=1
% Sumatorio(c-3j)=1

M= 1000000;
C= [13 16 12 11 15 M 13 20 5 7 10 6];

A=[];
b=[];

Aeq=[	1   1   1   1   0   0   0   0   0   0   0   0 ;
        0   0   0   0   1   1   1   1   0   0   0   0 ;
        0   0   0   0   0   0   0   0   1   1   1   1];
beq=[1;
     1;
     1];
lwb=zeros(1,12);
upb=ones(1,12);
intcon=[1:12];
[x,Cval]=intlinprog(C,intcon,A,b,Aeq,beq,lwb,upb)

%c14, c23,c31
%Colocar máquina 1 en pos 4
%Colocar máquina 2 en pos 3
%Colocar máquina 3 en pos 1
