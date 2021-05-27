% Dette skriptet plottar numerisk l�ysing 
% for ei differensiallikning med gitt 
% startkrav. Til dette brukar skriptet 
% MATLAB-funksjonen ode45, som er ein 
% Runge-Kutta-metode.
%
% Skriptet kan berre brukast om skriptet 
% PlotRetningsfelt er k�yrd f�rst.
% Det les inn startkravet, x_0 og y_0, fr� skjerm.

% Gir initialkrav:
x0=input(['Gi x_0 (mellom ',num2str(Xmin),' og ',num2str(Xmax),'): ']);
y0=input(['Gi y_0 (mellom ',num2str(Ymin),' og ',num2str(Ymax),'): ']);
% Sjekkar at x_0 og y_0 ligg i rektangelet definert fr� f�r
if x0<Xmin | x0>Xmax
    disp(['x_0 m� ligge mellom ',num2str(Xmin),' og ',num2str(Xmax),'.'])
    return
elseif y0<Ymin | y0>Ymax
    disp(['y_0 m� ligge mellom ',num2str(Ymin),' og ',num2str(Ymax),'.'])
    return
end

% Finn l�ysinga p� startverdiproblemet - numerisk
[tt yy]=ode45(F,[x0 Xmax],y0);
% Plottar l�ysinga saman med retningsfeltet vi har laga fr� f�r
figure(1)
hold on
plot(x0,y0,'ro','linewidth',2)      % Plottar starverdi
plot(tt,yy,'r-','linewidth',2)      % Plottar l�ysinga
hold off
axis(V)