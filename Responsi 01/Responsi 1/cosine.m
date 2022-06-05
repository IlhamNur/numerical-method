% Ilham Nur Romdoni, M0520038

function c = cosine(x,n)
c = 1;
for i = 1:n
    c = c + ((-1).^i)*(x.^(2*i))/factorial(2*i);
end