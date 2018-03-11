clear

%Deklaration der Variablen

A = [1 2 -1; -1 1 3; 2 7 -1];
c = [4; -1; 11];

%Lösen der Matrix-Vektor-Gleichung

if det(A) ~= 0
    
    x0 = inv(A) * c;
    x1 = A^(-1) * c;
    
end

%Lösung mit mldivide

x2 = A\c;

%überprüfen der Lösung

uebL = A*x0

