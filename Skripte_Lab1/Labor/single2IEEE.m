function y = single2IEEE(xhex)
    
    %Berechnung der 32 Bit IEEE-Fließkommazahl
    %aus Single-String
    
    xint = uint32(hex2dec(xhex));
    
    y = typecast(xint, 'single');
    
    endfunction