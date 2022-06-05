% Ilham Nur Romdoni, M0520038

function F = simphson1per3(f,a,b,n)
    h = (b-a)/n;
    S = feval(f,a);
    for i = 1:2:n-1
        x(i) = a + h*i;
        S = S + 4*feval(f,x(i));
    end
    S = S + feval(f,b);
    F = (h/3)*S;
end