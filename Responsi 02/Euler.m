% Ilham Nur Romdoni, M0520038

function [x,y] = Euler (f, h, a, b, y0)
% n sebagai jumlah iterasi
n = (b-a)/h;
% x sama dengan nilai awal (a)
x = [a];
% y merupakan nilai y0
y = [y0];

% Perulangan for i dari 1 sampai dengan n 
for i = 1:n,
% x baru
    x = [x;a+i*h];
% y baru menggunakan rumus euler
    y = [y;y(i)+h*f(x(i),y(i))];
end

% Untuk mengetahui hasil dari penghitungan eksak
xe = a:h:b;
ye = (((-0.06.*x)+sqrt(12))/2).^2;

% Untuk membandingkan nilai y dari pendekatan numerik dan eksak
plot(xe,ye,'--r',x,y,'b');