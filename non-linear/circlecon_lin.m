funct=@(x)-(x(1)^2+2*x(2));
x0=[-1,-1];
nonlcon = @circlecon;
[x,fval]=fmincon(funct,x0,[],[],[],[],[],[],nonlcon)
