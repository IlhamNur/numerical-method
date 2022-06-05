% Ilham Nur Romdoni, M0520038

% Menghitung nilai f(x)
A = sqrt(2)

% Menghitung nilai akar dengan rumus xn
n = input('n = ');
x = 1;
for i = 1:n,
    y = x;
    x = 1/2*(y+2/y);
end
fprintf('x = %5.15f\n',x);
E= abs(x-A);
fprintf('e = %5.15f\n', E);