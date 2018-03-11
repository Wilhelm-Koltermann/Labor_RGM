function y = Leistung_min(R3)
    
    u = [10; 0; 0];
    R1 = 10;
    R2 = 15;
    R = [R1 R2 0; 0 -R2 R3; 1 -1 -1];
    
    i = R\u;
    i3 = i(3,1);
    y = -R3.*i3.^2;
    
end

    