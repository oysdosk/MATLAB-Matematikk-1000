% Skript som avgjør om Ax = b er et likningssett med en entydig løsning.
% A og b-vektor som input hvor A er en n x n matrise og 
% søylevektoren b har n elementer.
% x blir nødvendigvis også en søylevektor med n elementer.

%Deklarer A og b-vektor
A = [2 -3; 3 6];
b = [3; -6];

%Finner x hvis likningssystemet har en løsning
if (abs(det(A)) > 1e-10)
    x = inv(A) * b
else 
    disp("Likningssystemet har ingen entydig løsning")
end