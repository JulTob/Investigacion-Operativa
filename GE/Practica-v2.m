% PRACTICA 1
%Distancia[m] Ptos de Control
%Ubicacion	   1	   2	   3	   4	   5   	  6   	7
%1          450.77	720.84	190.86	627.46	707.75	500.76	418.44
%2          938.94	883.56	511.07	474.83	140.36	169.41	689.89
%3          724.14	435.37	609.49	106.99	412.05	623.46	457.36
%4          627.83	587.12	274.48	238.94	297.30	295.28	341.69
%5          199.77	274.07	576.71	643.02	969.15	953.81	341.13

% 1 0 1 1 0 1 1
% 0 0 1 1 1 1 0
% 0 1 1 1 1 1 1
% 1 1 1 1 1 1 1
% 1 1 1 1 0 0 1

% Cada estación, max 3 Ptos de Control
% u1: pt1 + pt3 + pt4 + pt6 + pt7 <= 3 u1
% p_ut= p(u,pt) el punto pt está cubierto por u
% mx: limite de ux

M=100;
%    u1  u2   u3   u4   u5          p1  p2  p3  p4  p5       
C = [1,    1    1    1    1          0   0   0   0   0   0   0];    
%   u1   u2   u3   u4   u5          p1  p2  p3  p4  p5  p6  p7
A= [-1    0	   0   -1	-1          0	0	0	0	0	0	0;
     0    0   -1   -1   -1          0   0   0   0   0   0   0   ;
    -1   -1   -1   -1   -1          0   0   0   0   0   0   0   ;
    -1   -1   -1   -1   -1          0   0   0   0   0   0   0   ;
     0   -1   -1   -1    0          0   0   0   0   0   0   0   ;
    -1   -1   -1   -1    0          0   0   0   0   0   0   0   ;
    -1    0   -1   -1   -1          0   0   0   0   0   0   0   ;
    -1    0	   0   -1   -1          3   0   0   0   0   0   0   ;
     0    0   -1   -1   -1          0   3   0   0   0   0   0   ;
    -1   -1   -1   -1   -1          0   0   5   0   0   0   0   ;
    -1   -1   -1   -1   -1          0   0   0   5   0   0   0   ;
     0   -1   -1   -1    0          0   0   0   0   3   0   0   ;
    -1   -1   -1   -1    0          0   0   0   0   0   4   0   ;
    -1    0   -1   -1   -1          0   0   0   0   0   0   4   ;
     M    0    0    0    0          1   0   1   1   0   1   1   ;
     0    M    0    0    0          0   0   1   1   1   1   0   ;
     0    0    M    0    0          0   1   1   1   1   1   1   ;
     0    0    0    M    0          1   1   1   1   1   1   1   ;
     0    0    0    0    M          1   1   1   0   0   0   1   ];

b = [-1 -1 -1 -1 -1 -1 -1 0 0 0 0 0 0 0 3+M 3+M 3+M 3+M 3+M];
lwb = zeros(1,5+7+7);
upb = ones(1,5+7+7);
Aeq = [];
beq=[];
intcon=[1:(5+7+7)];
%min C
% A<=b
% Aeq=beq
%lwb<=x<=upb
[x,Cval]=intlinprog(C,intcon,A,b,Aeq,beq,lwb,upb)
