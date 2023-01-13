clear 
clc
close all 

x=linspace(-pi,pi,200);
plot(x,sin(x))
hold on 
for N=1:3
    approx=fun_es(x,N);
    plot(x,approx)
    err(N)=norm(approx-sin(x),inf);
end
legend ('sin(x)','p_1','p_2','p_3')
grid on 
xlabel('angoli')
ylabel('sin e approsimanti')


