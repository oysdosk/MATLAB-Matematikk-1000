% Skript som plottar ei kurve gitt implisitt
% saman  med Taylor-polynom av grad 1, 2 og 3
% i eit gitt punkt

% Uttrykket som definerar kurva (skal vere null)
Uttrykk = @(x,y) x.^3+x.*y-y.^5-1;

% Punkt 1
x1=1; y1=1;
p1grad2 = @(x) x-3/2*(x-1).^2;

% Punkt 2
x2=0; y2=-1;

% Taylor-polynom nr. 2
p2grad3 = @(x) -1-x/5+x.^2/25+24/125*x.^3;

% Vektor med x-verdiar
x=-5:1e-2:5;

% Lagar plott
fimplicit(Uttrykk,'k-','linewidth',2)   % Plottar kurva gitt implisitt
hold on
% Plottar punkt og Taylor-polynom
plot(x1,y1,'ro')
plot(x,p1grad2(x),'r')
plot(x2,y2,'bo')
plot(x,p2grad3(x),'b')
hold off
% Pyntar på plottet
grid on
xlabel('x')
ylabel('y')
legend('Kurve','Punkt 1','Taylor-polynom, pkt. 1','Punkt 2',...
    'Taylor-polynom, pkt. 2','location','northwest')
axis([-5 5 -2 4])