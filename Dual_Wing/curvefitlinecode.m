
j=1;
k=1;
r=0;
vort=0;
vel=0;
datav = datav59;
dataw = dataw59;
Z = datav(:,1);
Y = datav(:,2);
z0 = Z - -0.2357;
y0 = Y - 2.6791;
W = dataw(:,3);
V = datav(:,3);
for i=1:53762
    if abs(Y(i)-2.6408)<0.001
            r(k,1) = abs(Z(i)- -0.25595);
            vort(k,1) = W(i);
            vel(k,1) = V(i);
            k = k+1;   
    end
end

ri=0;
[r,ri]=sortrows(r(:,1));
vel = vel(ri);
vort = vort(ri);

