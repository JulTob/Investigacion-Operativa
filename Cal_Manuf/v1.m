%California Manufacturing Company

%%%%%            Variable  Valor Capital
%Construir f en LA: x1      9       6
%Construir f en SF: x2      5       3
%Construir a en LA: x3      6       5
%Construir a en SF: x4      4       2
%%%%% Capital máximo    10m

% Decisor binario: Se hace?
% xi : {0,1}

% Optimizar ganancias de valor
% Z= 9x1 + 5x2+ 6x3 + 4x4

% Restricción de budget
% 6x1 + 3x2 + 5x3 + 2x4 >= 10

% Alternativas mutuamente excluyentes: 
% Máximo un almacen maximo
% x1 + x2 >= 1
% Solo hacer los almacenes si hay fabrica en la ciudad
% x3 <= x1
% x4 <= x2

Z=[9 5 6 4];
A=[6 3 5 2; 0 0 1 1; -1 0 1 0; 0 -1 0 1];
b=[10 1 0 0];
up= ones(1,4);
lows= zeros(1,4);
Aeq=[];
beq=[];

%Decisor binario: Integer con uper bound 1, 1ower bound 0
%Maximizar Z
[X, zVal]= intlinprog(-Z,[1:4],A,b,Aeq,beq,lows,up)
