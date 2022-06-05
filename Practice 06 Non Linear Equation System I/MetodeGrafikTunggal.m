% Ilham Nur Romdoni, M0520038

x = -0.3:0.01:2.5;
f = x.^3-4*x.^2+6*x-3;
X = -1:0.5:2.5;
Y = 0.*X;
Y1 = -6:1:6;
X1 = 0.*Y1;
plot(X,Y,'r',X1,Y1,'r',x,f,'b');
gtext('y = x^3 - 4x^2 + 6x -3');
gtext('akar');