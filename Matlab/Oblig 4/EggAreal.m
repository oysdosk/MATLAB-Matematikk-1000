% Skript som regner ut overflateareal av et egg

% Eggets profil
E = @(x) 2/3 * sqrt(exp(-0.1 * x) * (9 - x.^2));

% Den deriverte ved hjelp av midtpunktsformelen: 
dx = 1e-4;
Ed = @(x) (E(x + dx) - E(x - dx)) / (2 * dx);

% Areal
A = @(x) E(x).* sqrt(1 + Ed(x).^2);