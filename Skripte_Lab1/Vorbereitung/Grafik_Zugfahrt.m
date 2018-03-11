clear
close all

%Daten Zughfahrt1:

t1 = [0 15 30 60 80 120 130 150 160 180];
v1 = [0 120 50 270 320 250 300 120 50 0];

%Graphische Darstellung

%plot(t1,v1)
%plot(t1, v1, 'o')
plot(t1, v1, 'v', t1, v1)
xlabel('Zeit / min')
ylabel('Geschwindigkeit / (km/h)')
title('TGV Karlsruhe - Paris')
grid 