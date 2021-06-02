% Skriptet bruker halvveringsmetoden til å estimere løsningen av en
% likning. Likningen må være kontinuerlig og ha et nullpunkt mellom a og b.

% Endepunkt
a = 1;
b = 3;

% Funksjon:
funk = @(x) x - sin(x) -1;

% Presisjon
P = 1/8;

% Funksjonsverdier i a og b
Fa = funk(a);
Fb = funk(b);

while b - a > P         % Så lenge bredden er større en presisjonen
    c = (a+b) / 2;      % Midtpunktet
    Fc = funk(c);       % Funksjonsverdien i mp.
    if Fa * Fc > 0      % Sjekker om c er til h. eller v. for nullpunktet.
        a=c;
    else
        b=c;
    end
end

% Svaret med presisjonen P til skjerm: 
t = (a+b) / 2  

% Intervallet: 
[a b]           % [1.875 2]


% Antall iterasjoner: 
% Iterasjoner = ceil(log(b-a)/P/log(2) - 1);  
% ceil() runder oppover og sikrer liten nok presisjon. 