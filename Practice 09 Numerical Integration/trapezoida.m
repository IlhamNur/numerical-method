% Ilham Nur Romdoni, M0520038

function F = trapezoida(f,a,b,n)
    h = (b-a)/n;
    S = feval(f,a);
    for i = 1:n-1
        x(i) = a + h*i;
        S = S + 2*feval(f,x(i));
    end
    S = S + feval(f,b);
    F = (h/2)*S;
end
