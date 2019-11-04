% Mes                 1       2       3       4
% 
% Instalaciones       90      160      220      190
% programadas
% 
% Produccion Maxima   260      310      290      90
% 
% Costo Unitario      100       110      105    125
% Produccion
% 
% Costo Unitario      7   
% Almazenaje
% 
% Demanda             10      15      25       20
% 
%
% 
% pX: producir mes X
% aXY: Almacenar de mes X a mes Y
% 
%   p1 >= 90
%   p2+a12 >= 160
%   p3+a23 >= 220
%   p4+3a4 = 190
%
%   a12= p1-90
%   a23= p2+a12-160
%   220= p3+a23-a34


%   p1      p2      p3      p4      a12 	a23  	a34  
C=[ 100     110     105  	125  	7       7       7  ];

A=[-1       0       0       0        0       0       0;
    0       -1      0       0        -1      0       0;
    0       0       -1      0        0       -1      0];

b=[ -90;
    -160;
    -220];

Aeq=[0      0       0       1       0     0       1;
     1      0       0       0       -1     0        0;
     0      1       0       0       1       -1      0;
     0      0       1       0       0       1       -1];
beq=[190;
     90;
     160;
     220];


lwb=[ 0 0 0 0 0 0 0];
upb=[260     310      290      90      inf     inf     inf];
intcon=[1:7];
[x,Cval]=intlinprog(C,intcon,A,b,Aeq,beq,lwb,upb)
