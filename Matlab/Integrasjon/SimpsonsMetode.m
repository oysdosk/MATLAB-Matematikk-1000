% Skriptet estimerer et integral vha. Simpsons metode. 
% Metoden likner p� trapesmetoden, men bruker et andregradsplynom for �
% tiln�rme seg funksjonen i stedet for et trapes. Til det trengs tre
% punkter fremfor 2 punkter p� grafen. Feilen g�r som x^4. 

% Funksjonen
funk = @(x) sqrt(4-x^2);

% Startverdier
a=0;            % Nedre grense
b=sqrt(2);      % �vre grense

% Antall oppdelinger
N = input ('Skriv inn antall oppdelinger: ');

% Sjekker at N er et partall
if mod(N,2) ~= 0
  error('N m� v�re et partall.')
end

% Bredden p� delintervallene
deltaX = (b-a)/N;

% F�rste og siste ledd i trapes-summen 
% (Ganger med deltaX/3 til slutt.)
S = (funk(a)+funk(b)); 

% Legger til alle ledd med oddetals-indeks.
for n=1:2:(N-1)
  x = a + n*deltaX;             % Oppdaterer x
  S = S + 4*funk(x);            % Oppdaterer summen, vekt 4
end

% Legger til alle ledd med partals-indeks bortsett fra f�rste og siste.
for n=2:2:(N-2)
  x = a + n*deltaX;             % Oppdaterar x
  S = S + 2*funk(x);            % Oppdaterar summen, vekt 2
end

% Uskrift (med rett faktor - deltaX/3)
S = S * deltaX/3