clear
clc
close all
a=0;
b=2;
s=linspace(a,b);
r=@(s) 2*s;
z=@(s) sqrt(s.^2+1);
plot(r(s),s);
hold on
plot(z(s),s);
legend('grafico r','grafico z')
%calcolo intersezione
s0=1;
f=@(s) 2*s-sqrt(s.^2+1);
root=fzero(@(s) f(s),s0)
plot(root,r(root),'*')