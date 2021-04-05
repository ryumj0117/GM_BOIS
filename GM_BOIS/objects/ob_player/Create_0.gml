//setup
hp = 4;
dead = false;

global.walk_speed = 0.0003;

w_speed = global.walk_speed;

x_speed = 0;
y_speed = 0;

m_on = false;

function percent(sp)
{
	result = global.walk_speed/100*sp;
	
	return result;
}