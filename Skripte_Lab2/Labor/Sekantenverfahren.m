clear
%Festlegen der Startwerte
xi = 4;
xi_minus_1 = 5;
%Sekantenverfahren
while abs(fbeispiel(xi)) > 10^-3
    %Zwischensspeichern der bald alten xi-Variable
    t = xi;
    %Berechnung des neuen xi
    xi = xi - (fbeispiel(xi).*(xi - xi_minus_1))./(fbeispiel(xi) - fbeispiel(xi_minus_1));
    %Festlegen der neuen xi_minus_1-Variable 
    xi_minus_1 = t;
end
%Ausgabe der Nullstelle
disp(sprintf('Nullstelle liegt ungefähr bei: %f',xi))
