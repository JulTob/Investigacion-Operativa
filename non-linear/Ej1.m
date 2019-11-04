% fminunc : Gradiental
% fminsearch : No Gradiental

funct=@(x)...   %Función de x
    -(...       %Maximizar
    2*(2-x(1))^2 * exp(-(x(1)^2) - (x(2) + 1)^2)...
    -15*( x(1)/5 - x(1)^3 - x(2)^3) * exp(-x(1)^2 - x(2)^2)...
    -1/3* exp(-(x(1)+1)^2 - x(2)^2)...
    );
X=[];

x0= [-2,-2];

[x,fval] = fminunc(funct,x0)
X=[X;x, -fval];

x0= [2,-2];

[x,fval] = fminunc(funct,x0)
X=[X;x, -fval];

x0= [-2,2];

[x,fval] = fminunc(funct,x0)
X=[X;x, -fval];

x0= [2,2];

[x,fval] = fminunc(funct,x0)
X=[X;x, -fval];

x0= [0,0];

[x,fval] = fminunc(funct,x0)
X=[X;x, -fval]
