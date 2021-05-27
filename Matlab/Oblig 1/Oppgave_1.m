% Oppgave 1 a)
% Skriptet plotter funksjonen f linjen y = 0.4. 

x=0:0.01:24;
f=0.6*cos(pi/12 * (x + 5.2));
plot(x,f)
yline(0.4)
grid on
hold on
set (gca,'fontsize',16)
xlabel('x')
ylabel('f(x)')

% Likningen f(x) = 0.4 ser ut til å ha løsningene
% ca x = 15.6 og x = 22


% Oppgave 1 b)
% Funksjonen er ikke én-entydig fordi x vil få flere løsninger dersom vi
% setter opp likningen likningen y = f(x) og finner x. 
% Vi kan også se av grafen at dersom den speiles, vil den ikke lenger være
% entydig. 


% Oppgave 1 c) Fant løsningene x1 = 22.0127 og x2 = 15.5873
%(Se utregning på ark).
% Plotter dem inn: 

x1=22.0127;
x2=15.5873;
plot(x1,0.4,'ro')
plot(x2,0.4,'ro')
legend('0.6*cos(pi/12 * (x + 5.2))', 'y=4,', 'Løsningene')
hold off

