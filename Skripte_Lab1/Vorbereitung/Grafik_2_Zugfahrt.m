clear
close all

%Daten Zughfahrt1:

t1 = [0 15 30 60 80 120 130 150 160 180];
v1 = [0 120 50 270 320 250 300 120 50 0];

t2 = [0 10 25 50 90 130 155 170 180];
v2 = [0 100 60 250 320 280 100 30 0];

%Graphische Darstellung

plot(t1,v1,t2,v2) %Zwei Graphen in eine Plot
%plot(t1, v1,'o', t1, v1,t2,v2,'o',t2,v2) %Zwei Punktemnegen mit Graphe  in einen Plot
%plot(t1, v1,'o',t2,v2,'o') %zwei Punktemengen in einen Plott
xlabel('Zeit / min')
ylabel('Geschwindigkeit / (km/h)')
title('TGV Karlsruhe - Paris')
grid 
legend('Fahrt 1', 'Fahrt 2')