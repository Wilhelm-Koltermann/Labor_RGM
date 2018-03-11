%Flaeche.m

%Berechnung von Flaeche und Umfang von
%-Kreis
%-innerem Quadrat
%-aeußerem Quadrat

%Löschen aller Variablen

clear

%Definition des Radius

r=5;

%Berechnung fuer den Kreis

U_K = 2*pi*r
A_K = pi*r^2

%Berechnung fuer das innere Quadrat

U_i = 4*sqrt(2)*r
A_i = 2*r^2

%Berechnung fuer das äußere Quadrat

U_a = 8*r
A_a = 4*r^2
