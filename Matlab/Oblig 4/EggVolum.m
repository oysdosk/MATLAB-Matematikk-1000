% Skript som regner ut volum av et egg

% Eggets profil
E = @(x) 2/3 * sqrt(exp(-0.1 * x) * (9 - x.^2));

% Integrasjonsuttrykket for volum
V = @(x) pi * E(x).^2;

