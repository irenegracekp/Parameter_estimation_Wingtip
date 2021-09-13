

Z=datav(:,1);
Y = datav(:,2);
z0 = Z - -0.25597;
y0 = Y - 2.6408;
R = sqrt( z0.^2 + y0.^2 );

[R, Ri] = sortrows(R);
V = datav(Ri,3);
W = dataw(Ri,3);

vel=0;
vort=0;
r=0;
k=1;

for i=1:53762
    if R(i)<10
            r(k,1)= R(i,1);
            vort(k,1)=W(i);
            vel(k,1)=V(i);
            k=k+1;   
    end
end

