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
%direkte Berechnung der Koeffizienten
c = polyfit(Jahr,Einwohner,2);
disp(sprintf('Einwohnerzahl 2020: %f',polyval(c,2020)))

