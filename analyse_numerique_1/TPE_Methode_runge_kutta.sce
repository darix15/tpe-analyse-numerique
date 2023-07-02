n=5;
h=0.1;
function z=rungekutta(t,y)
    z=(t^3)*(y^2)
endfunction
f=rungekutta;
y=1;
t=0
for i=1:n do
    a=f(t,y);
    b=f(t,y+(h*a));
    y=y +(h/2)*(a + b);
    t=t+h;
end
[t y] // methode de runge kutta d'ordre 2 avec 5 iterrations

t=0; // on initialise encore t pour le calcul a l'ordre 4
for i=1:n do
    a=f(t,y);
    b=f(t,y+(h*a));
    c=f(t,y+(h*b));
    d=f(t,y+(h*c));
    y=y +(h/6)*(a +2*(b +c) +d);
    t=t+h;
end
[t y] // methode de runge kutta d'ordre 4 avec 5 iterrations
