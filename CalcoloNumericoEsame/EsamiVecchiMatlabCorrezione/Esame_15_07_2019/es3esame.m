clear
clc

A=[1 1 1; -1 2 0.2; 1 -0.1 2]; 
%ho scelto B=1 perche jacobi per convergere
% deve essere strettamente diagonale dominante cioe deve essere
% =< 1
b=[1 2 3]';
toll=10^-3;
D=diag(diag(A))
dinv=inv(D)
E=A-D;
bj=-dinv*E
qj=dinv*b
r=norm(eig(bj),"inf") %raggio spettrale
i=0;
x=ones(3,1);
while norm(b-A*x)>toll %criterio del residuo
    x0=x;
    x=bj*x+qj;
    err=norm(x0-x);
    i=i+1;
end
x
err
i
