%Coste fijo
%Iniciamos la producción?
%Costes por la variable de decisión
%Hacer dx produce un coste de Zdx

%Max Z
%    A   B   C   D      d1      d2     d3     d4
Z= [50  60  55  80  -14500  -10000  -8000  -9000];

% 10A 15B 5C 14D <= 2.000
% A <= M·d1
% B<= M·d2
% C<= M·d3
% D<= M·d4
%Si d1 :entonces (d3 OR d4:  d3 + d4 >= d1
M= 1000000;

%    A   B  C  D d1 d2 d3 d4
A = [10 15  5 14  0  0  0  0;
      1  0  0  0 -M  0  0  0;
      0  1  0  0  0 -M  0  0;
      0  0  1  0  0  0 -M  0;
      0  0  0  1  0  0  0 -M;
      0  0  0  0  1  0 -1 -1];

b=[2000 0 0 0 0 0]';

Aeq=[];
beq=[];

intcon=1:8;
ub=[inf inf inf inf 1 1 1 1];
lb=[0 0 0 0 0 0 0 0];

[x, Zval]= intlinprog(-Z,intcon,A,b,Aeq,beq,lb,ub)
