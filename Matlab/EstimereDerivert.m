% Skript som estimerer en derivert

% Funksjon
funk = @(x) cos(x);

% x-verdi for den deriverte
a = 1;

% Fasit
L = -sin(a);

h = 1;

Derivert = (funk(a+h)-funk(a))/h;

for n=1:15
    DerivertFram(n)=(funk(a+h)-funk(a))/h;
    DerivertMidt(n)=(funk(a+h)-funk(a-h)) / (2*h);
    Hvektor(n)=h;
    h=h/2;
end

loglog(Hvektor,abs(DerivertFram-L),'x-')
hold on
loglog(Hvektor,abs(DerivertMidt-L),'+-')
hold off
grid on