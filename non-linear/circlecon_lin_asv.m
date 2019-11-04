funct=@(x)-(x(1)^2+2*x(2));
x0=[1,0];
nonlcon = @circlecon(x);
[x,fval]=fmincon(funct,x0,[],[],[],[],[],[],nonlcon)
