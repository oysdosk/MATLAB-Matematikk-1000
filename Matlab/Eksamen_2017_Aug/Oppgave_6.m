f=@(x) x^2-x;   % Funksjon
a=0;          
b=2;            % Grenser
N=1e5;          % Oppdeling
DeltaX=(b-a)/N;

R=0;
for i=0:(N-1)
    x=a+i*DeltaX;
    R=R+DeltaX*f(x);
end
R               % Skriv svaret til skjerm