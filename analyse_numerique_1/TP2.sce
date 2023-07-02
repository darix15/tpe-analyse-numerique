//Correction TP2 d'Analyse Numérique: Dr GUIEM Richard
//Raccourci clavier pour exécuter le fichier = ctrl L

function yp=Cauchy(t,y) //question 2)a)
yp=t^5*y^2+cos(t)
endfunction //fin question 2)a)


function [liste_y, liste_t]= PointMilieu(y0,N,T) //question 2)b) premier volet
y=y0; liste_y =[y0];
t=0; liste_t =[0];
h=T/N;
for i=1:N,
z=h*Cauchy(t,y);
y=y+h*(Cauchy(t+h/2,y+z/2));
t=t+h;
liste_y=[liste_y ,y];
liste_t=[liste_t ,t];
end
endfunction  //fin question 2)b) premier volet


y0 =1; N =5; T=0.5;  //question 2)b) deuxième volet
[solution,temps]= PointMilieu(y0,N,T)  //fin question 2)b) deuxième volet


plot(temps,solution) //question 2)c)
