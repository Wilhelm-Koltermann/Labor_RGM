z1 = 3 + i;
z2 = -1 + 2i;

%Aufgabenteil a)

vala = z1/z2^2;

disp(sprintf('z1/z2^2 = %1f + %1fi\n',real(vala),imag(vala)))

%Aufgabenteil b)

z3 = (z1+z2)^(1/4);
r = abs(z3); 
phi = angle(z3);

disp(sprintf('z3 \t= %1f * exp(%1f * i + k * pi/2); für k={0, 1, 2, 3}',r, phi))