% Dette skriptet estimerar eit integral
% med trapesmetoden.
% Input er ein element�r funksjon, grensene
% a og b og talet p� delintervall i oppdelinga.

% funksjonen
funk = @(x) sqrt(4-x^2);

% Grenser
a=0;            % Nedre grense
b=sqrt(2);      % �vre grense

% Oppdeling - talet p� delintervall
N=input('Gi talet p� delintervall: ');

% Breidda p� kvart delintervall
deltaX=(b-a)/N;

% F�rste og siste ledd i trapes-summen
T=deltaX*(funk(a)+funk(b))/2;

% Legg til alle dei andre ledda
for n=1:(N-1)
  x = a + n*deltaX;             % Oppdaterar x
  T = T + funk(x)*deltaX;       % Trapes-summen
end

% Skriv svaret til skjerm
T