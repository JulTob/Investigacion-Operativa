% fminunc : Gradiental
% fminsearch : No Gradiental

funct=@(x)...   %Funci�n de x
    -(...       %Maximizar
    2*(2-x(1))^2 * exp(-(x(1)^2) - (x(2) + 1)^2)...
    -15*( x(1)/5 - x(1)^3 - x(2)^3) * exp(-x(1)^2 - x(2)^2)...
    -1/3* exp(-(x(1)+1)^2 - x(2)^2)...
    );
 
x0= [-2,-2];

[x,fval] = fminunc(funct,x0)

x0= [2,-2];

[x,fval] = fminunc(funct,x0)

x0= [-2,-2];

[x,fval] = fminunc(funct,x0)

