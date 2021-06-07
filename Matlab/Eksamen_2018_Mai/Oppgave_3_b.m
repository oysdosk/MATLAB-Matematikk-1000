% Oppgave 3b

% Skriptet bruker Eulers midtpunkt-metode til å estimere løsningen 
% av likningen T´(t) = -2 * (T - f) der T er romtemperatur og f er
% utetemperatur.

% Funskjonen for utetemperatur: 
f = @(t) (15-3 * cos((pi/12)*t-1));

% Differensiallikningen
F = @(t, T) -0.1 * (T - f(t));

% Startkrav
t0 = 0;        
T0 = 17;         % Rompemperatur ved t = 0.

% Maksimal t-verdi
tMax = 24; 

% Antall steg i Eulers metode
N = input('Antall steg:');
h = (tMax - t0) / N;

% Initiering
t = t0;
T = T0;

% Eulers metode
for i=1:(N)               % N + 1 får med siste punktet
    tVektor(i) = t;
    TVektor(i) = T;
    tHatt = t + h/2;
    THatt = T + F(t,T) * h/2;
    T = T + F(tHatt,THatt) * h;     % Eulers midt-metode
    t = t + h;
end

% Svar til skjerm
T

% Plotting
plot (tVektor, TVektor, 'linewidth',2)
grid on

% Estimatet krever en tilstrekkelig høy N-verdi for å kunne regnes som å 
% ha god nok nøyaktighet.  