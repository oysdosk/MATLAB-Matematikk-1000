% Skript regner ut en Riemann-sum med venstre-, høyre- og midtseleksjon. 
% Skriptet tar utgangspunkt i oppgave 7 fra uke 14, og sammenlikner det
% eksakte svaret med svaret vi får fra Riemann-summen med selvvalgt antall
% oppdelinger, N.
% Når N øker, vil Riemann-summen nærme seg integralet. 

% Funksjonen
funk = @ (x) sqrt(4-x.^2);

% Fasit
Fasit = pi/2 + 1;

% Startverdier
a = 0;
b = sqrt(2);

% Antall oppdelinger, rektangler
N = input ('Skriv inn antall oppdelinger: ');

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

% Gjennomsnitt - venstre og høyre
Rg = (Rv + Rh) / 2;

% Feil-initiering
Feilv = abs(Rv - Fasit);
Feilh = abs(Rh - Fasit);
Feilg = abs(Rg - Fasit);
Feilm = abs(Rm - Fasit);

% Utskrift
disp (transpose([Rv Rh Rg Rm; Feilv Feilh Feilg Feilm]))