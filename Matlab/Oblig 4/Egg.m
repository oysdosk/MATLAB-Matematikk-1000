% Skript med målinger av egg

a = 0;
b = 5.5;
N = 12;

deltaX = (b-a)/N;

f0 = 0;
f1 = 1.38;
f2 = 2.16;
f3 = 2.46;
f4 = 2.53;
f5 = 2.62;
f6 = 2.64;
f7 = 2.58;
f8 = 2.52;
f9 = 2.34;
f10 = 1.98;
f11 = 1.26;
f12 = 0;

xVektor = a:deltaX:b;
yVektor = [f0 f1 f2 f3 f4 f5 f6 f7 f8 f9 f10 f11 f12]*0.9;


plot (xVektor, yVektor)
axis([-2 8 -5 5])
axis square
grid on
hold on

yyVektor = -yVektor;
plot(xVektor, yyVektor)
hold off
