
datav = datav30;
dataw = dataw30;
Z=datav(:,1);
Y = datav(:,2);
z0 = Z - -0.2114;
y0 = Y - 2.7233;
R = sqrt( z0.^2 + y0.^2 );

[R, Ri] = sortrows(R);
V = datav(Ri,3);
W = dataw(Ri,3);
Z = datav(Ri,1);
Y = datav(Ri,2);

vel=0;
vort=0;
r=0;
k=1;
z=0;
y=0;
for i=1:53762
    if R(i)<0.2
            r(k,1)= R(i,1);
            vort(k,1)=W(i);
            vel(k,1)=V(i);
            z(k,1)=Z(i);
            y(k,1)=Y(i);
            k=k+1;   
    end
end

[Xaxis,Yaxis] = meshgrid(y,z);
[Xaxis,Yaxis,VORT] = griddata(y,z,vort,Xaxis,Yaxis);