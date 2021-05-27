% Skript som estimerar ei løysing av likninga f(x)=0
% Skriptet kjører til man får den presisjonen man ønsker.
% Input er start-verdien x0, funksjonsuttrykket f(x), 
% den deriverte av funksjonen, f'(x), og presisjonen Pres.

% Startverdi
x0=1;

% Funksjon
funk = @(x) x^(1/3);

% Derivert:
funkDeriv = @(x) (1/3)*(x^(-2/3));
% Initierer x
x=x0;

% Itererer
for n=1:5;
    x=x-funk(x)/funkDeriv(x);
    x
end

% Diverergerer: 4, -8 16 -32...