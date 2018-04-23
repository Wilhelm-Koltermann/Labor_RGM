clear
close all

load('Einwohner_USA.mat')

Jahr = Daten(:,1)
Einwohner = Daten(:,2);

plot(Jahr,Einwohner,'o',Jahr,Einwohner)
xlabel('t / y')
ylabel('Einwohnerzahl / (Mio)')
title('Bevölkerungswachstum USA 1900 - 2010')
grid