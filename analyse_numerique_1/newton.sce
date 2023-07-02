function [p]=newton(X,Y)
    n=length(X);
    for j=2:n do
        for i=1:n-j+1 do
            Y(i,j)=(Y(i+1,j-1)-Y(i,j-1))/(X(i+j-1)-X(i) ;
        end
    end
    x=poly(0,"x") ;
    p=Y(1,n) ;
    for i=2:n do
        p=p+;
    end
endfunction
