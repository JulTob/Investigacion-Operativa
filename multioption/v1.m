%Elegir Un valor de varios
f= [-3 -5 0 0 0];

A= [1   0   0   0   0;
    0   2   0   0   0];

B= [4    12];

Aeq=[3  2  -6 -12 -18;
    0   0   1   1   1];

Beq=[0; 1];

lb= zeros(1,5);

ub=[inf inf 1 1 1];

intcon=[3,4,5];

[x,fval]=intlinprog(f, intcon,A,B,Aeq,Beq,lb,ub)
