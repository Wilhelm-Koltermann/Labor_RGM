%Funktion für Simpsonsche-Regel
function I = simpson(fun,a,b,n)
    %berechnung des Stützstellenabstandes h
    h = (b-a)/(2*n);
    %berechnung des Faktors vor der Klammer
    k = (b-a)/(6*n);
    %berechnung von fa&fb
    fa = fun(a);
    fb = fun(b);
    %anlegen der gi-werte
    i_g = 1:n-1;
    g = -4 + 2*i_g*h;
    %anlegen der mi-Werte
    i_m = 1:n;
    m = -4 + (2*i_m - 1)*h;
    %berechnen der f(gi)- & f(mi)-Werte
    fg = fun(g); 
    fm = fun(m);
    %Integral nach Simpson
    I = k*(fa + 2*sum(fg) + 4*sum(fm) + fb);
end