% Oppgave 5b og c)
% Skriptet bruker halvveringsmetoden til å finne løsningen til likningen
% oppgitt i oppgaven. 

% Løser likningen med halveringsmetoden:

% Endepunkt:
a=1;
b=3;

% Funksjonen: 
funk = @(x) exp(x.^2/5)-5*sin(x);

% Funksjonsverdiene:
Fa=funk(a);
Fb=funk(b);

% Presisjon:
P=1e-5;

% Antall iterasjoner:
Iterasjoner=ceil(log(b-a)/P/log(2)-1)   
% Viser seg å bli 99999 iterasjoner.

for n=1:Iterasjoner
 c=(a+b)/2;             % Midtpunkt
 Fc=funk(c);            % Verdi i midtpunkt
 if Fa*Fc>0             % Sjekker fortegn for funksjonsverdiene
     a=c;
 else
     b=c;
 end
end

% Svar: 
x=(a+b)/2;              % = 2.4311

% Visuell fremstilling med linjen x = 2.4311:
x=1:0.01:3;
f=exp(x.^2/5)-5*sin(x);
plot(x,f)
xline(2.4311)
grid on
set (gca,'fontsize',16)
xlabel('x')
ylabel('Funksjonen')

