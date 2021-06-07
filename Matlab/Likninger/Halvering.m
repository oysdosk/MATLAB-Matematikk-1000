% Skriptet bruker halvveringsmetoden til å estimere et nullpunkt innenfor 
% et gitt intervall i en funksjon. Halvveringsmetoden utnytter skjærings-
% setningen, som sier at funksjonen må være kontinuerlig i intervallet og
% at funksjonsverdiene i endepunktene må ha forskjellig fortegn.

% Endepunkt
a = 0;
b = 1;

% Funksjon
funk = @(x) cos(x) - x;

% Presisjon
P = 1e-4;

% Antall iterasjoner: 
% Iterasjoner = ceil(log((b-a)/P) / log(2) - 1)

% Funksjonsverdier i endepunktene
Fa = funk(a);
Fb = funk(b);

while b - a > 2*P       % Bredden av intevallet større enn presisjonen
    c = (a+b) / 2;      % Midtpunktet
    Fc = funk(c);       % Funksjonsverdien i midtpunktet.
    if Fa * Fc > 0      % Sjekker om c er til h. eller v. for nullpunktet.
        a=c;
    else
        b=c;
    end
end

% Svaret med presisjonen P til skjerm: 
x = (a+b) / 2