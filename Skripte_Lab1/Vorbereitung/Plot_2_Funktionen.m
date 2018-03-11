clear
close all

%x-Werte

x = 0:0.1:2 .* pi;

%Funktionen und Plot

y1 = sin(x);
y2 = sin(x) .* cos(x);

plot(x,y1,x,y2)
xlabel('x-Achse')
ylabel('y-Achse')
title('Zwei Funktionen')
grid
legend('sin(x)','sin(x)*cos(x)')