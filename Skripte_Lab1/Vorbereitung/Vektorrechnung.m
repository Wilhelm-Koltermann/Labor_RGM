A = [1 2 -1; -2 0 3];
B = [3 0 1; 1 2 4; 0 1 -1];
a = [1; 2; 3];
b = [4 5 6];

%Vektoraddition

c = a + b'

%Multiplikation mit Skalar

d = 2 * a

%Skalarprodukt

e = a' * c

%Vektorprodukt

f = cross(a, c)

%Produkt mit Matrix A

g = A * b'

%weitere Berechnungen

h = B * a

C = a * c'