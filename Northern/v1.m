% Mes                 1       2       3       4
% 
% Instalaciones       10      15      25      20
% programadas
% 
% Produccion Maxima   25      35      30      10
% 
% Costo Unitario      1.08    1.11    1.10    1.13
% Produccion
% 
% Costo Unitario      0.015
% Almazenaje
% 
% Demanda             10      15      25       20
% 
% 
%                         Destino
%                 1         2          3           4
% Origen
% 1             1.080     1.095       1.110       1.125
% 2               ?       1.110       1.125       1.140
% 3               ?         ?          1.10       1.115
% 4                ?        ?           ?         1.13
% 
% x-Origen-Destino
% 
% pX: producir mes X
% aXY: Almacenar de mes X a mes Y
% 
%   p1 >= 10
%   p2+a12 >= 15
%   p3+a23 >= 25
%   p4+3a4 = 20

%   a12= p1-10
%   a23= p2+a12-15
%   25= p3+a23-a34


%   p1      p2      p3      p4      a12      a23      a34  
C=[ 1.08    1.11    1.10    1.13    0.015   0.015   0.015  ];

A=[-1       0       0       0        0       0       0;
    0       -1      0       0        -1      0       0;
    0       0       -1      0        0       -1      0];

b=[ -10;
    -15;
    -25];

Aeq=[0      0       0       1       0     0       1;
     1      0       0       0       -1     0        0;
     0      1       0       0       1       -1      0;
     0      0       1       0       0       1       -1];
beq=[20;
     10;
     15;
     25];


lwb=[ 0 0 0 0 0 0 0];
upb=[25     35      30      10      inf     inf     inf];
intcon=[1:7];
[x,Cval]=intlinprog(C,intcon,A,b,Aeq,beq,lwb,upb)
