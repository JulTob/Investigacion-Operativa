

fun = @(x)...
    -(log(x(1)+1)+x(2));

x0 = [0.5,0];
A = [2,1];
b = 3;
Aeq = [];
beq = [];
lb = [0,0];
ub = [inf,inf];
[x,fval] = fmincon(fun,x0,A,b,Aeq,beq,lb,ub)

figure
ezsurf('log(x+1)+y')
figure
ezcontourf('(x-2)^2+(y-1)^2')
