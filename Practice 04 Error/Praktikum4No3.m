% Ilham Nur Romdoni, M0520038

% Menghitung nilai eksak
x = input ('Masukkan nilai x = ');
A = cos(x);
fprintf('cos(x) = %5.15f\n', A)

N = input('Input nilai N : ');

% Menghitung nilai dengan deret taylor
B = 1;
for n = 1:N,
    B = B + ((-1)^n)*(x^(2*n))/factorial(2*n);
end
B

e = abs(A-B);
fprintf('e = %5.15f\n', e)