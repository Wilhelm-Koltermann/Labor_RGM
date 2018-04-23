clear 
%Summenvariablen
sum1 = 0;
sum2 = 0;
%Eingabe für n
n = input('Geben Sie n >= 2 ein: ');
%berechnung des Faktors vor der Klammer
k = (4-(-4))./(6.*n);
%berechnung des Stützstellenabstandes h
h = (4-(-4))./(2.*n);
%berechnung von f(a)&f(b)
fa = fbeispiel(-4);
fb = fbeispiel(4);
%berechnung der Summe über g(i)
Werte0 = 1:n-1;
for g = Werte0
    gi = -4 + 2.*g.*h;
    sum1 = sum1 + fbeispiel(gi);
end
%berechnung der Summe über min
Werte1 = 1:n;
for m = Werte1
    mi = -4 + (2*m -1)*h;
    sum2 = sum2 + fbeispiel(mi);
end
%Integral nach Simpson
sum_simpson = k*(fa + 2*sum1 + 4*sum2+fb);
disp(sprintf('Integral nach Simpson für %1.f Intervalle: %f',n,sum_simpson))