clear
%Eingabe für n
n = input('Geben Sie n >= 2 ein: ');
%berechnung des Stützstellenabstandes h
h = (4-(-4))./(2.*n);
%berechnung des Faktors vor der Klammer
k = (4-(-4))./(6.*n);
%berechnung von f(a)&f(b)
fa = fbeispiel(-4);
fb = fbeispiel(4);
%anlegen der gi-werte
i_g = 1:n-1;
g = -4 + 2*i_g*h;
%anlegen der mi-Werte
i_m = 1:n;
m = -4 + (2*i_m - 1)*h;
%berechnen der f(gi)- & f(mi)-Werte
fg = fbeispiel(g); 
fm = fbeispiel(m);
%Integral nach Simpson
sum_simpson = k*(fa + 2*sum(fg) + 4*sum(fm) + fb);
disp(sprintf('Integral nach Simpson für %1.f Intervalle: %f',n,sum_simpson)) 