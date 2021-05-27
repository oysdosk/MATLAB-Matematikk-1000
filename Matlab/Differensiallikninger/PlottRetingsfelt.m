% Skript som plottar retningsfelt for ei 
% gitt 1. ordens differensiallikning. 
% Det brukar MATLAB sin quiver-funksjon 
% til � gjere dette.
%
% Ein del "inputs" er hard-koda. Dette gjeld 
% sj�lve differensiallikninga, gitt ved 
% funksjonen F(x,y)=y'. Det gjeld ogs� minimal- 
% og maksimal-verdiane til x og y, og det 
% gjeld inndelinga p� rutenetet; kor mange 
% punkt ein skal ta med for x og y.
% Der er ingen garanti for at l�ysinga av 
% initialverdiproblemet vil vere 
% avgrensa av dei gitte grensene for x og y.

% Diff.-likning: y'=F(x,y)
F=@(x,y) x+sqrt(y);

% Bestemmer intervall for x og y:
Xmin=-2; Xmax=2;
Ymin=0; Ymax=4;

% Set opp rutenettet
Xsteps=30; Ysteps=20;           % Talet p� punkt i x- og y-retning

% Set opp matriser med x- og y-verdiar
x=linspace(Xmin,Xmax,Xsteps);       % Vektor med x-verdiar
y=linspace(Ymin,Ymax,Ysteps);       % Vektor med y-verdiar
[X Y]=meshgrid(x,y);                

% Plottar retningsfeltet
figure(1)
U=F(X,Y);                           % Matrise med y'
Scale=sqrt(1+U.^2);                 % Faktor til � justere lengda p� pilene
quiver(X,Y,1./Scale,U./Scale,0.5)   % Plottar retningsfelt
set(gca,'fontsize',15)
set(gcf,'paperpositionmode','auto')
axis([Xmin Xmax Ymin Ymax])
V=axis;