function[L,U]=factorizacion_crout(A)
n = length(A);
L = eye(n);
U = eye(n);
for k = 1 : n
	%Hacer L(k,k) = A(k,k) - sum(p=1, k-1) (L(k,p) * U(p,k))
    suma1 = 0;
    for p = 1 : k - 1
        suma1 = suma1 + L(k, p) * U(p, k);
    end
    L(k,k) = A(k,k) - suma1;
	% Llenar los valores de L
    for i = k + 1 : n
        suma2 = 0;
        for p = 1 : k - 1
            suma2 = suma2 + L(i,p) * U(p,k);
        end
        L(i,k) = (A(i,k) - suma2);
		%el disp(L) muestra como se obtuvieron valores de L
        %disp(L)
    end
	% LLenar los valores de U
    for j = k + 1 : n
        suma3 = 0;
        for p = 1 : k - 1
            suma3 = suma3 + L(k,p) * U(p,j);
        end
        U(k,j) = (A(k,j) - suma3) / L(k,k);
		%el disp(U) muestra como se obtuvieron valores de U
        %disp(U)
    end
end
end
