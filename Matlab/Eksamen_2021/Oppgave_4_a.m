% Oppgave 4 a) 

% Skriptet estimerer volumet av ein omreiningsleikam dreid om x-aksen ved 
% hjelp av Riemanns midtpunkts-metode for integrasjon. 
% Generelt kan vi finne volumet av et slikt legeme ved å regne ut det
% bestemte integralet i intervallet vi jobber med. 
% I mange tilfeller er det for komplisert eller tidkrevende å regne dette ut
% eksakt, og da kan vi bruke Riemanns metode for å estimere dette
% integralet. Presisjonen på estimatet avhenger direkte av hvor fin
% oppdeling vi gjør, så det er viktig å kjøre skriptet med tilstrekkelig
% N-verdi (antall oppdelinger) for å få et godt nok estimat. 

% Funksjonen
F = @ (x) 0.5 + 0.15*sqrt(x + 1) .* sin(pi*x);

% Den deriverte ved hjelp av midtpunktsformelen: 
dx = 1e-3;
Fd = @(x) (F(x + dx) - F(x - dx)) / (2 * dx);

% Implementasjon av formelen for volum av et omdreiningslegeme om x-aksen
funkV = @ (x) pi * F(x).^2;

% Startverdier
a = 0;
b = 2;

% Antall oppdelinger, rektangler
N = 1e2;

% Bredden på hvert rektangel
deltaX = (b-a)/N;

% Initierer Riemann for volum
V = 0;

% Utregning
for n=1:N
    xv = a + deltaX * (n-1);            % x venstre
    xh = a + deltaX * n;                % x høyre
    xm = (xv + xh) / 2;                 % x midtpunkt
    V = V + funkV(xm) * deltaX;         % Beregner volum
end
    
% Utskrift av svaret
V
