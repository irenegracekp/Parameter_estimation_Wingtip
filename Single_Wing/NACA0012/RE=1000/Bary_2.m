
data = flat5000vort25;

y = data(:,2);  
z = data(:,1);
w = data(:,3);

f1 = fit([y, z], w, 'linearinterp');
f2 = fit([y, z], y.*w, 'linearinterp');
f3 = fit([y, z], z.*w, 'linearinterp');
q1 = quad2d(f1,0,8,-10,10); 
q2 = quad2d(f2,0,8,-10,10); 
q3 = quad2d(f3,0,8,-10,10); 
y_bary = q2/q1;
z_bary = q3/q1;


