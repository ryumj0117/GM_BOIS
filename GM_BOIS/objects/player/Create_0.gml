global.walk_speed = 0.0003
timer = 0;
image_speed = 0;

w_speed = global.walk_speed;

function percent(sp)
{
	result = global.walk_speed/100*sp;
	
	return result;
}