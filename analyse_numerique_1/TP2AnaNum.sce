k=99990:100010;
x=k*10^-5;
binome1=(1-x)^6;
binome2=1-6*x+15*x^2-20*x^3+15*x^4-6*x^5+x^6;
plot(x,binome1,'r',x,binome2,'b')
