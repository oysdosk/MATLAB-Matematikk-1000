% Oppgaver uke 4, oppg. 1:

x=input('Skriv inn real-verdien.');
y=input('Skriv inn imaginær-verdien.');
n=input('Skriv inn det komplekse tallets potensverdi');

% Finner R og thetha for å sette opp uttrykk i for-løkken
zn=(x + 1i*y)^(1/n);
r=abs(zn);
tetha=angle(zn);

% Oppsett av plot:

xlabel('Re Z')
ylabel('Im Z')
grid on
axis square
hold on


% Plotting av løsningen:

for k=0:(n-1)
    z = r * exp(1i * (1/n) * (tetha + k*2*pi))
    plot(real(z),imag(z),'rx','linewidth',2)
    hold on
end

% Plot av sirkel
xx = r * (-1:1e-2:1);
yy = sqrt(r^2 - xx.^2);
plot(xx,yy,'k-')
plot(xx,-yy,'k-')
axis square