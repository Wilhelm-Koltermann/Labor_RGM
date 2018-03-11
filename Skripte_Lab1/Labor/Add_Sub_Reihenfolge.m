clear

%Variablendeklaration

a = 1;
b = 10^(-16);

%Summe in unterschiedlichen Reihenfolgen

disp(sprintf('Summe a + b - a   = %g', a + b - a))
disp(sprintf('Summe -a + b + a  = %g', -a + b + a))
disp(sprintf('Summe a - a + b   = %g', a - a + b))
disp(sprintf('Summme -a + a + b = %g', -a + a + b))
disp(sprintf('Summe b + a - a   = %g', b + a - a))
disp(sprintf('Summe b - a + a   = %g', b - a + a))