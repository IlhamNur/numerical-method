% Ilham Nur Romdoni, M0520038

x = -0.3:0.01:2.5;
f = exp(-x)-x;
X = -1:0.5:2.5;
Y = 0.*X;
Y1 = -6:1:6;
X1 = 0.*Y1;
plot(X,Y,'r',X1,Y1,'r',x,f,'b');
gtext('y = exp(-x)-x');
gtext('akar');