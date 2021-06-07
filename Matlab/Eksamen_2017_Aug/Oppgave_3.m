% Oppgave 3

% Funksjonen: 
funk = @(x) 1./(2*x-3);

% Plotting
x = 2:1e-2:3;
plot(x,funk(x))
grid on
hold on
plot(-x,funk(x))
hold off

