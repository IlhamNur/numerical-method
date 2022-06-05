% Ilham Nur Romdoni, M0520038

x = -0.5:0.01:1.5;
y1 = exp(-x);
y2 = x;
X = -1:0.5:2;
Y = 0.*X;
Y1 = -6:1:6;
X1 = 0.*Y1;
plot(X,Y,'r',X1,Y1,'r',x,y1,'b',x,y2,'b');
gtext('f(x1) = exp(-x)');
gtext('f(x2) = x');
gtext('akar');