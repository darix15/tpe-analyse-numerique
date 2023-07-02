n=10;
h=0.1;
function z=euler(t,y)
    z=(t^2)*y
endfunction
y=5;
t=0
for i=1:n do
    y=y +h*euler(t,y);
    t=t+h;
end
[t y]
a=5*exp((1^3)/3)
