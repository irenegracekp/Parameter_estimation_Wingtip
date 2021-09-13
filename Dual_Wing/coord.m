

z0 = -0.1155;
y0 = 2.741;

y1 = vy(:,2);
z1 = vy(:,1);

y = y1-y0;
z = z1-z0;

[theta,r] = cart2pol(y,z);

sum_w = sum(w); 

y_bary = sum(w.*y) / sum_w;
z_bary = sum(w.*z) / sum_w;



uy = vy(:,3);
uz = vz(:,3);

utheta = -uy.*sin(theta) + uz.*cos(theta);
j=1;
UTHETA=0;
for i=1:53762
    if (y1(i)<4)&&(y1(i)>2)&&(z1(i)>-2)&&(z1(i)<2)
        Y(j,1)=y1(i);
        Z(j,1)=z1(i);
        UTHETA(j,1)=utheta(i);
        j=j+1;
    end
end