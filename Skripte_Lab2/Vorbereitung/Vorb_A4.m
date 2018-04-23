clear;
close all;
%Koeffizienten Vektoren
A = [7 -13];
B = [1 -2 -3];
%Berechnung der Nullstellen
n1 = roots(A);
n2 = roots(B);
%Polynommultiplikation
C = conv(A,B);
%PBZ
%r sind die Koeffizienten meiner PBZ
%p sind die Nullstellen des Nenners
%k ist
[r,p,k]=residue(A,B);
%Ableitung und Integration von B
B_diff = polyder(B);
B_Int = polyint(B);
%plotten von c von -3 bis 5
x = -3:0.1:5;
plot(x,polyval(C,x));
xlabel('x');
ylabel('y');
grid;