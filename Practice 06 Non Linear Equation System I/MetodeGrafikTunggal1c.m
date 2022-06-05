% Ilham Nur Romdoni, M0520038

x = -0.3:0.01:2.5;
f = -2*x.^6-1,6*x.^4+12*x+1;
X = -1:0.5:2.5;
Y = 2.*X;
Y1 = -6:1:6;
X1 = 0.*Y1;
plot(X,Y,'r',X1,Y1,'r',x,f,'b');
gtext('y = -2*x^6 - 1,6*x^4 + 12*x + 1');
gtext('akar');