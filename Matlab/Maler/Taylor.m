% Skriptet plotter funksjonen f(x) sammen med 
% Taylor-polynomer av grad 0, 1, 2 og 3 omkring x = 0.

% x-verdier for plot:
x = 0:1e-3:3;

% Funksjonen og Taylor-polynomene:
f = @(x) sqrt(x+1);
p0= @(x) 1*x.^0;
p1= @(x) p0(x) + (1/2)*x;
p2= @(x) p1(x) -(1/8)*x.^2;
p3= @(x) p2(x) + (3/48)*x.^3;

% Plotter funksjonen og Taylor-polynomene:
plot(x,f(x),'k-','linewidth',2)
hold on
plot(x,p0(x),'--','linewidth',2)
plot(x,p1(x),'--','linewidth',2)
plot(x,p2(x),'--','linewidth',2)
plot(x,p3(x),'--','linewidth',2)
hold off
grid on

% Formatering av plottet: 
set(gca,'fontsize',15)
legend('f(x)','p_0(x)','p_1(x)','p_2(x)','p_3(x)',...    
    'location','northwest')