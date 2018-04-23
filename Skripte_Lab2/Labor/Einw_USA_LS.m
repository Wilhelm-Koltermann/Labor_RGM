clear
close all
load('Einwohner_USA.mat')
%Extrahieren der Daten
Jahr = Daten(:,1);
Einwohner = Daten(:,2);
%Ploten der Daten
plot(Jahr,Einwohner,'o',Jahr,Einwohner)
xlabel('t / y')
ylabel('Einwohnerzahl / (Mio)')
title('Bevölkerungswachstum USA 1900 - 2010')
grid
%vandermonde Matrix erstellen
c0 = ones(length(Jahr),1);
VMM = [c0 Jahr Jahr.^2];
%Lösungsvektor
y = Einwohner;
%Koeffizienten des quadr. Polynoms
c = VMM\y;
%erstellen und plotten des Ausgleichpolynoms
figure
x = [1900:10:2020];
p2 = [c(3) c(2) c(1)];
plot(Jahr,Einwohner,'o',x,polyval(p2,x));
xlabel('t / y')
ylabel('Einwohnerzahl / (Mio)')
grid
%Einwohnerzahl 2020
disp(sprintf('Einwohnerzahl 2020: %f ',polyval(p2,2020)))



