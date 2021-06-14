% Oppgave 3 b)

% Skript som estimerer løsningen av likningen 4*x - exp(x) + 1 = 0 ved
% hjelp av Newtons metode. Skriptet kjører til man får den presisjonen 
% vi ønsker. 

% Velger en startverdi, x0, i nærheten av nullpunktet observert ut fra
% plottet. 
x0 = 2.3;

% Funksjon
funk = @(x) 4*x - exp(x) + 1;

% Derivert:
funkDeriv = @(x) 4 - exp(x);

% Presisjon
Pres = 1e-4;

% Initierer x - ny og gammel
x = x0;
xGml = x + 5;        % Tilfeldig tall for å komme i gang i løkken.

% Formatering
format long;

% Itererer så lenge forskjellen mellom ny og gammel x er større enn Pres.
while abs(x - xGml) > Pres
    xGml = x;
    x = x - funk(x) / funkDeriv(x);
end

% Utskrift av svaret
x

% Plot
xVektor = 2:1e-2:3;
plot(xVektor,funk(xVektor),'k','linewidth',1.5)
grid on;
hold on
plot (x,funk(x),'ro')      % Plotter svaret x
hold off