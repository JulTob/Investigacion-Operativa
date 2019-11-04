% %Camion: Capacidad de 101 m3
% Objeto      Volumen     Valor
% 1           13          3
% 2           14          4
% 3           15          5
% 4           16          6
% 5           17          7
% 6           18          8
% 7           19          9
% 8           20          10
% 9           21          11
% 10          22          12

% %Restricciones
% Elegir uno entre o1 o2 o3
    %XOR(o1,o2,o3)
    % o1 + o2 + o3 = 1
% Al menos uno de o4 o5
    % o4 + o5 >= 1
    % -o4 - o5 <= -1
% Si se elige o10 se elige o3
    % o3 => o10
    % -o3 =< -o10
    % -o3 + o10 =< 0 
% Si se incluyen o5 Y o6, entonces también o2 
    %  1+o2 >= o5 + o6
    %  o5 + o6 <= o2+1
    %  -o2 + o5 + o6 <= 1
% Si se incluye o6, incluir o1 OR o2
    % o1 + o2 >= o6
    % o6 -o1 - o2 <= 0
    

Z=3:12;
A=[0 0 0 -1 -1 0 0 0 0 0;
   0 0 -1 0 0 0 0 0 0 1;
   0 -1 0 0 1 1 0 0 0 0;
   -1 -1 0 0 0 1 0 0 0 0;
   13 14 15 16 17 18 19 20 21 22];
b=[-1, 0, 1, 0,101];
up= ones(1,10);
lows= zeros(1,10);
Aeq=[1 1 1 0 0 0 0 0 0 0];
beq=[1];

%Decisor binario: Integer con uper bound 1, 1ower bound 0
%Maximizar Z 
%Ax <= b
[X, zVal]= intlinprog(-Z,[1:10],A,b,Aeq,beq,lows,up)
Vol= [13:22]*X
