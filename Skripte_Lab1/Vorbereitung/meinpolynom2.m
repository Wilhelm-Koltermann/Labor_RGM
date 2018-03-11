function y = meinpolynom2(x,a)
    
% Berechnet das Polynom

% y = 3*(x+1)^2*(x-1)

%um a nach rechts verschoben

x = x-a;

y = 3*(x+1).^2.*(x-1);

end