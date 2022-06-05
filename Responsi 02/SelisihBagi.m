% Ilham Nur Romdoni, M0520038

function D = SelisihBagi(X,Y)
% Inisialisasi nilai x dan y sebagai nilai variabel yang di-input-kan
    x = X;
    y = Y;
% Panjang dari x
    n = length(x); 
% Matriks zeros(n)
    D = zeros(n)
% Matriks yang semua baris pada kolom ke-1 berisi nilai y pada baris pertama sampai kolom ke n
    D(:,1) = y(1:n)
% Menghitung selisih bagi dengan perulangan dari kolom ke-2 hingga n 
    for j=2:n
% Perulangan for dari kolom yang sama dengan baris hingga n
        for k=j:n
% Rumus selisih bagi
            D(k,j) = (D(k,j-1) - D(k-1,j-1))/(x(k) - x(k-j+1)); 
        end
    end
end