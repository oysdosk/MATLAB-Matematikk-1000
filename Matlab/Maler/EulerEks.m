% Skriptet bruker Eulers midtpunkt-metode til å estimere løsningen 
% av likningen T´(t) = -2 * (T - Tu) der T er romtemperatur og Tu er
% utetemperatur = 12 + 0.5 * t. 

% Funskjonen for utetemperatur: 
Tu = @(t) 12 + 0.5 * t;

% Differensiallikningen
F = @(t, T) -0.2 * (T - Tu(t));

% Startkrav
t0 = 0;        
T0 = 18;         % Rompemperatur ved t = 0.

% Maksimal t-verdi
tMax = 12; 

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