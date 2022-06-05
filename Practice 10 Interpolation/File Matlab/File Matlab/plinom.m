% Ilham Nur Romdoni, M0520038

function ypol = plinom(xx,x,k)
has = 1;
for i=2:k
    has = has.*(xx - x(i-1));
end
ypol = has;
end