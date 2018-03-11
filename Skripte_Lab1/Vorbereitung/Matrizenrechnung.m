A = [1 2; 3 -1; 2 4];
B = [-2 1; 0 3; -1 2];
C = [3 0 1; -2 1 4; 2 1 -1];

%Berechnung 1:

D = A' * B;

disp(sprintf('Matrix D ='))
disp(D)

%Berechnung 2:

E = B' * A;

disp(sprintf('Matrix E ='))
disp(E)

%Berechnung 3:

F = A * B';

disp(sprintf('Matrix F ='))
disp(F)

%Berechnung 4:

G = B * A';

disp(sprintf('Matrix G ='))
disp(G)

%Berechnung 5:

H = F * C;

disp(sprintf('Matrix H ='))
disp(H)

%Berechnung 6:

J = C * F;

disp(sprintf('Matrix J ='))
disp(J)