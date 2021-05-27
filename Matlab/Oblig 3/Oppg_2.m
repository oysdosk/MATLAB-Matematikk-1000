% Oppgave 2

% Skriptet kontrollerer at utrekning på papir ga korrekt
% redusert trappeform vha. rref-funksjonen i MATLAB. 

% a) 

A = [1 2 -1 3; 2 1 1 -2];
rref(A)

% Utskrift gir matrisen losningA:
losningA = [1 0 1 -2.333;...        % -2.333 = -7/3
            0 1 -1 2.6667];         % 2.6667 = 8/3
                                            
% b)

B = [1 0 2 1; 0 3 3 12; 2 -2 2 -5];
rref(B)
% Utskrift gir matrisen losningB:
losningB = [1 0 2 0;...
            0 1 1 0;...
            0 0 0 1];