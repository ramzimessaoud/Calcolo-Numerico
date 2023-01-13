% Esercizio 3
close all
clear
clc
format long 
f=@(x) cos(x);

a=0;
b=pi;
% formula del punto medio semplice
I_ms=f((a+b)/2)*(b-a)
% valore esatto
I_esatto=sin(b)-sin(a)

% cambio estremi
a=-pi/2;
b=pi/2;
% formula del punto medio semplice
I_ms=f((a+b)/2)*(b-a)
% valore esatto
I_esatto=sin(b)-sin(a)
% errore relativo
Err_rel=abs((I_ms-I_esatto)/I_esatto)

% formula del punto medio composita
m=10; %numero di sottointervalli della decomposizione
I_mc=midpntc(a,b,m,f)
% errore punto medio composita
err_mc=[];
H_mc=[]; 
for m=10:10:100 %numero di sottointervalli della decomposizione
    err_mc=[err_mc; abs(I_esatto-midpntc(a,b,m,f))];
end
% errore formula trapezi composita Matlab
err_tc=[];
H_tc=[]; 
for m=10:10:100 %numero di sottointervalli della decomposizione
    x=linspace(a,b,m+1);
%    err_tc=[err_tc; abs(I_esatto-trapz(x,f(x)))];
    err_tc=[err_tc; abs(I_esatto-trapezc(a,b,m,f))];
end
format short e
[[10:10:100]' err_mc err_tc]




