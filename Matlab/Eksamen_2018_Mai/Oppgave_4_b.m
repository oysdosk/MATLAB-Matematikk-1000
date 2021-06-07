% Skript som estimerer en løsning av en likning på formen f(x)=0
% Skriptet kjører til man får den presisjonen man ønsker.
% Input er start-verdien x0, funksjonsuttrykket f(x), 
% den deriverte av funksjonen (f'(x)), og presisjonen Pres.
 
% Metoden går ut på å anta at man er i nærheten av løsningen
% og bytter ut f(x) med den lineære tilnærmingen i det samme punktet.
% Da får vi et nytt nullpunkt og vi gjentar prosessen. For å finne en
% hensiktsmessig verdi å gjette på, kan det være lurt å plotte funksjonen
% først. 

% Startverdi (Ser fra grafen at x0 = 2 kan være passende. 
x0 = 2;

% Funksjon
funk = @(x) 1 + x.^2 - 2*x.^2 * log(x);

% Derivert:
funkDeriv = @(x) - 4 * log(x);

% Presisjon
Pres = 1e-4;

% Initierer x - ny og gammel
x = x0;
xGml = x + 1;        % Tilfeldig tall for å komme i gang.

% Iterer så lenge forskjellen mellom ny og gammel x er større enn Pres.
while abs(x - xGml) > Pres
    xGml = x;
    format long;
    x = x - funk(x) / funkDeriv(x);
end

% Utskrift av svaret
losning = x        % 1.894982831809374

% Initialisering av funksjonen f fra oppgaven
f = @(x) log(x) / (1 + x.^2);

% Finner løsningen
f(losning)          % 0.139232271270340
