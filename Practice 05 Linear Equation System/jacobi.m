% Ilham Nur Romdoni, M0520038

function [x1, g, H]= jacobi (A,b,X0,T,N)
H = XO';
n = length(b);
X1 = X0;
for k=1:N,
    for i = 1:n,
        S = b(i)-A(i, [1:i-1.i+1:n])*X) ([1:i-1,i+1:n]);
        X1 (i) =S/A(i,i);
    end
    g = abs(X1-X0);
    err = norm(g);
    relerr = err/(norm(X1)+ eps);
    X0 = X1;
    H = [H;X0'];
if (err<T)|(relerr<T),break,end
end