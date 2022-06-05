% Ilham Nur Romdoni, M0520038

function x = Metode_Secant (f, x0, n, tol)
fa = f(x0);
x1 = x0-1;
fb = f(x1);
i = 0;
fprintf('Iter   x0      x1        x       abs(x0-x1)   fa\n');
while (abs (x0 - x1) > tol)
    fa = f(x0);
    fb = f(x1);
    if (fa == 0 || i == n)
        return
    end
    x = x1 - fb.*(x1-x0)./(fb-fa);
    %disp([i x fa)])
    fprintf('%3.0f   %4.2f    %4.2f     %4.2f       %5.4f    %5.4f\n',i,x0,x1,abs(x0-x1),x,fa);
    x0=x1;
    x1=x;
    i=i+1;
end