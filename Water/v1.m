%Metro Water District

%    %            Coste en decenas de dolares por acre-pie
%                 Berdo   Los Devils   San Go   Hollyglass  Recursos
%   Rio
%   
%   Colombo       16          13          22      17          50
%   Sacron        14          13          19      15          60
%   Calorie       19          20          23      --          50
%   
%   Minimo        30          70           0      10
%   Solicitado    50          70          30      inf


% Variables:
% x11:colombo-berdo
% x12:Colombo-LosDevils
% x13:Colombo-SanGo
% x14:Colombo-Hollyglass
% 
% x21:Sacron-berdo
% x22:Sacron-LosDevils
% x23:Sacron-SanGo
% x24:Sacron-Hollyglass
% 
% x31:Calorie-berdo
% x32 :Calorie-LosDevils
% x33:Calorie-SanGo
% x34:Calorie-Hollyglass Innecesario
M= 1000000;

%   x11 x12 x13 x14     x21 x22 x23 x24   x31 x32 x33 x34
C=[ 16  13  22  17       14  13  19 15     19  20  23  M];
A=[ 1   1    1   1        0   0   0  0      0   0   0  0;
    0   0    0   0        1   1   1  1      0   0   0  0;
    0   0    0   0        0   0   0  0      1   1   1  0; 
   -1   0    0   0       -1   0   0  0     -1   0   0  0;
    0  -1    0   0        0  -1   0  0      0  -1   0  0;
    0   0   -1   0        0   0  -1  0      0   0  -1  0;
    0   0    0  -1        0   0   0 -1      0   0   0  0;
    1   0    0   0        1   0   0  0      1   0   0  0;
    0   1    0   0        0   1   0  0      0   1   0  0;
    0   0    1   0        0   0   1  0      0   0   1  0;
    0   0    0   1        0   0   0  1      0   0   0  0];
b=[ 50;
    60;
    50;
    -30;
    -70;
    0;
    -10;
    50;
    70;
    30;
    M];
Aeq=[];
beq=[];
lwb= zeros(1,12);
upb= inf*ones(1,12);
intcon=[];

[x,Cval]= intlinprog(C,intcon,A,b,Aeq,beq,lwb,upb)

% Resultados:

%CVal= 1480

% x1:colombo-berdo:         0
% x2:Colombo-LosDevils:     50
% x3:Colombo-SanGo:         0
% x4:Colombo-Hollyglass:    0

% 
% x5:Sacron-berdo:          30
% x6:Sacron-LosDevils:      20
% x7:Sacron-SanGo:          0
% x8:Sacron-Hollyglass:     10
% 
% x8 :Calorie-berdo         0
% x9 :Calorie-LosDevils     0
% x10:Calorie-SanGo         0
% x11:Calorie-Hollyglass    0
