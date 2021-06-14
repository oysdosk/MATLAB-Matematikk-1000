% Oppgave 2 a) vedlegg

% Dette skriptet regner ut en Riemann-sum med venstre-, høyre- og 
% midtseleksjon. En Riemann-sum nærmer seg verdien til det eksakte
% integralet når steglengden deltaX går mot null. Derfor er vi avhengig av
% å kjøre skriptet med økende verdier av N for å få et estimat med ønsket
% nøyaktighet. 
% Når N øker, vil Riemann-summen nærme seg integralet. 

% Funksjonen
funk = @ (x) exp(-x^2);

% Startverdier
a = 0;
b = 3;

% Antall oppdelinger
N = 100;

% Bredden på hvert rektangel:
deltaX = (b-a)/N;

% Initierer summen R:
Rv = 0;             % Venstreseleksjon
Rh = 0;             % Høyreseleksjon
Rm = 0;             % Midtseleksjon

% Utregning
for n=1:N
    % Venstre-sum
    xv = a + deltaX * (n-1);
    Rv = Rv + funk(xv) * deltaX;
    % Høyre-sum
    xh = a + deltaX * n;
    Rh = Rh + funk(xh) * deltaX;
    % Midt-sum
    xm = (xv + xh) / 2;
    Rm = Rm + funk(xm) * deltaX;
end

% Utskrift
disp ([Rv Rh Rm;])