timer = 0;

global.walk_speed = 0.0003;

w_speed = global.walk_speed;
x_speed = 0;
y_speed = 0;
x_t = x;
y_t = y;

function percent(sp)
{
	result = global.walk_speed/100*sp;
	
	return result;
}