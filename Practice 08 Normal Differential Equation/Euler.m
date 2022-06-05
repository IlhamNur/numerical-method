% Ilham Nur Romdoni, M0520038

function [x,y] = Euler (f, n, a, b, y0)
h = (b-a)/n;
x = [a];
y = [y0];

for i = 1:n,
    x = [x;a+i*h];
    y = [y;y(i)+h*f(x(i),y(i))];
end

y

xe = a:h:b;
ye = exp(-2*x);

plot(xe,ye,'--r',x,y,'b');