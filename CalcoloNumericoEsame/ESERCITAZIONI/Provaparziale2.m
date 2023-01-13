clear
clc
close all 
n=10;
for k=1:10
    alpha=10^k;
    sol=ones(n,1);
    A=eye(n)+diag(alpha*ones(n-1,1),-1);
    b=A*sol;
    x=soluzione(alpha,b,n);
    condiz(k)=cond(A,inf);
    err(k)=norm(x-sol,inf);
end
subplot(1,2,1)
loglog(10.^[1:10],condiz)
grid on 
xlabel('/alpha')
ylabel('condizionamento')
subplot(1,2,2)
semilogx(10.^[1:10],err)
grid on 
xlabel('/alpha')
ylabel('errore sulla matrice')

figure
alpha=10;
for n=10:10:100
    sol=ones(n,1);
    A=eye(n)+diag(alpha*ones(n-1,1),-1);
    b=A*sol;
    x=soluzione(alpha,b,n);
    condiz(n/10)=cond(A,inf);
    err(n/10)=norm(x-sol,inf)
end
subplot(1,2,1)
semilogy([10:10:100],condiz)
grid on
xlabel('dimensione della matrice')
ylabel('condizionamento')
subplot(1,2,2)
plot([10:10:100],err)
grid on 
xlabel('dimensione della matrice')
ylabel('errore sulla soluzione')
%il condizionamento pur essendo grande sui grafici noto una
%approsimazione in doppia precisione

