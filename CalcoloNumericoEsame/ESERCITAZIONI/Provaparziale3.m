clear 
clc
close all
F=@(x) sin(2*x)+exp(x)+1;
a=-2; b=0.1;
nodi=[-2 -1.25 -0.7 0.1];%nodi dati all'inizio 
y_nodi=F(nodi);
x=linspace(a,b,1000);
%interpolazione lagraniana semplice(punto 1 della scheda)
coeff_lagrange=polyfit(nodi,y_nodi,lenght(nodi)-1);
%fine punto 1 
%punto 2
plot
y_lagr=polyval(coeff_lagrange,x);
err_lagr=no
