% Ilham Nur Romdoni, M0520038

function [x,y] = RK4 (f, n, a, b, y0)
h = (b-a)/n;
x(1) = a;
y(1) = y0;

for i = 1:n,
    x(i+1) = x(i) + h;
    k1 = h*feval(f, x(i),y(i));
    k2 = h*feval(f, x(i) + h/2, y(i) + k1/2);
    k3 = h*feval(f, x(i) + h/2, y(i) + k2/2);
    k4 = h*feval(f, x(i) + h/2, y(i) + k3);
    y(i+1) = y(i) + k1/6 + k2/3 + k3/3 + k4/6;
end

y

xe = a:h:b;
ye = exp(-2*x);

plot(x,y,'b',xe,ye,'--r');