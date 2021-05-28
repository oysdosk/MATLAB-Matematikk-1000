% Fikspunktiterasjon
% Får en likning på formen f(x) = x. x er et fikspunkt for funskjonen f.

% Metoden: 
% 1. Velger xo
% 2. Itererer på x1 = f(x0), x2 = f(x1) osv. xn+1 = f(xn)
% Enten nærmer svaret seg en verdi, eller ikke! 

% Eksempel: 
% e^(x-3) = x^2 + 1
% x = +- sqrt(exp(x-3)-1) eller x = log(x^2+1) + 3

% xVektor
xVektor = -5:1e-2:10;

% Funksjonen som skal være lik x: 
funk1 = @(x) log(x.^2+1) + 3;    % eller: 
funk2 = @(x) sqrt(exp(x-3)-1);   % Viser seg at funk2 ikke nærmer seg en verdi.

% Plot som visualiserer nullpunkt
plot(xVektor, funk1(xVektor))       % Venstreside
grid on
hold on
plot(xVektor, funk2(xVektor))       % Høyreside
hold off                            % Leser av nullpunkt i nærheten av x = 7.

% Startverdi for x
x = 7;

% Tilordner den forrige x
xGml = x;

for n=1:10
    xGml = x;
    x = funk1(x)
    disp([n x abs(x-xGml)])     % [Antall it.   x   Feil]
    pause
end