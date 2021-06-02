% Oppg. 6 
% Skriptet tar utgangspunkt i et likningssystem funnet med penn og papir
% for å estimere differensiallikningen y´+ 2xy = exp(-x).

% Venstre side: 
A = [3 1 0 0; -1 4 1 0; 0 -1 5 1; 0 1 -4 9];
% Høyre side:
B = [exp(-1.5)+1 exp(-2) exp(-2.5) exp(-3)].';
% Totalmatrise: 
T = [A, B];

% Rekkereduksjon
losning = rref(T);

% Plot
xVektor = 1:0.5:3;
yVektor = losning(:,end);
yVektor = [1; yVektor];
plot(xVektor,yVektor, 'ro--', 'linewidth',2)
grid on