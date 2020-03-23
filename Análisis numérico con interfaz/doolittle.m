function doolittle
clc

prom={'matriz A','matriz b'};
name='INGRESE LOS SIGUIENTES DATOS';
num=1;
def={'[10 0 -3;4 13 -2;5 6 -12]','[1;-2;3]'};
per=inputdlg(prom,name,num,def);
A=str2num(per{1});
b=str2num(per{2});
n=length(b);
determinante=det(A);
 
if determinante==0
    disp('El determinante es cero, el sistema no tiene soluci�n �nica')
    return
end

for k=1:n
    fprintf('Etapa n�mero %g\n',k)
    suma1=0;
    for p=1:k-1
        suma1=suma1+L(k,p)*U(p,k);
    end
    U(k,k)=A(k,k)- suma1;
    L(k,k)=1;
    
    for i=k+1:n
         suma2=0;
         for p = 1:k-1
             suma2=suma2+ L(i,p)*U(p,k);
         end
         L(i,k) = (A(i,k)-suma2)/U(k,k);
    end
    L
    for  j=k+1:n
         suma3= 0;
         for p = 1:k-1
            suma3=suma3+ L(k,p)*U(p,j);
         end
         U(k,j) = (A(k,j)- suma3)/L(k,k);
    end
    U
end

 
for i=1:n
    acum=0;
    for j=1:i-1
        acum=acum+L(i,j)*y(j);
    end
    y(i)=(b(i)-acum)/L(i,i);
end
disp('Para Ly=b tenems que: ')
y
for i=n:-1:1
    acum=0;
    for j= i+1:n
        acum = acum + U(i,j)*X(j);
    end
    X(i)=(y(i)-acum)/U(i,i);
end
disp('Para Ux=y tenemos: ')
X 