% Skript som estimerar ei løysing av likninga f(x)=0
% Skriptet kjører til man får den presisjonen man ønsker.
% Input er start-verdien x0, funksjonsuttrykket f(x), 
% den deriverte av funksjonen, f'(x), og presisjonen Pres.

% Startverdi
x0=0.51;

% Funksjon
funk = @(x) x*exp((-x)^2);

% Derivert:
funkDeriv = @(x) (1-2*x^2)*(exp((-x)^2));

% Presisjon
Pres=1e-3;

% Initierer x - ny og gammel
x=x0;
xGml=x+10;      %Tilfeldig tall

% Iterer så lenge forskjellen mellom ny og gammel x er større
% enn Pres.
for n=1:8;
    format long;
    x=x-funk(x)/funkDeriv(x)
end

% Utskrift av svaret
x;