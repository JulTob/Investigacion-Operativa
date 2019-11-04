%EXAMEN PROBLEMA PROGRAMACION MULTIPLE
% Es un problema de exceso de recursos pues hay mas produccion max que
% instalaciones

%Mes    Instalaciones    ProduccionMax    Costo produccion  CostoAlmacenaje
% 1        90                260               100               7
% 2        160               310               110               7
% 3        220               290               105               7
% 4        190               90                125

%Mes        1                2                 3                  4
% 1        100              107               114                121
% 2         M               110               117                124
% 3         M                M                105                112
% 4         M                M                 M                 125
%Demanda   260              310               290                90

%Z = 100x11 + 107x12 + 114x13 + 121x14 + Mx21+ 110x22 + 117x23 + 124x24
% M(x31 + x32)+ 105x33 + 112x34 + M(x41 + x42 + x43) + 125x44
% x11 + x21 + x31 + x41 = 90
% x12 + x22 + x32 + x42 = 160
% x13 + x23 + x33 + x43 = 220
% x14 + x24 + x34 + x44 = 190

% x11 + x12 + x13 + x14 <= 260
% x21 + x22 + x23 + x24 <= 310
% x13 + x23 + x33 + x34 <= 290
% x41 + x42 + x43 + x44 <= 90

A = [1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 1 1 1 1 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 1 1 1 1 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1];
b=[260 310 290 90];
lb = zeros(1,16);
ub = [inf inf inf inf inf inf inf inf inf inf inf inf inf inf inf inf];
Aeq=[1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0
    0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0
    0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0
    0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1];
Beq=[90 160 220 190];
f=[100 107 114 121 9999 110 117 124 9999 9999 105 112 9999 9999 9999 125];
[x, fval]=intlinprog(f,[1:16],A,b,Aeq,Beq,lb,ub)

% Solucion: Se pr 
