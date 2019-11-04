%  help linprog


%%Problema 1

%--linprog: min Z -> { x*A <= b ; x*Aeq=beq }
A= [ 0.5 0.25 ; -1 -3];
b=[4 -20];
Z=[2,3];
Aeq=[ 1 1];
beq=[10];
lowerbound= [0,0];
upperbound=[inf inf]; % upperbound= [] 
x= linprog(Z,A,b,Aeq,beq,lowerbound,upperbound)



%--linprog: min Z -> x*A <= b
A= [ 6 4 ; 1 2; -1 1; 0 1; -1 0; 0 -1];
b=[24 6 1 2 0 0];
Z=[5,4];

x= linprog(-Z,A,b)  % -Z maximiza

%--linprog: min Z -> x*A <= b
A= [ 6 4 ; 1 2; -1 1];
b=[24 6 1];
Z=[5,4];
Aeq=[];
beq=[];
lowerbound= [0,0];
upperbound=[inf 2];
[x, Zval]= linprog(-Z,A,b,Aeq,beq,lowerbound,upperbound)


