% Oppgave 4 b)

% Skriptet estimerer hvor funksjonen 0.5 + 0.15*sqrt(x + 1) .* sin(pi*x) er
% på sitt bredeste i intervallet 0.2. Vi bruker
% Newtons metode til å finne nullpunktet til den deriverte av funksjonen.
% Den deriverte og dens egen deriverte estimeres selv ved å bruke
% midtpunktsformelen for numerisk derivasjon. Oppdelingen i disse formlene,
% samt presisjonen vi bestemmer at x skal ha, er det som avgjør hvor godt
% estimatet blir. 

% Velger en rimelig startverdi, x0
x0 = 0.5;

% Funksjonen
F = @ (x) 0.5 + 0.15*sqrt(x + 1) .* sin(pi*x);

% Den deriverte ved hjelp av midtpunktsformelen: 
dx = 1e-3;
Fd = @(x) (F(x + dx) - F(x - dx)) / (2 * dx);

% Den dobbeltderiverte deriverte ved hjelp av midtpunktsformelen: 
dx = 1e-3;
Fdd = @(x) (Fd(x + dx) - Fd(x - dx)) / (2 * dx);

% Presisjon
Pres = 1e-2;

% Initierer x - ny og gammel
x = x0;
xGml = x + 5;        % Tilfeldig tall for å komme i gang i løkken.

% Formatering
format long;

% Itererer så lenge forskjellen mellom ny og gammel x er større enn Pres.
while abs(x - xGml) > Pres
    xGml = x;
    x = x - Fd(x) / Fdd(x);
end

% Utskrift av svaret
x                   % Finner punktet 0.5329, f(0.5329)

xVektor = 0:1e-2:2;
plot(xVektor, F(xVektor))
hold on
plot(0.532930183800077,F(0.532930183800077), 'ro')