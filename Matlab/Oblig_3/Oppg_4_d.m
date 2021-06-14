% Oppgave 4 d)

% Skriptet løser likningssystemet fra oppg. a) med f0 = 2. 
% Videre plottes den eksakte funksjonen f(x) = x.^2 + 2*exp(-x.^2/2) 
% sammen med den numeriske tilnærmingen. 

% Lager x-vektor for plottet og initialiserer funksjonen f:
x = 0:1e-2:2;
C = 2;
f = @(x) x.^2 + C*exp(-x.^2/2);

% Initialiserer x-verdiene til den numeriske tilnærmingen:
x0 = 0;
x1 = 0.5;
x2 = 1;
x3 = 1.5;
x4= 2;

% Likningssytemet fra oppgave b) ga svarene:
f0 = 2;
f1 = 1.9784;
f2 = 2.1358;
f3 = 2.8426;
f4 = 4.2469;

% Plotter funksjonen sammen svarene fra likningssystemet:
plot(x,f(x), 'linewidth',2)
hold on
grid on
plot(x0, f0, 'x', 'linewidth',2)
plot(x1, f1, 'x', 'linewidth',2)
plot(x2, f2, 'x', 'linewidth',2)
plot(x3, f3, 'x', 'linewidth',2)
plot(x4, f4, 'x', 'linewidth',2)

% Formatering av plottet: 
legend('f(x)', 'f0', 'f1', 'f2', 'f3', 'f4',...
    'location', 'northwest')
set(legend, 'FontSize',17);
hold off

% Ser av plottet at alle punktene ligger nære den eksakte løsningen: