% Skript som forsøker å løse likningen f(x) = x ved fikspunktiterasjon.

% Startverdi for x
x = 5;

% Funksjonen
funk = @(x) log(x^2+1)+3;

% Tilordner den gamle x:
xGammel = x + 10;

% Presisjon
Pres = 1e-6;

while abs(x-xGammel) > Pres
    xGammel = x;
    x=funk(x);
end

% Svaret
x

% Sjekker presisjonen
x-xGammel