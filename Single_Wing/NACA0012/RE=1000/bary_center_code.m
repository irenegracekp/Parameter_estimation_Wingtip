data = Naca1000vort5;

y = data(:,2);
z = data(:,1);
w = data(:,3);

sum_w = sum(abs(w)); 

y_bary = sum(w.*y) / sum_w;
z_bary = sum(w.*z) / sum_w;
                          
I1 = trapz(w) ;                              
Result = trapz(I1); 

z0 = z - -0.06343;
y0 = y - 2.875;
R = sqrt( z0.^2 + y0.^2 );

y1 = 0;
z1 = 0;
w1 = 0;
k=1;

for i=1:22152
    if R(i)< 4
            y1(k,1) = y(i);
            z1(k,1) = z(i);
            w1(k,1) = w(i);
            k=k+1;   
    end
end
