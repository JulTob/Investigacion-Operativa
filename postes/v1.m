% Tipo de Poste  Pequeño      Mediano         Grande
% Recursos        
% Acero (ton.)    1.5             3               5
% Manoobra (h.)   30              25              40
% Ganancias €      2000           3000            4000
% 
% dispone de 
% 6.000 ton acero
% 60.000 h de trabajo
% 
% al menos 1.000 postes por tipo
% 
% Z= 2.000*p + 3.000*m + 4.000*g
% 1,5*p + 3*m + 5*g <= 6.000
% 2.000*p + 3.000*m + 4.000*g <= 60.000
% 
% p >= 1000*dp
    % -p <= -1000*dp
% p <= inf*dp
% m >= 1000*dm
% m <= inf*dm
% g >= 1000*dg
% g <= inf*dg
M = 1000000000000 %inf

%    p     m    g  dp dm dg
Z= [2000 3000 4000  0  0  0];
%Ax<=b
A=[1.5	3	5	0       0	0;
    30	25  40  0       0   0;
    -1  0   0   1000    0   0;
    1   0   0   -M      0   0;
    0   -1  0   0    1000   0;
    0   1	0   0      -M   0;
    0   0   -1  0       0 1000;
    0   0   1   0       0  -M];
b=[6000 60000 0 0 0 0 0 0];
up=[inf inf inf 1 1 1];
low=[0 0 0 0 0 0];
Aeq=[];
beq=[];
% Max Z
[X, zVal]= intlinprog(-Z,[1:6],A,b,Aeq,beq,low,up);
X=uint32(X)
zVal=int32(-zVal)
