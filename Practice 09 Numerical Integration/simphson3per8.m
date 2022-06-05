% Ilham Nur Romdoni, M0520038

function F = simphson3per8(f,a,b,n)
    h = (b-a)/n;
    S = feval(f,a);
    
    for i = 1:2:n-1
        x(i) = a + h*i;
        S = S + 3*feval(f,x(i));
    end
    
    for i = 2:2:n-1
        x(i) = a + h*i;
        S = S + 3*feval(f,x(i));
    end
    
    S = S + feval(f,b);
    F = (3*h/8)*S;
end