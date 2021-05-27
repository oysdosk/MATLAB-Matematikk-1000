% Oppgave 4 a)
% Skriptet lager et plott som illustrer hva funksjonen
% f nærmer seg når x nærmer seg 2 fra begge sider. 


% Verdien som x skal gå mot:
a=2;
% Avstanden mellom x og a:
h=1;

for n=1:30
    x=a+h;                                  % x fra oppsiden
    hVektor(n)=h;                           % Samler h-verdiene
    fPluss(n)=((5*x^2)+5*x-30)/((x^2)-4);   % Samler funksjonsverdiene
    x=a-h;                                  % x fra nedsiden
    fMinus(n)=((5*x^2)+5*x-30)/((x^2)-4);   % Samler funksjonsverdiene
    h=h/2;                                  % h halveres før neste gjennomkjøring
end

% Plotting:
semilogx(hVektor,fPluss,'rx-')
hold on
semilogx(hVektor,fMinus,'bx-')
grid on
set (gca,'fontsize',16)
xlabel('h')
ylabel('f(x)')
legend('x går mot 2 ovenfra', 'x går mot 2 nedenfra')
% Leser av plottet at grenseverdien ser ut til å være ca. 6.25