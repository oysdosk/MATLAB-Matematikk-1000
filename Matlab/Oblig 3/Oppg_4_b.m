% Oppgave 4 b)

% Skriptet løser likningssystemet T fra oppgave a) ved å utføre
% rekkereduksjon vha. rref-funskjonen i MATLAB.

% Lager likningssystem og utfører rekkereduksjon:
T = [0.5 1 0 0 3.125; -1 1 1 0 3;...
    0 -1 1.5 1 6.375; 0 1 -4 5 12];
rref(T)

% Gir svarene (vet fra før at f0 = 2): 
f1 = 1.9784;
f2 = 2.1358;
f3 = 2.8426;
f4 = 4.2469;