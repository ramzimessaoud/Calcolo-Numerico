% Esercizio 3
clear
clc
format long e
% grafico della funzione
f=@(x) x.^8-2;
a=0.5;
b=2;
s=linspace(a,b);
plot(s,f(s),'k')
xlabel('s')
axis square
grid on
hold on 
% approssimazione con il metodo delle tangenti
f_der=@(x) 8*x.^7;
s0=2;
nmax=100;
toll=10^-10;
[s_New,nit_New]=Newton(s0,nmax,toll,f,f_der);
plot(s_New,f(s_New),'ob')
% radice approssimata con il comando roots
radici=roots([1,0,0,0,0,0,0,0,-2]);
disp('radice calcolata con il comando ROOTS')
r=radici(6)
plot(r,f(r),'*r')
% radice approssimata con il comando fzero
disp('radice calcolata con il comando FZERO')
z=fzero(@(s) f(s),2)
legend('f(s)','approssimanti con metodo tangenti','radice ROOTS')
% approssimazione con il metodo di bisezione
[s_bis,nit_bis]=bisect(a,b,toll,nmax,f);
% confronto con radice ROOTS
disp('n. iterazioni Newton e differenza con roots')
[nit_New abs(r-s_New(end))]
disp('n. iterazioni bisezione e differenza con roots')
[nit_bis abs(r-s_bis(end))]
% approssimazione con il metodo delle tangenti e s0=0.5
s0=0.5;
disp('valore della derivata di f in s0')
f_der(s0)
nmax=1000;
toll=10^-10;
[s_New,nit_New]=Newton(s0,nmax,toll,f,f_der);
disp('n. iterazioni Newton e differenza con roots')
[nit_New abs(r-s_New(end))]




