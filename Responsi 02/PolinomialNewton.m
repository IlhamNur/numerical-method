% Ilham Nur Romdoni, M0520038

% Inisialisasi nama fungsi dan parameter
function P = PolinomialNewton(D,x,y)
% Sekarang akan dihitung sebuah yy=f(xx) dengan rumus polinomial Newton tersebut.
% Matriks D baris 1 kolom 1
yy = D(1,1);
% Perulangan untuk menutup setiap titik pada grafik
% Perulangan dilakukan pada baris ke-2 hingga n
n = length(x);
for k=2:n
% Penerapan dari rumus polinom newton
    yy = yy+D(k,k).*plinom(x,x,k);
end
% yy yang merupakan hasil dari P(x) yang ditemukan
yy
% Menampilkan grafik antara P(x) dengan f(x)
plot(x,y,'-wo', 'LineWidth',2, 'MarkerEdgeColor','k', 'MarkerFaceColor',[.49 1 .63], 'MarkerSize',12); hold on;
plot(x,yy,'-bs','LineWidth',1,'MarkerEdgeColor','k','MarkerFaceColor',[.1 .1 .5],'MarkerSize',6); grid on;
end