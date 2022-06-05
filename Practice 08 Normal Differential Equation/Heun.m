% Ilham Nur Romdoni, M0520038

function [x,y] = Heun (f, n, a, b, y0)
h = (b-a)/n;
y(1) = y0;
x(1) = a;

for i = 1:n,
    x(i+1) = x(i) + h;
    k1 = h*f(x(i),y(i));
    k2 = h*f(x(i)+h,y(i)+k1);
    y(i+1) = y(i)+((k1+k2)/2);
end

y

xe = a:h:b;
ye = exp(-2*x);

plot(xe,ye,'--r',x,y,'b');