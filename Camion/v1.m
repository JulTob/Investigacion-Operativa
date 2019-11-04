%Yo para ser feliz quiero un camión :)
%Problema de Transporte
%LLevar cosas de Fábrica-X a Almacén-Y 
%Produccion debe ser igual a demanda

%Costes: Cxy
C=[ 464 513 654 867, 352 416 690 791, 995 682 388 685];
%Fábrica-1 : Produce  75
%Fábrica-2 : Produce 125
%Fábrica-3 : Produce 100

%Almacén-1 : Cabe 80
%Almacén-2 : Cabe 65
%Almacén-3 : Cabe 70
%Almacén-4 : Cabe 85

A=[];
b=[];
Aeq=[ 1 1 1 1 0 0 0 0 0 0 0 0 ;
      0 0 0 0 1 1 1 1 0 0 0 0 ;
      0 0 0 0 0 0 0 0 1 1 1 1 ;
      1 0 0 0 1 0 0 0 1 0 0 0 ;
      0 1 0 0 0 1 0 0 0 1 0 0 ;
      0 0 1 0 0 0 1 0 0 0 1 0 ;
      0 0 0 1 0 0 0 1 0 0 0 1];
beq=[75 125 100 80 65 70 85];
lwb=[0 0 0 0 0 0 0 0 0 0 0 0];
upb=inf*[1 1 1 1 1 1 1 1 1 1 1 1];
intcon=1:12;
[x,Zval]= intlinprog(C,intcon,A,b,Aeq,beq,lwb,upb)





