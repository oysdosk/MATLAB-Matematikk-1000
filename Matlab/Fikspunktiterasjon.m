% Fikspunktiterasjon
% Får en likning på formen f(x) = x
% x er et fikspunkt for funskjonen f

% Velger xo
% Itererer på x1 = f(x0), x2 = f(x1) osv.
% Går det, så går det! 

% Eksempel: 
% e^x-3 = x^2 + 1
% x^2 = e^x-3 - 1
% x = +- sqrt(exp(x-3)-1) eller
% x = log(x^2+1) + 3

x = -5:1e-2:10;
plot(x,exp(x-3))        % Venstreside
grid on
hold on
plot(x,x.^2 + 1)        % Høyreside
hold off
                        % Leser av nullpunkt i nærheten av 7
% x = 7;
% x = sqrt(exp(x-3)-1)
% x = sqrt(exp(x-3)-1)
% x = sqrt(exp(x-3)-1)  % Viser seg å ikke gå i riktig retning

% Prøver:
x = log(x^2+1) + 3
x = log(x^2+1) + 3
x = log(x^2+1) + 3
x = log(x^2+1) + 3      % Nærmer seg 6.86
