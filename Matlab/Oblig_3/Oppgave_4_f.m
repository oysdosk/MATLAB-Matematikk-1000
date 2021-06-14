h = .1;
n = 2/h;
x_0 = 0;
f_0 = 2;
f_1 = x_0^3*h + 2*x_0*h + f_0 - x_0*h*f_0; % "Bakover"-formelen
x = 2*h;
syms numFunk
k = 2;
A = zeros(n, 1);
A(1) = x - h; 
B = zeros(n, 1);
B(1) = f_1;

while (x<=2)
    placeholder = solve((f_0 - 4*f_1 + 3*numFunk)/2*h + x*numFunk == x^3 + 2*x, numFunk);
    f_0 = f_1;
    f_1 = placeholder;
    A(k) = x;
    B(k) = placeholder;
    k = k + 1;
    x = x + h;
end

plot(A, B, 'x')
hold on
x = -.5:h:2.5;
diffFunk = @(x) x.^2 + C*exp(-x.^2/2);
plot(x, diffFunk(x))
hold off