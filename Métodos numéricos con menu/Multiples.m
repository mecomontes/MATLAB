function [f0,df0,d2f0,xo0,Tol0,N0]=Multiples(f0,df0,d2f0,xo0,Tol0,N0);
    
    Entradas={'F(x) = ','DF(x) = ','D2F(x) = ','X0 = ','Tol = ','N = '};
    Titulo='DATOS DE ENTRADA';
    Dimensiones=[4 4 4 1 1 1];
    Defaul={f0,df0,d2f0,xo0,Tol0,N0};
    e=inputdlg(Entradas,Titulo,Dimensiones,Defaul);
    
    f0=e{1};
    df0=e{2};
    d2f0=e{3};
    xo=e{4};
    Tol0=e{5};
    N0=e{6};

    F=inline(e{1});
    DF=inline(e{2});
    D2F=inline(e{3});
    X0=str2num(e{4});
    Tol=str2num(e{5});
    N=str2num(e{6});
    
    Y0=F(X0);
    if (Y0==0)
       fprintf ('En X0 hay una raiz');
    else 
        if (N<=0)
           fprintf ('Revisar Numero de Iteraciones');
        else
           Y2=F(X0);
           Error=Tol+1;
           n=0;
           
           fprintf('\n n       Xr         f(x)         DF(x)         D2F(x)         Error ');
           while (Y2~=0 && Error>Tol &&  n<=N)
                n=n+1; 
                Xr=X0-F(X0)*DF(X0)/(DF(X0)^2-F(X0)*D2F(X0));
                Y2=F(Xr);
                Error=abs(Xr-X0);
                fprintf('\n %g  %2.8f  %2.8f  %2.8f  %2.8f  %e ',n,Xr,F(Xr),DF(Xr),D2F(Xr),Error);
                X0=Xr;

                if (Y2==0)
                   fprintf('\n\n Hay una Raiz en Xr = %f',Xr);
                end
           end
           if (Error < Tol)   
              fprintf('\n\n X = %2.8f es una aproximaci�n a la raiz con un error absoluto de %f ',Xr,Error);
           else
              fprintf ('\n\nFracasa por el n�mero de Iteraciones');
           end
    end
end