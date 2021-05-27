% Dette skriptet estimerar eit integral
% med Simpsons metode.
% Input er ein elementær funksjon, grensene
% a og b og talet på delintervall i oppdelinga.

% funksjonen
funk = @(x) sqrt(4-x^2);

% Grenser
a=0;            % Nedre grense
b=sqrt(2);      % Øvre grense

% Oppdeling - talet på delintervall
N=input('Gi talet på delintervall: ');

% Sjekkar at N er eit partal
if mod(N,2)~=0
  error('N må vere eit partal.')
end

% Breidda på kvart delintervall
deltaX=(b-a)/N;

% Første og siste ledd i trapes-summen 
% (Vi gongar med DektaX/3 til slutt.)
S=(funk(a)+funk(b)); 

% Legg til alle ledd med oddetals-indeks
for n=1:2:(N-1)
  x = a + n*deltaX;             % Oppdaterar x
  S = S + 4*funk(x);            % Oppdaterar summen, vekt 4
end

% Legg til alle ledd med partals-indeks (utanom det første og siste
for n=2:2:(N-2)
  x = a + n*deltaX;             % Oppdaterar x
  S = S + 2*funk(x);            % Oppdaterar summen, vekt 2
end

% Skriv svaret til skjerm (med rett faktor - deltaX/3)
S = S*deltaX/3