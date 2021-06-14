% Oppgave 3

% Skriptet lager et system som avgjør om et likningssystem 
% har entydig løsning eller ikke. Input er koeffisientmatrisen A
% og søylevektoren b (høyresiden i likningen). 

% Likningssystemet fra oppgave 2 b):
%A = [1 0 2; 0 3 3; 2 -2 2];
%b = [1 12 -5].';

% Likningssystemet fra oppgave 2 a):
%A = [1 2 -1; 2 1 1; 0 0 0];
%b = [3 -2 0].';

% Likningssystemet fra oppgave 4:
A = [0.5 1 0 0; -1 1 1 0; 0 -1 1.5 1; 0 1 -4 5];
b = [3.125 3 6.375 12].';

if (abs(det(A)) > 1e-14)
    disp('A er invertibel og vi får den entydige løsningen:')
    x = inv(A) * b
else
    disp('Ingen entydig løsning')
end