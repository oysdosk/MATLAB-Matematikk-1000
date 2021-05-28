x = -2:1e-2:5;
f = @(x) cos(x) - x;
plot(x,f(x))
grid on
p = @(x) -2*x+pi/2;
hold on
plot(x,p(x))
hold off

x=pi/4;
for n=1:15
    x = cos(x)
end