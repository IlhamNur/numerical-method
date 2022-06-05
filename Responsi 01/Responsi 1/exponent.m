% Ilham Nur Romdoni, M0520038

function e = exponent(x,n)
e = 1;
for i = 1:n
    e = e + (x.^2/factorial(i));
end