
C= [];

A=[];
b=[];

Aeq=[];
beq=[];
lwb=[];
upb=[];
intcon=[];
%min C
% A<=b
% Aeq=beq
%lwb<=x<=upb
[x,Cval]=intlinprog(C,intcon,A,b,Aeq,beq,lwb,upb)
