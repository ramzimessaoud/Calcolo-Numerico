function approx = fun_es(x,N)
for n=0:N
    add(n+1,:)=(-1)^n/factorial(2*n+1)*x.^(2*n+1);
end
approx=sum(add);