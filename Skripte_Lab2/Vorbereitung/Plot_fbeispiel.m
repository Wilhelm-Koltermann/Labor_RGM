clear
x = -6:0.001:6;
plot(x,fbeispiel(x))
xlabel('x')
ylabel('y')
grid
%Nullstellensuche mit fzero
%Startwerrte
x0 = [4 5];
fzero(@fbeispiel,x0)
%Flächenberechnung zwischen fbeispiel und x-Achse
I = quad(@fbeispiel,-6,6)