% Skript som estimerer en løsning av en likning på formen f(x)=0
% Skriptet kjører til man får den presisjonen man ønsker.
% Input er start-verdien x0, funksjonsuttrykket f(x), 
% den deriverte av funksjonen (f'(x)), og presisjonen Pres.

% Startverdi, første x som skal itereres på
x0 = 0;

% Funksjon
funk = @(x) exp(x) + x;

% Derivert:
funkDeriv = @(x) exp(x) + 1;

% Presisjon
Pres = 1e-4;

% Initierer x - ny og gammel
x = x0;
xGml = x + 5;        % Tilfeldig tall for å komme i gang i løkken.

% Itererer så lenge forskjellen mellom ny og gammel x er større enn Pres.
while abs(x - xGml) > Pres
    xGml = x;
    format long;
    x = x - funk(x) / funkDeriv(x)
end

% Utskrift av svaret
x

% Plot
xVektor = -2:1e-2:2;
plot(xVektor,funk(xVektor),'k','linewidth',1.5)
grid on;
hold on
plot (x,funk(x),'ro')      % Plotter svaret x
hold off