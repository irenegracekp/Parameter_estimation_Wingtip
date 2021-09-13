%[0.363733155146668;1.26027356838315;0.465067939644664;1]

theta0=[0.363733155146668;1.26027356838315;0.465067939644664;1];
fun = @(theta)[vel - (1 - (theta(1)/(theta(2)/theta(3))^2) * exp(-(r./theta(2)).^2)),vort-(2*theta(3)*theta(1)*exp(-(r./theta(2)).^2))/(theta(2)*theta(2))]; 
%,vort-(2*theta(3)*theta(1)*exp(-(r./theta(2)).^2))/(theta(2)*theta(2))
%fun = @(theta) W-(2*theta(3)*theta(1)*exp(-(r./theta(2)).^2))/(theta(2)*theta(2));

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
plot(r,vel,'ko');
hold on
plot(r,(theta(4) - (theta(1)/(theta(2)/theta(3))^2) * exp(-(r./theta(2)).^2)),'b-','linewidth',2);
hold off

%times = linspace(b(1),b(end));
%plot(b,c,'ko',times,fun(x,times),'b-')