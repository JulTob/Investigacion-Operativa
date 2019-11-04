M=1000000000;
% De\A  N1  N2  N3  N4  N5  N6  N7
N1=[    M   15  M   1   M   M   8 ];    %Fuente     20
N2=[    M   M   M   M   M   4   M ];    %Sumidero   45
N3=[    M   M   M   7   M   M   13];    %Fuente     30
N4=[    M   2   M   M   M   5   9 ];    %Interm     30 max     
N5=[    M   M   3   6   M   14  M ];    %Fuente     10
N6=[    M   M   M   M   M   M   M ];    %Sumidero   55
N7=[    M   10  M   M   M   M   M ];    %Intermedio

upb1=[  M   M   M  15   M   M   M ];
upb2=[  M   M   M   M   M   M   M ];
upb3=[  M   M   M   M   M   M   5 ];
upb4=[  M   M   M   M   M   M   M ];
upb5=[  M   M   M   M   M   M   M ];
upb6=[  M   M   M   M   M   M   M ];
upb7=[  M   M   M   M   M   M   M ];

%c_de_a
C= [N1,N2,N3,N4,N5,N6,N7];

N=7;

%Flux Vectors
To=eye(N);
Out= ones(1,N);
Null= zeros(1,N);

% Fuentes
%     N1   N2   N3   N4   N5   N6   N7
Aeq=[ Out  Null Null Null Null Null Null ;
      Null Null Null Null Out  Null Null ;
      Null Null Out  Null -To(3,:) Null Null ;
%In=Out
%   N1      N2      N3      N4      N5      N6  	N7
    To(4,:) To(4,:) To(4,:) -Out    To(4,:) To(4,:) To(4,:);
    To(7,:) To(7,:) To(7,:) To(7,:) To(7,:) To(7,:) -Out];

beq=[20 10 30 ...
     0 0];
   
%Sumideros
%   N1      N2      N3      N4      N5      N6  	N7
A=[ To(4,:) To(4,:) To(4,:) To(4,:) To(4,:) To(4,:) To(4,:);
    To(2,:) To(2,:) To(2,:) To(2,:) To(2,:) To(2,:) To(2,:);
    To(6,:) To(6,:) To(6,:) To(6,:) To(6,:) To(6,:) To(6,:)];
b=[ 30 45 55];
lwb=zeros(1,length(C));
upb=[upb1,upb2,upb3,upb4,upb5,upb6,upb7];
intcon=[1:length(C)];
%min C
% A<=b
% Aeq=beq
%lwb<=x<=upb
[x,Cval]=intlinprog(C,intcon,A,b,Aeq,beq,lwb,upb)
x1=x(1:N);
x2=x(N+1:2*N);
x3=x(2*N+1:3*N);
x4=x(3*N+1:4*N);
x5=x(4*N+1:5*N);
x6=x(5*N+1:6*N);
x7=x(6*N+1:7*N);
X=[x1,x2,x3,x4,x5,x6,x7]
