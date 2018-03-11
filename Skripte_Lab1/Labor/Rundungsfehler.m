clear

%Variablendefinition

x = 1;
delta_x = [0.1 0.125 0.2 0.25];

%Schleife

for z = 1:4
    
    disp(sprintf('Index: %g\n', z))
    x = 1;
   
    while x > 0
    
    x = x - delta_x(z);
    
    disp(sprintf('aktueller Wert von x: %g\n', x))
    
    if x <= 0 
        
        disp(sprintf('NULL!'))
        
    end
    
end

    
    
end

