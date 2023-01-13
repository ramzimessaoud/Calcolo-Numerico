function [xvect,fx,nit] = newton(x0,nmax,toll,fun,dfun)
q=dfun(x0);
nit=0;
xvect=x0;
fx=abs(fun(x0));
err=1;
while nit<nmax && err>toll
    nit=nit+1;
    if q==0
        disp('arresto per azzeramento')
        return
    else
        x=x0-fun(x0)/q;
        xvect=[xvect;x];
        fx=[fx;abs(fun(x))];
        err=abs(x-x0);
        x0=x;
        q=dfun(x0);
    end
end
