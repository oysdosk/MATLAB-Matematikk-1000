% Oppgave 4 f)

% Skriptet løser en likning på formen f´ + a(x)f = b(x) der vi
% kjenner til startkravet f0. Vha. midtpunktsformelen og formelen
% for den ensidig deriverte, kan vi se på hele problemet som en 
% matriseliknig. Ved å øke antallet oppdelinger N i intervallet
% vi jobber innenfor, ønsker vi å undersøke hvordan den numeriske
% tilnærmingen nærmer seg den eksakte funksjonens graf som vi tar
% utgangspunkt i. 

% Eksakt funksjon:
funk = @(x) x.^2+2*exp(-x.^2/2);

% Delfunksjonene: 
a = @(x) x;
b = @(x) x.^3 + 2*x;

% Startkrav: 
x0 = 0;
y0 = 2;         % y0 = f(x0), som vi har fra før
xF = 2;         % Maksimalverdi for x

% Antall oppdelinger i x-intervallet:
N=15;
% Avstanden mellom x-verdiene/punktene i plottet:
h = (xF-x0)/N;
% Vektor som samler x-verdiene: 
xVektor = (x0+h):h:xF;      % Tar ikke med x0 for å  
                            % få riktig dimensjon 
                            % ved implementering i matrisene.
                            
% Brukte formlene for derivasjon for å komme frem til et
% likningssystem. Dette systemet kan representeres ved en 
% diagonalmatrise A, som representerer alle x fra x1-xN i 
% uttrykket a(x),...
A = diag(a(xVektor));

% ... og derivasjonsmatrisen D, som representer alle leddene
% der h forekommer:
D = zeros(N,N);
for i=2:(N-1)
    D(i,[i-1 i+1])=[-1 1];
end
% Legger til manglende verdi i første rad: 
D(1,2) = 1;
% Legger til manglende verdier i siste rad:
D(N,[N-2 N-1 N])=[1 -4 3];
D = D * 1/(2*h);        % Faktoriserer inn konstanten 1/(2*h).

% Oppretter søylevektor for høyresiden i likningene:
bVektor = b(xVektor).';

% Totalmatrise: 
T = [D + A, bVektor];           % bVektor legges til som en ekstra
                                % søyle med indeks (N+1).
% Oppdaterer startkrav: 
T(1,N+1) = T(1,N+1)+y0/(2*h);

% Løser likingssystemet: 
losning = rref(T);                
yVektor = losning(:,N+1).';       % Alle rader, siste kolonne i losning
yVektor = [y0, yVektor];          % Utvider med y0 på plass 1
xVektor = [x0,xVektor];           % Utvider med x0 på plass 1

% Plotter løsningen: 
plot(xVektor,yVektor, 'ro--', 'linewidth',1.5)
grid on
hold on

% Plotter den eksakte løsningen
xx = 0:1e-3:xF;
plot(xx,funk(xx), 'k', 'linewidth',1.5)
hold off

% Formatering av plot
set(gca,'FontSize',20)
legend('Tilnærming med N=15','Eksakt', 'location', 'northwest')

