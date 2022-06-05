% Ilham Nur Romdoni, M0520038

langsung = EliminasiGaussJordan(A,b);

iteratif = IterasiJacobi(A,b);

r=abs(langsung - iteratif)