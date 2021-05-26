event_inherited();

taken = false;

slip = 5;

r_x = 0;
r_y = 0;

if(irandom_range(0, 1) == 0) r_x = -1;
if(irandom_range(0, 1) == 1) r_x = 1;

if(irandom_range(0, 1) == 0) r_y = -1;
if(irandom_range(0, 1) == 1) r_y = 1;

x_speed = (r_x * slip);
y_speed = (r_y * slip);
