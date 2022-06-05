% Ilham Nur Romdoni, M0520038

function x = IterasiJacobi(A,b)
tic;
[n m] = size(A);
for i = 1:n,
    xlama(i) = b(i)/A(i,i);
end
xlama = xlama';
C = -A;
for i = 1:n,
    C(i,i) = 0.0;
    C(i,:) = C(i,:)/A(i,i);
    d(i,1) = xlama(i);
end
i = 20;
e = 0,0001;
while (i <= 100)
    xbaru = C*xlama + d;
    if (norm(xbaru - xlama) <= e)
        x = xbaru;
        disp ('Jacobi method konverge');
        return
    else
        xlama = xbaru;
    end
    disp([i xbaru']);
    i = i + 1;
    toc;
end
disp ('Jacobi method not konverge');
toc;