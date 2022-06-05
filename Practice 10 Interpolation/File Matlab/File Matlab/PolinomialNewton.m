% Ilham Nur Romdoni, M0520038

function P = PolinomialNewton(D,n,x,y)
% Sekarang akan dihitung sebuah yy=f(xx) dengan rumus polinomial Newton tersebut.
xx = 0:1:5;
yy = D(1,1);
for k=2:n
    yy = yy+D(k,k).*plinom(xx,x,k);
end
yy
plot(x,y,'-wo', 'LineWidth',2, 'MarkerEdgeColor','k', 'MarkerFaceColor',[.49 1 .63], 'MarkerSize',12); hold on;
plot(xx,yy,'-bs','LineWidth',1,'MarkerEdgeColor','k','MarkerFaceColor',[.1 .1 .5],'MarkerSize',6); grid on;
end