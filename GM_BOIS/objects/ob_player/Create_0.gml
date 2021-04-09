event_inherited();

//setup
hp = 4;
max_hp = 10;

sap_max = 6;
sap = sap_max;

damage = 1;
dead = false;

breakable = false;

allow_cheat = true;

sprint = false;

x_speed = 0;
y_speed = 0;

respawn_time = get_seconds(3);
respawn = respawn_time;

//higher value to slippery
stop_speed = 20;

global.walk_speed = 0.0003;
w_speed = global.walk_speed;

//flash
f_alpha = 0;
f_color = c_white;

m_on = false;

function percent(sp)
{
	result = global.walk_speed/100*sp;
	
	return result;
}