function  x=soluzione(alpha,b,n)
for j=1:n
    x(j)=b(j);
    if j<n
        b(j+1)=b(j+1)-alpha*x(j);
    end
end
