% Ilham Nur Romdoni, M0520038

% a. Perhitungan secara eksak
a = 0;
for i = 1:100,
    a = a + sqrt(i);
end;
fprintf('a = %5.15f\n',a);
    
% b. Masing-masing akar dikalikan 100 dan dibulatkan
b = 0;
for i =1:100,
    b = b + (100*sqrt(i));
    b = round(b);
end;
b = b/100;
E = abs(b-a);
fprintf('b = %5.2f\n',b);
fprintf('e = %5.15f\n', E);

% c. Tanpa looping
i = 1:100;
c = sum(sqrt(i));
c;
E = abs(c-a);
fprintf('c = %5.15f\n',c);
fprintf('e = %5.15f\n',E);