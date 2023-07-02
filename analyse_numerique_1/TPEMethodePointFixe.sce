a=0;
b=5;
function y=f(x)
    c=1/3;
    y=(11+exp(-x^2))^c;
endfunction
n=0;
x=f(n);
while ((x-n)/(x)>10^-4)
    n=x;
    x=f(n);
end
x // x est la valeur obtenue a partir de la methode de point fixe
