%Pregunta Examen Nodos
M=1000; 
% c_ij: 
% De\A	 1   2   3   4   5   6   7  8
c1=[     M   1   3   M   6   M   M  M];
c2=[   	 M   M   1   M   5   M   M  M];
c3=[     M   M   M   2   1   4   M  M];
c4=[     M   M   M   M   M   2   M  3];
c5=[     M   M   M   M   M   3   5  M];
c6=[     M   M   M   M   M   M   1  2];
c7=[     M   M   M   M   M   M   M  2];
c8=[     M   M   M   M   M   M   M  M];

% 8 Nodos
N=8;


C= [c1,c2,c3,c4,c5,c6,c7,c8];
DIR=-eye(N); %Direction to 
NULL=zeros(1,N);
ALL=ones(1,N);
A=[];
b=[];

Aeq=[ALL,NULL,NULL,NULL,NULL,NULL,NULL,NULL; %1
     DIR(2,:),ALL,NULL,NULL,NULL,NULL,NULL,NULL; %2
     DIR(3,:),DIR(3,:),ALL,NULL,NULL,NULL,NULL,NULL; %3
     DIR(4,:),DIR(4,:),DIR(4,:),ALL,NULL,NULL,NULL,NULL; %4
     DIR(5,:),DIR(5,:),DIR(5,:),DIR(5,:),ALL,NULL,NULL,NULL; %5
     DIR(6,:),DIR(6,:),DIR(6,:),DIR(6,:),DIR(6,:),ALL,NULL,NULL; %6
     DIR(7,:),DIR(7,:),DIR(7,:),DIR(7,:),DIR(7,:),DIR(7,:),ALL,NULL; %7
     DIR(8,:),DIR(8,:),DIR(8,:),DIR(8,:),DIR(8,:),DIR(8,:),DIR(8,:),NULL; %8
     DIR(5,:),DIR(5,:),DIR(5,:),DIR(5,:),DIR(5,:),DIR(5,:),DIR(5,:),DIR(5,:); %que pase por 5
     DIR(6,:),DIR(6,:),DIR(6,:),DIR(6,:),DIR(6,:),DIR(6,:),DIR(6,:),DIR(6,:)]; %que pase por 6



beq=[1 0 0 0 0 0 0 -1 -1 -1];


lwb=[zeros(1,N^2)];
upb=[ones(1,N^2)];
intcon=[1:(N^2)];
%min C
% A<=b
% Aeq=beq
%lwb<=x<=upb
[x,Cval]=intlinprog(C,intcon,A,b,Aeq,beq,lwb,upb);

  x1=x(1:N);
  x2=x(N+1:2*N);
  x3=x(2*N+1:3*N);
  x4=x(3*N+1:4*N);
  x5=x(4*N+1:5*N);
  x6=x(5*N+1:6*N);
  x7=x(6*N+1:7*N);
  x8=x(7*N+1:8*N);
X=[x1,x2,x3,x4,x5,x6,x7,x8]
Cval
