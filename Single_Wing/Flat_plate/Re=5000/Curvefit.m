data = Naca1000vel40;

y = data(:,2);
z = data(:,1);
w = data(:,3);

j=1;
Y=0;
Z=0;
V=0;
for i=1:4
    if (y(i) < 3.1) && (y(i)> 2.7) && (z(i)< 0.2) && (z(i)> -0.4 )
        Y(j,1) = y(i,1);
        Z(j,1) = z(i,1);
        V(j,1) = w(i,1);
        j = j+1;
    end
end    
   