event_inherited();

//setup
hp = 10;
hp_max = 20;

sap = 10;
sap_max = 10;

damage = 1;
dead = false;

breakable = false;

allow_cheat = true;

sprint = false;

x_speed = 0;
y_speed = 0;

respawn_time = get_seconds(3);
respawn = respawn_time;

//hp bar
hp_bar_width = hp;
hp_bar_height = 32;
hp_bar_x = 0;
hp_bar_y = 0;

//sap bar
sap_bar_width = sap;
sap_bar_height = 32;
sap_bar_x = 0;
sap_bar_y = 0;


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

//hungry
hunger_time = 3;
hunger_timer = 0;
second = 0;