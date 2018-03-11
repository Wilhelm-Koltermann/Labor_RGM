function y = ieee2single(xieee)
    
    %Berechnung des Single-Strings aus
    %32 Bit IEEE-Fließkommazahl
    
    y = num2hex(single(xieee));
    
    endfunction