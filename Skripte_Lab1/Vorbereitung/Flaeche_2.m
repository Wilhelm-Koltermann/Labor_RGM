%Flaeche.m

%Berechnung von Flaeche und Umfang von
%-Kreis
%-innerem Quadrat
%-aeußerem Quadrat

%Löschen aller Variablen

clear

%Definition des Radius

r= input('Geben Sie den Radius ein:');
printf('\n')

%Berechnung fuer den Kreis

U_K = 2*pi*r;
A_K = pi*r^2;

%Berechnung fuer das innere Quadrat

U_i = 4*sqrt(2)*r;
A_i = 2*r^2;

%Berechnung fuer das äußere Quadrat

U_a = 8*r;
A_a = 4*r^2;

disp(sprintf('Radius r = %1f', r))
disp(sprintf('Kreis:\t \t \tU = %.2f, A = %2.1f',U_K,A_K))
disp(sprintf('inneres Quadrat:\tU = %.2f, A = %.2f',U_i,A_i))
disp(sprintf('aeußeres Quadrat:\tU = %.2f, A = %.2f',U_a,A_a))