clear
close all

count = 1;
R3array = 0:0.1:30;
P3array = zeros(1,length(R3array));

%Berechnen der Leistung(P3) mit den Werten
%aus R3array

for j = R3array
    
    P3array(count) = Leistung(j);
    
    count++;
    
endfor

%Plotten der berechneten Funktion

plot(R3array,P3array)
xlabel('R3 / Ω')
ylabel('P3 / W')
title('P3-R3-Diagramm')
grid

%Berechnen des optimalen Widerstands R3

R3opt = fminsearch(@Leistung_min,10);
disp(sprintf('optimaler Widerstand: %g',R3opt))
    