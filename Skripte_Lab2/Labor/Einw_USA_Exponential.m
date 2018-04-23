clear
close all
load('Einwohner_USA.mat')
%Extrahieren der Daten
Jahr = Daten(:,1);
Einwohner = Daten(:,2);
%direkte Berechnung der Koeffizienten
c = polyfit(Jahr,Einwohner,2);
%Ploten des Polynoms und der Daten
figure
x = 1900:10:2020;
plot(Jahr,Einwohner,'o',x,polyval(c,x))
xlabel('t / y')
ylabel('Einwohnerzahl / (Mio)')
title('Bevölkerungswachstum USA 1900 - 2020')
grid
%Berechnung für 2020 mit Polynom
disp(sprintf('Einwohnerzahl 2020 nach Polynom: %f Mio.',polyval(c,2020)))
%Approximation durch Exp.-Funk.
%Logarithmierte y Werte
y = log(Einwohner);
%Vandermondematrix und die Koeffizienten
VMM = [ones(length(Jahr),1) Jahr];
c2 = VMM\y;
%neuer Wertebereich
x1 = [1800:10:2020];
%Aufstellen der Exponentialfunkt.
exp = e.^(c2(1) + c2(2).*x1);
%ploten der Daten sowie der beiden Aproximationen
figure
plot(Jahr,Einwohner,'o',x1,polyval(c,x1),x1,exp)
xlabel('t / y')
ylabel('Einwohnerzahl / (Mio)')
title('Bevölkerungswachstum USA 1900 - 2020')
grid
%Berechnung für 2020 mit Exp
disp(sprintf('Einwohnerzahl 2020 nach Exp: %f Mio.',e.^(c2(1) + c2(2).*2020)))