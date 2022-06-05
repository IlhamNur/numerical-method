% Ilham Nur Romdoni, M0520038

function y = Metode_Newton_Raphson (f, x0, n, tol)
f_asli = sym(f)
f_turunan = diff(f_asli,'x')
y = double(x0);
i = 0;
fa = subs (f_asli,y);
fprintf('Iter    fa          fb         y\n');
while (abs(fa) > tol)
    fa = subs (f_asli,y);
    fb = subs (f_turunan,y);
    if fa == 0 || i == n
        break
    end
    y = double (y - fa./fb);
    nilai_y = double(y);
    nilai_fa = double(fa);
    nilai_fb = double(fb);
    fprintf('%3.0f   %5.4f    %5.4f    %5.4f\n',i,nilai_fa,nilai_fb,nilai_y);
    %disp ([i nilai_y nilai_fa])
    i = i + 1;
end