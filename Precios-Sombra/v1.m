%--linprog: min Z -> { x*A <= b ; x*Aeq=beq }
Z=[2,3];
A= [ 0.5 0.25 ; -1 -3];
b=[4 -20];
Aeq=[ 1 1];
beq=[10];
lowerbound= [0,0];
upperbound=[inf inf]; % upperbound= [] 
[x, z]= linprog(Z,A,b,Aeq,beq,lowerbound,upperbound)

%Analisis de sensibilidad
yi=2
y=[0 yi];
yeq=[0];

[x, z]= linprog(Z,A,b+y,Aeq,beq+yeq,lowerbound,upperbound)
b+y
beq+yeq
z/yi

%Analisis de sensibilidad
yi=-3-1/3
y=[0 0];
yeq=[yi];
bs=b+y
bseq=beq+yeq
[x, z]= linprog(Z,A,bs,Aeq,bseq,lowerbound,upperbound)
z/yi
%Analisis de sensibilidad
yi=0.5;
y=[yi 0];
yeq=[0];
bs=b+y
bseq=beq+yeq
[x, z]= linprog(Z,A,bs,Aeq,bseq,lowerbound,upperbound)
z/yi
