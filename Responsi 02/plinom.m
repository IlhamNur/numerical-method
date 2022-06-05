% Ilham Nur Romdoni, M0520038

% Inisialisasi nama fungsi plinom dengan parameter
function ypol = plinom(xx,x,k)
has = 1;
% Perulangan i dari 2 hingga k
for i=2:k
    has = has.*(xx - x(i-1));
end
% ypol inilah yang akan digunakan pada fungsi PolinomialNewton
ypol = has;
end