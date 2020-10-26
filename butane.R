Vbar=3.0
T=370
a=16.44
b=0.07245
R=0.083145
P=R*T/Vbar 
cat(P)

P=((R*T)/(Vbar-b))-a/((Vbar*(Vbar+b))+(b*(Vbar-b)))
cat(P)