% Skript som regner ut hvor mye tape det er på en taperull

% Inputs
a = 3;      % Indre radius
b = 5;      % Ytre radius
dT = 0.02;  % Tjukkelse på tapen

% Initierer lengden L
L = 0;
r = a;

while r < b
    L = L + 2 * pi * r;
    r = r + dT;
end

% Utskrift av svar
disp(['Lengden er ',num2str(L/100),' cm.'])