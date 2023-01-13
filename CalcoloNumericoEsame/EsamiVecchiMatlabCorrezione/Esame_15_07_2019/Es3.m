% Esercizio 3
close all
clear
clc
format long 
f=@(x) 1+exp(-x.^2)/2;
a=-1;
b=1;
% formula trapezi semplice
I_ts=(f(a)+f(b))*(b-a)/2
% formula trapezi composita
m=10;
I_tc=trapezc(a,b,m,f)
x=linspace(a,b,m+1);
I_trapz=trapz(x,f(x)) %formula trapezi composita Matlab
I_quad=quad(f,a,b) %quadratura adattiva Matlab
% errore
err=[];
H=[]; 
for m=10:10:100
    err=[err; abs(I_quad-trapezc(a,b,m,f))];
    H=[H;(b-a)/m]%ampiezza sottointervalli
end
format short e
[[10:10:100]' H err err./H.^2]




