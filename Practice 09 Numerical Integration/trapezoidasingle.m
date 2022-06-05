% Ilham Nur Romdoni, M0520038

function F = trapezoidasingle(f,a,b)
    h = (b-a);
    S = feval(f,a);

    x = a + h;
    S = S + 2*feval(f,x);

    S = S + feval(f,b);
    F = (h/2)*S;
end
