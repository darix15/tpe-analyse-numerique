    n=5 ;
    x=2 ;
for i=0:n do
    resultat1=(x^i)/factorial(i);
end
resultat1
    n=10 ;
for i=0:n do
    resultat2=(x^i)/factorial(i);
end
function bn=an(j)
    bn=1/factorial(j)
endfunction
n=5;
p=an ;
for i=n:1 do 
    p(n)=an(i-1) +p(n)*x
end
p1=p(n);
n=10;
pn=an ;
for i=n:1 do 
    pn(n)=an(i-1) +p(n)*x
end
p2=p(n);
