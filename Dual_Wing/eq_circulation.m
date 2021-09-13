fun = @(y,z)( 0.02707 * exp(-((y-2.901).^2+(z+0.09679).^2)/0.1525^2) )

xmin = 0;
xmax = 10;
ymin = -5;
ymax = 5;
q = integral2(fun,xmin,xmax,ymin,ymax)