function a=interpolaN(x,y) 
% Untuk menghitung a_1, a_2, ..., a_n pada 
% P_{n-1}=a_1+a_2(x-x_1)+...+a_n(x-x_1)...(x_{n-1}) 
% yang melalui (x_1,y_1), (x_2,y_2), ..., (x_n,y_n) 
n=length(x); 
a(1)=y(1); 
for k=2:n, 
    P=p(a(1:k-1),x(1:k-1),x(k)); 
    M=prod(x(k)-x(1:k-1)); 
    a(k)=(y(k)-P)/M;
end