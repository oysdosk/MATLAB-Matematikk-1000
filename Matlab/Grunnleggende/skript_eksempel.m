% Start skript med noe enkel, konkret informasjon

% Vektorer med x- og y-verdier

x=-5:1e-2:5;
y=sin(exp(x));
z=exp(sin(x));

% Plotting
plot(x,y,'b')
hold on
plot(x,z,'r','linewidth',1.5)
hold off

% Justerer skriftstørreelse og tekst til plottet
set(gca,'fontsize',15)
xlabel('x')
ylabel('y')