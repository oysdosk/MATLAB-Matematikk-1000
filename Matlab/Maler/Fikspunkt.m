% Skriptet løser en likning på formen f(x) = x.

% xVektor
xVektor = -5:1e-2:10;

% Funksjonene som skal være lik x: 
funk1 = @(x) log(x.^2+1) + 3;    
funk2 = @(x) sqrt(exp(x-3)-1);   

% Plot som visualiserer skjæringspunkt
plot(xVektor, funk1(xVektor))       % Venstreside
grid on
hold on
plot(xVektor, funk2(xVektor))       % Høyreside
hold off                           

% Tilordner x - ny og gammel
x = 7;
xGml = x + 4;       % Tilfeldig tall for å komme i gang i løkken.

% Presisjon
Pres = 1e-3;

while abs(x-xGml) > Pres
    xGml = x;
    x = funk1(x);
end

% Utskrift
x