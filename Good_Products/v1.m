% GOOD PRODUCTS COMPANY
% PRODUCTION TIME FOR UNIT PRODUCED:
%       Product 1   product 2   product3    Production Time/week
%Plant 1    3h          4h          2h              30h
%Plant 2    4h          6h          2h              40h
%profit/unt  5          7           3   thousands of $
% Sales:     7          5           9   units/week expected

%Choose one fabrik
%Choose up to two products to produce

% x1 x2 x3 d1 d2 dx1 dx2 dx3
Z=[5 7 3 0 0 0 0 0];
M=10000;  
% 3 x1 + 4 x2 + 2 x3 <= 30 +M*d1
    % 3 x1 + 4 x2 + 2 x3 -M d1 <= 0
% 4 x1 + 6 x2 + 2 x3 <= 40 +M*查1
    %4 x1 + 6 x2 + 2 x3 -M d2<= 40
% dx1 + dx2 + dx3 <= 2
% d1 + d2 =1
% x1 <= M dx1
% x2 <= M dx2
% x3 <= M dx3

A=[3 4 2 -M 0 0 0 0;
   4 6 2 0 -M 0 0 0;
   0 0 0 0 0 1 1 1;
   1 0 0 0 0 -M 0 0;
   0 1 0 0 0 0 -M 0;
   0 0 1 0 0 0 0 -M;
   1 0 0 0 0 0 0 0;
   0 1 0 0 0 0 0 0;
   0 0 1 0 0 0 0 0];
b=[0 40+M 2 0 0 0 7 5 9];
up= [inf inf inf 1 1 1 1 1];
lows= zeros(1,8);
Aeq=[0 0 0 1 1 0 0 0];
beq=[1];

%Decisor binario: Integer con uper bound 1, 1ower bound 0
%Maximizar Z
[X, zVal]= intlinprog(-Z,[4:8],A,b,Aeq,beq,lows,up)
