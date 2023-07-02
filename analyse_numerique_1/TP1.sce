//Correction TP1 d'Analyse Numérique: Dr GUIEM Richard
//Raccourci clavier pour exécuter le fichier = ctrl L

function yp=Cauchy(t,y) //question 2)a)
yp=t^3*y^3+t^2+3
endfunction  //fin question 2)a)


function [liste_y, liste_t]= EulerModifiee(y0,N,T) //question 2)b) premier volet
y=y0; liste_y=[y0];
t=0; liste_t=[0];
h=T/N;
for i=1:N,
z=y+h*Cauchy(t,y);
y=y+(h/2)*(Cauchy(t,y)+Cauchy(t+h,z));
t=t+h;
liste_y =[liste_y ,y];
liste_t =[liste_t ,t];
end
endfunction //fin question 2)b) premier volet


y0 =1; N =5; T=0.5; //question 2)b) deuxième volet
[solution,temps]= EulerModifiee(y0,N,T) //fin question 2)b) deuxième volet


plot(temps,solution)  //question 2)c)
