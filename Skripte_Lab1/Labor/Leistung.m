function P3 = Leistung(R3)
    
    %Berechnet Ströme i1-i3 sowie Leistung 
    %in Abhängigkeit von R3 und i3
    
    u = [10; 0; 0];
    R1 = 10;
    R2 = 15;
    R = [R1 R2 0; 0 -R2 R3; 1 -1 -1];
    
    i = R\u;
    i3 = i(3,1);
    P3 = R3.*i3.^2;
    
end
