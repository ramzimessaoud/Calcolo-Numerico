clear 
clc
close all 

funz=@(x) x.^3-7*x.^2-x+7;
%dopo aver scritto il polinomio dichiaro un intervallo opportuno 
a=0; b=1.5;
x=linspace(a,b);
nmax=200;
toll=10^-10;

figure
f=@(x) x.^3-7*x.^2-x+7;
r(1)=fzero(f,1.5);
plot(r(1),'*')
hold on 
g=@(x) (x.^3-7*x.^2-x+7)./(x-r(1));
r(2)=fzero(g,1.5);
plot(r(2),'*')
hold on 
h=@(x) (x.^3-7*x.^2-x+7)./(x-r(1))*(x-r(2));
r(3)=fzero(h,1.5);
plot(r(3),'*')
legend('r_1','r_2','r_3','convergenza')
grid on 
%METODO NEWTON
hold on 
dfun=@(x) 3*x.^2-14*x-1;
%x0=0.1;
x0=0;
[xvect_n,fx_n,nit_n]=newton(x0,nmax,toll,funz,dfun);
nit_n
semilogy([1:nit_n],abs(xvect_n(2:end)))

