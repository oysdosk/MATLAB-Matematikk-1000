% Skript som plottar forskjellen mellom f(a+h) og grenseverdien 
% av f(x) når x går mot a. 
% Funksjonsuttrykket vi skal ta grensa av, f, verdien x skal 
% gå mot, a, og grenseverdien L er hardkoda i starten av skriptet.
% Skriptet plottar forskjellen mellom f(a+h) og den eksakte 
% grenseverdien L for h-verdiar stadig nærare null. 
% Denne feilen i estimatet blir plotta både for negative og 
% positive verdiar av h.

% Verdien x skal gå mot
a=pi/3;
% Funksjonsuttrykk
f=@(x) (cos(x)-0.5)/(x-pi/3);
% Kjend eksakt grenseverdi
L=-sqrt(3)/2;

h=1;
% Løkke der h blir halvert for kvar iterasjon
for n=1:40
  x=a+h;                        % Oppdaterar x
  Hvektor(n)=h;                 % Lagar vektor med h-verdiar
  FeilPluss(n)=abs(f(x)-L);     % Feilen når x går mot a ovanfrå    
  x=a-h;                        % Oppdaterar x - igjen
  FeilMinus(n)=abs(f(x)-L);     % Feilen når x går mot a nedanfrå
  h=h/2;                        % Halverar h
end

% Plottar feil i estimat på logaritmiske aksar
loglog(Hvektor,FeilPluss,'bx-')
hold on
loglog(Hvektor,FeilMinus,'rx--')
hold off
grid on                         % Rutenett
% Set tekst på aksane og boks som forklarar grafane.
xlabel('h')
ylabel('|f(a\pm h)-L|')
legend('x \rightarrow a^+','x \rightarrow a^-','location','southeast')
