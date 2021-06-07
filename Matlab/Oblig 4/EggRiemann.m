% Skript som regner ut volum og areal av et egg ved hjelp av Riemanns 
% midtpunkts-formel for integrasjon.

% Eggets profil
E = @ (x) 2/3 * sqrt(exp(-0.1 * x) .* (9 - x.^2));

% Den deriverte ved hjelp av midtpunktsformelen: 
dx = 1e-5;
Ed = @(x) (E(x + dx) - E(x - dx)) / (2 * dx);

% Implementasjon av formelen for volum av et omdreiningslegeme om x-aksen
funkV = @ (x) pi * E(x).^2;

% Implementasjon av formelen for areal av et omdreiningslegeme
funkA = @ (x) 2 * pi * E(x) * sqrt(1 + Ed(x).^2);

% Implementasjon av formelen for buelengden av funksjonen
funkB = @ (x) sqrt(1 + Ed(x).^2);

% Startverdier
a = -3;
b = 3;

% Antall oppdelinger, rektangler
N = input ('Skriv inn antall oppdelinger: ');

% Bredden på hvert rektangel
deltaX = (b-a)/N;

% Initierer Riemann-summene for volum, areal og buelengde
Vm = 0;
Am = 0;
Bm = 0;

% Utregning
for n=1:N
    xv = a + deltaX * (n-1);        % x venstre
    xh = a + deltaX * n;            % x høyre
    xm = (xv + xh) / 2;             % x midtpunkt
    Vm = Vm + funkV(xm) * deltaX;   % Beregner volum
    Am = Am + funkA(xm) * deltaX;   % Beregner areal
    Bm = Bm + funkB(xm) * deltaX;   % Beregner buelengde
end
    
% Utskrift
disp ([Vm Am Bm*2]);    % Buelengde må dobles for å få med hele egget

% Plot av egg
xVektor = a:1e-3:b;
plot (xVektor, E(xVektor), 'k', 'linewidth', 2)
hold on
plot (xVektor, -E(xVektor), 'k', 'linewidth',2)
axis([-4 4 -4 4])
axis square
grid on
hold off
