% Esercizio 4
close all
clear
clc
format long e
% inserimento funzione e della sua derivata seconda
f=@(x) -cos(x)./x;
ff=@(x) ((-2+x.^2).*cos(x)-2*x.*sin(x))./x.^3;
a=0.05;
b=1.5;
% x=linspace(a,b,100);
% y=f(x);
% yy=ff(x);
% subplot(1,2,1)
% plot(x,y,'r')
% title('grafico della funzione')
% subplot(1,2,2)
% plot(x,yy,'r')
% hold on
% title('grafico della derivata seconda')
% costruzione dell'approssimazione
n=100;
x=linspace(a,b,n);
h=abs(x(2)-x(1));
yy=0;
for i=2:n-1
    f_xx(i-1)=(f(x(i+1))+f(x(i-1))-2*f(x(i)))/(h^2);
    yy(i-1)=ff(x(i));
    err(i-1)=abs((f_xx(i-1)-yy(i-1))/yy(i-1));
end
disp('errore')
[x(2:n-1)' err']
% subplot(1,2,2)
% plot(x(2:n-1),f_xx,'o')




