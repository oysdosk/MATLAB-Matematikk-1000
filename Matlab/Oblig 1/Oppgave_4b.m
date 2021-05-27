% Oppgave 4 b)
% Skriptet lager et plott som illustrer hva funksjonen
% f nærmer seg når x nærmer seg uendelig. 


% Verdien som x skal gå mot:
a=2;
% Avstanden mellom x og a:
h=1;

for n=1:30
    x=a+h;
    hVektor(n)=h;
    f(n)=((5*x^2)+5*x-30)/((x^2)-4);
    h=h*2;
end

% Plotting:
semilogx(hVektor,f,'rx-')
grid on
set (gca,'fontsize',16)
xlabel('h')
ylabel('f(x)')
legend('Funksjonsverdien når h dobles og x går mot uendelig')

% Leser av plottet an grenseverdien ser ut til å være ca. 5