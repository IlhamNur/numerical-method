% Ilham Nur Romdoni, M0520038

x = -0.5:0.01:1.5;
y1 = x.^3-4*x.^2;
y2 = -6*x+3;
X = -1:0.5:2;
Y = 0.*X;
Y1 = -6:1:6;
X1 = 0.*Y1;
plot(X,Y,'r',X1,Y1,'r',x,y1,'b',x,y2,'b');
gtext('f(x1) = x^3 - 4x^2');
gtext('f(x2) = -6*x + 3');
gtext('akar');