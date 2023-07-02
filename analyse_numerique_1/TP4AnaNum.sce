function [P]=lagrange(X,Y)
n=length(X);
x=poly(0,"x");P=0;
       for j=1:n do
           L=1;
        for i=[1:i-1,i+1:n] do
            L=L*(x-X(i))/(X(j)-X(i));
        end
        P=P +L*Y(k);
      end
endfunction
X=[0;4;7]; Y=[7;11;8]; P=lagrange(X,Y)
P