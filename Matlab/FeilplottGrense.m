% Skript som plottar forskjellen mellom f(a+h) og grenseverdien 
% av f(x) n�r x g�r mot a. 
% Funksjonsuttrykket vi skal ta grensa av, f, verdien x skal 
% g� mot, a, og grenseverdien L er hardkoda i starten av skriptet.
% Skriptet plottar forskjellen mellom f(a+h) og den eksakte 
% grenseverdien L for h-verdiar stadig n�rare null. 
% Denne feilen i estimatet blir plotta b�de for negative og 
% positive verdiar av h.

% Verdien x skal g� mot
a=pi/3;
% Funksjonsuttrykk
f=@(x) (cos(x)-0.5)/(x-pi/3);
% Kjend eksakt grenseverdi
L=-sqrt(3)/2;

h=1;
% L�kke der h blir halvert for kvar iterasjon
for n=1:40
  x=a+h;                        % Oppdaterar x
  Hvektor(n)=h;                 % Lagar vektor med h-verdiar
  FeilPluss(n)=abs(f(x)-L);     % Feilen n�r x g�r mot a ovanfr�    
  x=a-h;                        % Oppdaterar x - igjen
  FeilMinus(n)=abs(f(x)-L);     % Feilen n�r x g�r mot a nedanfr�
  h=h/2;                        % Halverar h
end

% Plottar feil i estimat p� logaritmiske aksar
loglog(Hvektor,FeilPluss,'bx-')
hold on
loglog(Hvektor,FeilMinus,'rx--')
hold off
grid on                         % Rutenett
% Set tekst p� aksane og boks som forklarar grafane.
xlabel('h')
ylabel('|f(a\pm h)-L|')
legend('x \rightarrow a^+','x \rightarrow a^-','location','southeast')
