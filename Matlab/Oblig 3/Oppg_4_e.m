% Oppgave 4 e)

% Skriptet løser likningssystemet fra oppg. a), men med f0 = 0. 
% Videre plottes den eksakte funksjonen f(x) = x.^2 sammen med den 
% numeriske tilnærmingen. 

% Lager nytt likningssystem og utfører rekkereduksjon: 
T = [0.5 1 0 0 1.125; -1 1 1 0 3;...
    0 -1 1.5 1 6.375; 0 1 -4 5 12];
losning = rref(T);

% Oppretter vektor som samler løsningene:
fVektor = losning(:,end).';
fVektor = [0,fVektor];      % Oppdaterer med startverdi

% Vektor med x-verdiene:
xVektor = [0,0.5,1,1.5,2].';

% Initialiserer for den eksakte funksjonen f:
x = 0:1e-2:2;
f = @(x) x.^2;       % Fant at f(0) = 0 gir C = 0. Derfor forsvinner
                     % leddet C*exp(-x.^2/2) fra funksjonen.

% Plotter funksjonen sammen med de nye svarene fra likningssystemet:
plot(x,f(x),'linewidth',2)
hold on
grid on
for n=1:length(fVektor)
    plot(xVektor(n),fVektor(n),'x', 'linewidth',2)
end

% Ser at punktene ser ut til å ligge eksakt på grafen til funksjonen f,
% som oppgaven antydet. Det kan vi forklare ved at vi vet at feilleddet 
% i en 2. gradsfunksjon (her er f = x^2, se forklaring på linje 19-20) er 
% proporsjonal med den tredjederiverte av funksjonen. Siden den 
% tredjederiverte blir 0 i alle 2. gradsuttrykk, blir også feilen 0 og
% videre får vi eksakte svar når vi bruker midtpunktsformelen. Dersom C
% var lik 2, ville ikke funksjonen lenger vært et andregradsuttrykk, og 
% derfor ville feilleddet ikke lenger blitt 0. 

% Formatering av plottet: 
legend('f(x)', 'f0', 'f1', 'f2', 'f3', 'f4',...
    'location', 'northwest')
set(legend, 'FontSize',17);
hold off