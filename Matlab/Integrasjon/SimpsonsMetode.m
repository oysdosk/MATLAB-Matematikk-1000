% Dette skriptet estimerar eit integral
% med Simpsons metode.
% Input er ein element�r funksjon, grensene
% a og b og talet p� delintervall i oppdelinga.

% funksjonen
funk = @(x) sqrt(4-x^2);

% Grenser
a=0;            % Nedre grense
b=sqrt(2);      % �vre grense

% Oppdeling - talet p� delintervall
N=input('Gi talet p� delintervall: ');

% Sjekkar at N er eit partal
if mod(N,2)~=0
  error('N m� vere eit partal.')
end

% Breidda p� kvart delintervall
deltaX=(b-a)/N;

% F�rste og siste ledd i trapes-summen 
% (Vi gongar med DektaX/3 til slutt.)
S=(funk(a)+funk(b)); 

% Legg til alle ledd med oddetals-indeks
for n=1:2:(N-1)
  x = a + n*deltaX;             % Oppdaterar x
  S = S + 4*funk(x);            % Oppdaterar summen, vekt 4
end

% Legg til alle ledd med partals-indeks (utanom det f�rste og siste
for n=2:2:(N-2)
  x = a + n*deltaX;             % Oppdaterar x
  S = S + 2*funk(x);            % Oppdaterar summen, vekt 2
end

% Skriv svaret til skjerm (med rett faktor - deltaX/3)
S = S*deltaX/3