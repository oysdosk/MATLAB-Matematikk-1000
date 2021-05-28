% Skript som estimerer en løsning av en likning på formen f(x)=0
% Skriptet kjører til man får den presisjonen man ønsker.
% Input er start-verdien x0, funksjonsuttrykket f(x), 
% den deriverte av funksjonen (f'(x)), og presisjonen Pres.
 
% Metoden går ut på å anta at man er i nærheten av løsningen
% og bytter ut f(x) med den lineære tilnærmingen i det samme punktet.
% Da får vi et nytt nullpunkt og vi gjentar prosessen. For å finne en
% hensiktsmessig verdi å gjette på, kan det være lurt å plotte funksjonen
% først. 

% Startverdi
x0 = 0;

% Funksjon
funk = @(x) exp(x) + x;

% Derivert:
funkDeriv = @(x) exp(x) + 1;

% Presisjon
Pres = 1e-6;

% Initierer x - ny og gammel
x = x0;
xGml = x + 5;        % Tilfeldig tall for å komme i gang.

% Iterer så lenge forskjellen mellom ny og gammel x er større enn Pres.
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
plot (x,funk(x),'ro')      % Plotter svaret
hold off