% Skript som estimerer en grense

% Verdien x skal gå mot
a = pi/3;

% Avstanden mellom x og a:
h=1;

% Plotting: 

% f blir ikke et tall for hver iterasjon, men en vektor
for n=1:15
    x=a-h;
    fMinus(n)=(cos(x)-1/2)/(x-pi/3);
    x=a+h;
    fPluss(n)=(cos(x)-1/2)/(x-pi/3);
    hVektor(n) = h;
    h=h/2;
end

% Selve plottingen:

%semilogx gir logaritmisk x-akse:
semilogx (hVektor,fMinus,'x-')
hold on;
plot (hVektor,fPluss,'r+-')
hold off;
grid on