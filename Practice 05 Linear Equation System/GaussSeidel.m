function x = GaussSeidel(A,b)
n = size(A,1);

for i = 1:n
    xlama(i) = b(i)/A(i,i);
end

xlama = xlama';
C= -A;
for i = 1:n
    C(i,:) = C(i,:)/A(i,i);
    d(i,1) = xlama(i);
end

i = 20;
e = 0,0001
while (i <= 100)
    xbaru = C*xlama + d;
    if (abs(xbaru-xlama) < e)
        x = xbaru;
        disp('Gauss Seidel methode converge');
        return
    else
        xlama = xbaru;
    end
    fprintf("\n%.0f   %.3f   %.3f   %.3f\n", i,xbaru(1),xbaru(2),xbaru(3));
    i = i + 1;
end
disp('Gauss Seidel method not converge');