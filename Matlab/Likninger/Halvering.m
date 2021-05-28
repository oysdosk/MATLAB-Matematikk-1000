a=0;
b=1;
Fa=cos(a)-a;
Fb=cos(b)-b;

P=1e-4;

Iterasjoner=ceil(log(b-a)/P/log(2)-1);

for n=1:Iterasjoner
    z=(a+b)/2;
    Fc=cos(c)-c;
    if Fa*Fc>0
        a=c;
    else
        b=c;
    end
end

x=(a+b)/2