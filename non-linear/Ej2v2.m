funct=@(x)...
    ((x(1)-2)^2 + (x(2)-1)^2);
x0=[10*rand,10*rand];
Aeq = [1,1];
beq= -2;

[x,fval]=fmincon(funct,x0,[],[],Aeq,beq,[],[],[])

% [x,fval] = fmincon(fun,x0,A,b,Aeq,beq,lb,ub,nonlcon,options)


ezsurf('(x-2)^2+(y-1)^2')
ezcontourf('(x-2)^2+(y-1)^2')
[x,y] = meshgrid(-6:0.5:6,-6:0.5:6);
z=(x-2).^2+(y-1).^2;

[px,py] = gradient(z,0.1,0.1);
contour(x,y,z); hold on
ezplot('(x-2).^2+(y-1).^2',[-6 6 -6 6]); hold on
fh = @(x) -x-2;
fplot(fh,[-6,6]);
