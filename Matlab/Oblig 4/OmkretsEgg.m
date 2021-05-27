% Oppgave 1
% Lengden av egget på tvers

% Eggets profil
E = @(x) 2/3 * sqrt(exp(-0.1 * x) .* (9 - x.^2));

% Den deriverte ved hjelp av midtpunktsformelen: 
dx = 1e-2;
Ed = @(x) (E(x + dx) - E(x - dx)) / (2 * dx);

% Finner toppunktet på egget
syms x
eqns = [Ed(x) == 0, x > -3, x < 3]; % Likningssystem med betingelser
Xtopp = solve(eqns, x);             % Finner hvor toppunktet er på x-linja
Toppunkt = double(E(Xtopp));        % Finner toppunktet

% Lengden rundt egget på tvers på det tjukkeste finner vi med omkretsen av
% en sirkel
Otvers = pi*2*Toppunkt

% Ser at omkretsen blir tilnærmet lik 12.707 cm

