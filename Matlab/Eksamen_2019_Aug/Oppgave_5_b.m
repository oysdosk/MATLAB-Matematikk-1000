% Skriptet bruker Eulers midtpunkt-metode til å estimere løsningen 
% av startverdi-problemet y´ = F(x,y), y(x_0) = y_0. 

% Differensiallikningen
F = @(h) - ( 1 / (3 * (1.5 + h)) ) * sqrt(h);

% Startkrav
t = 0;      % Tid
y0 = 0;     % Høyde i starten

% Steglengden i Eulers metode
deltaT = 1e-2;

tVektor = t;
hVektor = h;

% Eulers metode
while (h > 0) % N + 1 får med siste punktet
    tVektor = ([tVektor, t]);
    hVektor = ([hVektor, h]);
    t = t + deltaT;              % Oppdaterer t
    h = h + F(h) * deltaT;       % Eulers metode
end

t