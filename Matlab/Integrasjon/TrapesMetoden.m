% Skriptet estimerer et integral vha. trapesmetoden. 
% Trapesmetoden tar utgangspunkt i tilnærmingen med ensidige Riemann-
% summer. Her vil (f(xn) * f(x+1)) / 2 gi formen til et trapes i hvert 
% delintervall der toppen av trapeset legger seg nærmere funksjonen. 
% Denne metoden tilsvarer gjennomsnittet av de to ensidige Riemann-summene.
% Trapesmetoden kan i motsetning til midtmetoden benyttes ved
% ikke-kontinuerlige problemer. 

% Funksjonen
funk = @(x) sqrt(4-x^2);

% Startverdier
a = 0;            % Nedre grense
b = sqrt(2);      % Øvre grense

% Antall oppdelinger
N = input ('Skriv inn antall oppdelinger: ');

% Bredden på hvert trapes:
deltaX = (b-a) / N;

% Første og siste ledd i trapes-summen
T = deltaX * (funk(a)+funk(b))*deltaX / 2;

% Utregnig av de resterende leddene
for n=1:(N-1)
  x = a + n * deltaX;
  T = T + funk(x) * deltaX;       % Trapes-summen
end

% Utskrift
T