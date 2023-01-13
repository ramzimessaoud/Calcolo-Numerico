% Esercizio 3
close all
clear
clc
format long e
% grafico intersezione
r=@(s) 2*s;
z=@(s) sqrt(s.^2+1);
a=0;
b=2;
s=linspace(a,b);
plot(s,r(s),'k',s,z(s),'r')
xlabel('s')
axis square
grid on
hold on
% dati
f=@(s) 2*s-sqrt(s.^2+1);%2*s-sqrt(s.^2+1);
a=0;
b=2;
s0=1;
% intersezione approssimata con il comando fzero
disp('ascissa intersezione calcolata con il comando FZERO')
root=fzero(@(s) f(s),s0)
plot(root,r(root),'*r')
legend('r(s)','z(s)','approssimazione intersezione')
% approssimazione con il metodo delle corde
nmax=100;
toll=10^-10;
[x_chord,nit_chord]=chord(a,b,s0,nmax,toll,f);
disp('tabella metodo corde')
[[1:nit_chord]' x_chord abs(f(x_chord))]
% approssimazione con il metodo delle secanti
[x_sec,nit_sec]=secant(a,b,nmax,toll,f);
disp('tabella metodo secanti')
[[1:nit_sec]' x_sec abs(f(x_sec))]
% confronto con FZERO
disp('confronto corde-FZERO')
abs(root-x_chord(end))
disp('confronto secanti-FZERO')
abs(root-x_sec(end))

