% %Seervada Park
% Caminos con nodos
M=1000; 
% c_ij: 1   2   3   4   5   6   7  
% De\A	O   A   B   C   D   E   T
O=[   	M   2   5   4   M   M   M ];
A=[   	2   M   2   M   7   M   M ];
B=[     5   2   M   1   4   3   M ];
C=[     4   M   1   M   M   4   M ];
D=[     M   7   4   M   M   1   5 ];
E=[     M   M   3   4   1   M   7 ];
T=[     M   M   M   M   5   7   M ];

% 7 nodos
N=7;

    %c_ij
C= [O,A,B,C,D,E,T];

%Flujo que sale - Flujo que entra
null=zeros(1,N);
ins=-ones(1,N);
outs=ones(1,N);
Aeq=[[outs,null,null,null,null,null,null]; %O
   [outs,ins,ins,ins,null,null,null]; %ABC
   [null,outs,outs,outs,ins,ins,null]; %DE
   [null,null,null,null,ins,ins,outs];
   [null,null,null,null,null,null,outs]];
beq=[1,0,0,0,-1];

Ain=[];
bin=[];
lwb=[zeros(1,N^2)];
upb=[ones(1,N^2)];
intcon=[1:N^2];
%min C
% A<=b
% Aeq=beq
%lwb<=x<=upb
[x,Cval]=intlinprog(C,intcon,Ain,bin,Aeq,beq,lwb,upb)

  x1=x(1:N)
  x2=x(N+1:2*N)
  x3=x(2*N+1:3*N)
  x4=x(3*N+1:4*N)
  x5=x(4*N+1:5*N)
  x6=x(5*N+1:6*N)
  x7=x(6*N+1:7*N)
