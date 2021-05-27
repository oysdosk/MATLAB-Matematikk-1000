% Oppgaver uke 4, oppg. 1:

x=input('Skriv inn real-verdien.');
y=input('Skriv inn imaginær-verdien.');
n=input('Skriv inn det komplekse tallets potensverdi');

%Finner R og thetha for å sette opp uttrykk i for-løkken
zn=(x+1i*y);
r=abs(zn);
tetha=angle(zn)+2*pi;

% Oppsett av plot:

xlabel('Re Z')
ylabel('Im Z')
grid on
axis square
hold on

% Plotting av løsningen:

% for m=0:1:(n-1)
  %  z=2*exp(i*pi/3+m*pi/2)
  %  plot(real(z),imag(z),'x')
% end

m=0;
z=(zn+2*m*pi)^(1/n)
plot(real(z),imag(z),'x')
