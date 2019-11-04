%Coste fijo
% Nori leets
%   A    B  C   D    E  F  d1   d2
Z=[ 5   10  7   6   11  9   2   2];

M= 10000000 %inf 
A= [ 12  9 25 20 17 13  0  0;
     35 42 18 31 56 49  0  0;
     37 53 28 24 29 20  0  0;
      0  0  0  0  0  0  0  0;
      0  0  0  0  0  0  0  0];
 
b=[60 150 125 0 0];

Aeq=[];
beq=[];
lowerbound= [0,0,0,0,0,0]; %lb=zeros(1,6);
upperbound=[1 1 1 1 1 1];  %ub=ones(1,6);
[x, Zval]= linprog(Z,-A,-b,Aeq,beq,lowerbound,upperbound)
