
% Skript som estimerar ei løysing av likninga f(x)=0
% Skriptet kjører til man får den presisjonen man ønsker.
% Input er start-verdien x0, funksjonsuttrykket f(x), 
% den deriverte av funksjonen, f'(x), og presisjonen Pres.

% Startverdi
x0=-2;

% Funksjon
funk = @(x) exp(x) + cos(x);

% Derivert:
funkDeriv = @(x) exp(x) - sin(x);

% Presisjon
Pres=1e-4;

% Initierer x - ny og gammel
x=x0;
xGml=x+10;      %Tilfeldig tall

% Iterer så lenge forskjellen mellom ny og gammel x er større
% enn Pres.
while abs(x-xGml)>Pres
    xGml=x;
    x=x-funk(x)/funkDeriv(x)
end

% Utskrift av svaret
x