//setup
hp = 4;
dead = false;

global.walk_speed = 0.0003;

w_speed = global.walk_speed;

x_speed = 0;
y_speed = 0;

//higher value to slippery
stop_speed = 20;

m_on = false;

function percent(sp)
{
	result = global.walk_speed/100*sp;
	
	return result;
}