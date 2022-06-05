% Ilham Nur Romdoni, M0520038

function [x,y] = Heun (f, h, a, b, y0)
% n sebagai jumlah iterasi
n = (b-a)/h;
% y1 merupakan nilai y0
y(1) = y0;
% x1 sama dengan nilai awal (a)
x(1) = a;

% Perulangan for i dari 1 sampai dengan n 
% Perulangan untuk menerapkan rumus heun
for i = 1:n,
    x(i+1) = x(i) + h;
    k1 = h*f(x(i),y(i));
    k2 = h*f(x(i)+h,y(i)+k1);
    y(i+1) = y(i)+((k1+k2)/2);
end

y;

% Untuk mengetahui hasil dari penghitungan eksak
xe = a:h:b;
ye = (((-0.06.*x)+sqrt(12))/2).^2;

% Untuk membandingkan nilai y dari pendekatan numerik dan eksak
plot(xe,ye,'--r',x,y,'b');