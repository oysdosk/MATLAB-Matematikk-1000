% Dette skriptet plottar numerisk løysing 
% for ei differensiallikning med gitt 
% startkrav. Til dette brukar skriptet 
% MATLAB-funksjonen ode45, som er ein 
% Runge-Kutta-metode.
%
% Skriptet kan berre brukast om skriptet 
% PlotRetningsfelt er køyrd først.
% Det les inn startkravet, x_0 og y_0, frå skjerm.

% Gir initialkrav:
x0=input(['Gi x_0 (mellom ',num2str(Xmin),' og ',num2str(Xmax),'): ']);
y0=input(['Gi y_0 (mellom ',num2str(Ymin),' og ',num2str(Ymax),'): ']);
% Sjekkar at x_0 og y_0 ligg i rektangelet definert frå før
if x0<Xmin | x0>Xmax
    disp(['x_0 må ligge mellom ',num2str(Xmin),' og ',num2str(Xmax),'.'])
    return
elseif y0<Ymin | y0>Ymax
    disp(['y_0 må ligge mellom ',num2str(Ymin),' og ',num2str(Ymax),'.'])
    return
end

% Finn løysinga på startverdiproblemet - numerisk
[tt yy]=ode45(F,[x0 Xmax],y0);
% Plottar løysinga saman med retningsfeltet vi har laga frå før
figure(1)
hold on
plot(x0,y0,'ro','linewidth',2)      % Plottar starverdi
plot(tt,yy,'r-','linewidth',2)      % Plottar løysinga
hold off
axis(V)