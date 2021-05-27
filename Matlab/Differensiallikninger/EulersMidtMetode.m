% Skriptet bruker Eulers midtpunkt-metode til å estimere løsningen 
% av startverdi-problemet y´ = F(x,y), y(x_0) = y_0. 

% Differensiallikningen
F = @(x, y) x^2 - x * sin(y);

% Startkrav
x0 = -2;
y0 = 0;

% Maksimal x-verdi, egenvalgt
xMax = 4; 

% Antall steg i Eulers metode
N = input('Antall steg:');
h = (xMax - x0) / N;

% Initiering
x = x0;
y = y0;

% Eulers metode
for i=1:(N+1)               % N + 1 får med siste punktet
    xVektor(i) = x;
    yVektor(i) = y;
    xHatt = x + h/2;
    yHatt = y + F(x,y) * h/2;
    y = y + F(xHatt,yHatt) * h;     % Eulers midt-metode
    x = x + h;
end

% Plotting
plot (xVektor, yVektor)
grid on
hold on