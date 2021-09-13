datav = flat5000vel5;
Z = datav(:,1);
Y = datav(:,2);
z0 = Z - -0.0174;
y0 = Y - 2.87;
V = datav(:,3);

k = 1;
r = 0;
vel = 0;
for i=1:84000
    if abs(Y(i)-2.855)<0.01
            r(k,1) = abs(Z(i)- -0.25595);
            vel(k,1) = V(i);
            k = k+1;   
    end
end

ri=0;
[r,ri]=sortrows(r(:,1));
vel = vel(ri);

plot(r,vel,'ko');

theta0=[0.363733155146668;1.26027356838315;0.465067939644664;1];
theta0=[1;1;1;1];
fun = @(theta)[vel - (theta(4) - (theta(1)/(theta(2)/theta(3))^2) * exp(-(r./theta(2)).^2)),vort-(2*theta(3)*theta(1)*exp(-(r./theta(2)).^2))/(theta(2)*theta(2))]; 

options.Algorithm = 'levenberg-marquardt';

lb = [1e-10,-1+1e-10];  % Set lower bounds 
ub = [inf,inf];         % Set upper bounds

theta = lsqnonlin(fun,theta0,lb,ub);

%figure(1)
%plot(r,vort,'ko');
%hold on
%plot(r,(2*theta(3)*theta(1)*exp(-(r./theta(2)).^2))/(theta(2)*theta(2)),'b-','linewidth',2);
%hold off

figure(2)
%plot(r,vel,'ko');
hold on
plot(r,(theta(4) - (theta(1)/(theta(2)/theta(3))^2) * exp(-(r./theta(2)).^2)),'b-','linewidth',2);
hold off
