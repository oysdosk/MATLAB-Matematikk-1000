% Skriptet estimerer et integral vha. trapesmetoden. Estimatets nøyaktighet
% avhenger av antall oppdelinger vi gjør i intervallet. 

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