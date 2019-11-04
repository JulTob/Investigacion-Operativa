%WyndorGlass

f= [-3 -5];
A= [ 1 0;
    0,2;
    3,2];
b= [4 13 18];
lb=zeros(2,1);

[x, fval, exitflag, output,lambda]=linprog(f,A,b,[],[],lb)

lambda.lower
lambda.upper
lambda.eqlin
lambda.ineqlin
x
fval
