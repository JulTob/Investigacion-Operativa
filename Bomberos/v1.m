%  6 Barrios
% % Cada Barrio Con un Parque de Bomberos a 15m o menos
% 
% De Barrio i a j
%         1       2       3       4       5       6
% 1       0       10      20      30      30      20
% 2       10      0       25      35      20      10
% 3       20      25      0       15      30      20
% 4       30      35      15      0       15      25
% 5       30      20      30      15      0       14
% 6       20      10      20      25      14      0
% 
% Cost    300     450     600     150     700     100
% 

% ci: construir en barrio i

C= [ 
%    c1     c2      c3      c4      c5      c6
    300     450     600     150     700     100
    ];

% B1: en B1 o en B2
% B2: en B1, B2, o B6
% B3: en B3, B4
% B4: B3, B4, B5
% B5: B4, B5, B6
% B6: B2, B5, B6
 
%  c1      c2      c3      c4      c5      c6
A=[1      	1       0       0       0       0;
   1        1       0       0       0       1;
   0        0       1       1       0       0;
   0        0       1       1       1       0;
   0        0       0       1       1       1;
   0        1       0       0       1       1];
b=[1;1;1;1;1;1];
Aeq=[   ];
beq=[];
lwb=[0 0 0 0 0 0];
upb=[1 1 1 1 1 1];
intcon=[1:6];

%min C
% A<=b
% Aeq=beq
%lwb<=x<=upb
[x,Cval]=intlinprog(C,intcon,-A,-b,Aeq,beq,lwb,upb)

%En B1,B4, y B6
