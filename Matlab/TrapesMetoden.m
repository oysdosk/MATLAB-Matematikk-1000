% Dette skriptet estimerar eit integral
% med trapesmetoden.
% Input er ein elementær funksjon, grensene
% a og b og talet på delintervall i oppdelinga.

% funksjonen
funk = @(x) sqrt(4-x^2);

% Grenser
a=0;            % Nedre grense
b=sqrt(2);      % Øvre grense

% Oppdeling - talet på delintervall
N=input('Gi talet på delintervall: ');

% Breidda på kvart delintervall
deltaX=(b-a)/N;

% Første og siste ledd i trapes-summen
T=deltaX*(funk(a)+funk(b))/2;

% Legg til alle dei andre ledda
for n=1:(N-1)
  x = a + n*deltaX;             % Oppdaterar x
  T = T + funk(x)*deltaX;       % Trapes-summen
end

% Skriv svaret til skjerm
T