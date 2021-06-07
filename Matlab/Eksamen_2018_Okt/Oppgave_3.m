% Skript som regner ut volum av et omdreiningleikam ved hjelp av Riemanns 
% midtpunkts-formel for integrasjon. Riemann-summer er en tilnærming til
% integralet av en funksjon. Antallet oppdelinger bestemmer nøyaktigheten
% til estimatet. 

% Leikamens profil
E = @ (x) 0.7 * atan(4 - 3 * x) + 2;

% Implementasjon av formelen for volum av et omdreiningslegeme
funkV = @ (x) pi * E(x).^2;

% Startverdier
a = -5;
b = 5;

% Antall oppdelinger, rektangler
N = input ('Skriv inn antall oppdelinger: ');

% Bredden på hvert rektangel
deltaX = (b-a)/N;

% Initierer Riemann-sum for volum
V = 0;

% Utregning
for n=1:N
    xv = a + deltaX * (n-1);        % x venstre
    xh = a + deltaX * n;            % x høyre
    xm = (xv + xh) / 2;             % x midtpunkt
    V = V + funkV(xm) * deltaX;     % Beregner volum med x midtpunkt
end
    
% Utskrift
V