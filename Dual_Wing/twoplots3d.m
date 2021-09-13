

dataw = dataw50;
Z=dataw(:,1);
Y = dataw(:,2);

z0 = Z - -0.357;
y0 = Y - 2.679;

R = sqrt( z0.^2 + y0.^2 );

theta = [0.0538050495640519
0.465145658750656
0.507743211431810
1.10000211111100]

vort = (2*theta(3)*theta(1)*exp(-(R./theta(2)).^2))/(theta(2)*theta(2))
%vel = (1 - (theta(1)/(theta(2)/theta(3))^2) * exp(-(R./theta(2)).^2));

[v, Ri] = sortrows(dataw(:,3));
Y = dataw(Ri,2);
Z = dataw(Ri,1);
vort = vort(Ri)

C = [0 .9 .75; 1 0 0; 0 0.4 0.4; 0.6 0.4 0];
C=linspace(1,10,length(v));

figure(1)
scatter3(Z,Y,vort,[],C,'filled','MarkerEdgeColor','k');
legend('Curvefit');
xlabel('Y');
ylabel('Z');
zlabel('VORT');

figure(2)
scatter3(Z,Y,v,[],C,'filled','MarkerEdgeColor','k');
legend('Rawdata');
xlabel('Y');
ylabel('Z');
zlabel('VORT');
hold off
