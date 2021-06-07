% Skriptet plotter funksjonen f(x)=e^((x-1)/2) + 2 ln x
% sammen med Taylor-polynomene av grad 0, 1, 2 og 3
% rundt x=1.

% x-verdier for plot: 
x=0.5:1e-2:3;

% Funksjonene fra regning på papir:
f = @(x) exp((x-1)/2)+2*log(x);
p0= @(x) 1*x.^0;        % Triks for å få samme format som vektoren
p1= @(x) p0(x) + 5/2*(x-1);
p2= @(x) p1(x) - 7/8*(x-1).^2;
p3= @(x) p2(x) + 11/16*(x-1).^3;

% Plottet
plot(x,f(x),'k-','linewidth',2)
hold on
plot(x,p0(x),'--','linewidth',2)
plot(x,p1(x),'--','linewidth',2)
plot(x,p2(x),'--','linewidth',2)
plot(x,p3(x),'--','linewidth',2)
hold off
grid on
set(gca,'fontsize',15)

% Tekstboks som forklarar plottene
legend('f(x)','p_0','p_1(x)','p_2(x)','p_3(x)',...    
    'location','northwest')