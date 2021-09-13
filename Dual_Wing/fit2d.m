Z=0;
Y=0;
j=1;
V=0;
W=0;
for i=1:53762
    if (datav(i,1)<0.25)&&(datav(i,1)>-0.18)&&(datav(i,2)>2.7)&&(datav(i,2)<3.2)
        Y(j,1)=datav(i,2);
        Z(j,1)=datav(i,1);
        VEL(j,1)=datav(i,3);
        VORT(j,1)=dataw(i,3);
        j=j+1;
    end
end

z0 = Z - -0.03034;
y0 = Y - 2.918;

R = sqrt( z0.^2 + y0.^2 );

[r, Ri] = sortrows(R);
V = VEL(Ri);
W = VORT(Ri);
