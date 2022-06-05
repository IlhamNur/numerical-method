% Ilham Nur Romdoni, M0520038

x = input('Input nilai x : ');
% Menghitung nilai e^x dengan nilai eksak
A = exp(x)

% Menghitung nilai e^x dengan deret Taylor
n = input('Input nilai n : ');
B = 1;
for i = 1:n,
    B = B + (x^2/factorial(i));
end
B

e=abs(A-B);
fprintf('%5.15f', e)
