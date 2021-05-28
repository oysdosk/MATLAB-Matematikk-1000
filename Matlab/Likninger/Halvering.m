% Skriptet bruker halvveringsmetoden til å estimere løsningen av en
% likning. Likningen må være kontinuerlig og ha et nullpunkt mellom a og b.
% Her: cos(x) = x eller nullpunktsuttrykket f(x) = cos(x) - x. 

% Endepunkt
a = 0;
b = 1;

% Funksjon:
funk = @(x) cos(x) - x;

% Presisjon
P = 1e-4;


% Funksjonsverdier i a og b
Fa = funk(a);
Fb = funk(b);

while b - a > 2*P       % Så lenge bredden er større en presisjonen
    c = (a+b) / 2;      % Midtpunktet
    Fc = funk(c);       % Funksjonsverdien i mp.
    if Fa * Fc > 0      % Sjekker om c er til h. eller v. for nullpunktet.
        a=c;
    else
        b=c;
    end
end

% Svaret med presisjonen P til skjerm: 
x = (a+b) / 2    



% Antall iterasjoner: 
% Iterasjoner = ceil(log(b-a)/P/log(2) - 1);  
% ceil() runder oppover og sikrer liten nok presisjon. 