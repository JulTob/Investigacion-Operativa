
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

%Esta mola
figure
ezcontourf('log(x+1)+y')
 hold on;
ezplot('2*x+y=3',[-6 6 -6 6]);


figure
[x,y] = meshgrid(-6:0.5:6,-6:0.5:6);
z=log(x+1)+y;

[px,py] = gradient(z,0.1,0.1);
contour(real(x),real(y),real(z))
 hold on;
ezplot('2*x+y=3',[-6 6 -6 6]);


