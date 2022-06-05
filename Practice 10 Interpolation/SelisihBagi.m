% Ilham Nur Romdoni, M0520038

function D = SelisihBagi(X,Y)
    x = X;
    y = Y;
    n = length(x);
    D = zeros(n)
    D(:,1) = y(1:n)
    for j=2:n
        for k=j:n
            D(k,j) = (D(k,j-1) - D(k-1,j-1))/(x(k) - x(k-j+1)); 
        end
    end
end