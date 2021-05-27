% Skript som estimerar en løsning av likninga f(x)=0
% ved 5 iterasjonar med Newtons metode.
% Input er start-verdien x0, funksjonsuttrykket f(x)
% og den deriverte av funksjonen, f'(x).

% Startverdi
x0 = 0;

% Funksjon
funk = @(x) exp(x)-4*x;

% Derivert av funksjon
funkDeriv = @(x) exp(x) - 4;

% Initierer x
x = x0;

% Itererer
for n=1:5;
    x=x-funk(x)/funkDeriv(x);   % Newtons metode
    x
    pause
end

% Skriver ut svaret: 
x

% Plot:
xplot=-3:1e-3:5;
plot(xplot,funk(xplot))
grid on