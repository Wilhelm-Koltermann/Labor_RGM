clear
close all

M = load('Messung.csv');
t = M(:,1);
v = M(:,2);
s = M(:,3);

%Ermitteln der Abtastzeit

TA = t(2) - t(1);

disp(sprintf('\nAbtastzeit:       %2.1fs', TA))

%Ermitteln der Maximalgeschwindigkeit

vmax = max(v);
vmaxkmh = vmax*3.6;

disp(sprintf('max. Geschw.:     %2.1f m/s = %2.1f km/h', vmax, vmaxkmh))

%Ermitteln des Maximalen weges

smax = max(s);

disp(sprintf('Weg:\t          %2.1f m', smax)) 

%Ermitteln der Luftwiderstandskraft und der Motorleistung

FL = 1/2.*v.^2;
PL = (FL.*v)./1000;

FLmax = max(FL);
PLmax = max(PL);

disp(sprintf('max. Luftwid.:    %2.1f N', FLmax))
disp(sprintf('max. Leistung:    %2.1f kW', PLmax))

%Ermitteln der mittleren Beschleunigung

a = v./t;
a(1) = 0;
amittel = mean(a);

disp(sprintf('mittlere Beschl.: %2.1f', amittel))


%Plotten des v-t-Diagramms

plot(t,v)
xlabel('t / s')
ylabel('v / (m/s)')
title('v-t-Diagramm')
grid

%Plotten des s-t-Diagramms

figure
s0 = weg(t,amittel);
plot(t,s,t,s0)
xlabel('t / s')
ylabel('s / m')
title ('s-t-Diagramm')
legend('gemessen','berechnet')
grid

%Plotten des v-s-Diagramms

figure
plot(s,v)
xlabel('v / (m/s)')
ylabel('s / m')
title('v-s-Diagramm')
grid

%Plotten des FL-t-Diagramms

figure
plot(t,FL)
xlabel('t / S')
ylabel('FL / N')
title('FL-t-Diagramm')

