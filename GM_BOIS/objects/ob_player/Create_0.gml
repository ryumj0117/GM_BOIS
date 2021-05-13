event_inherited();

//setup default
hp_max = 20;
hp = hp_max;

sap_max = 20;
player_sap = 20;

dead = false;

sprint = false;

x_speed = 0;
y_speed = 0;

breakable = false;

p_time = room_speed/10;

allow_cheat = true;

//player
damage = 1;

break_distance = 200;
item_distance = 100;
sap_distance = 500;

respawn_time = get_seconds(3);
respawn = respawn_time;

//hp bar
hp_bar_width = hp;
hp_bar_height = 32;
hp_bar_x = 0;
hp_bar_y = 0;

//sap bar
sap_bar_width = player_sap;
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
hunger_time = 10;
hunger_timer = 0;
second = 0;

//inventory
item_wood = 0;
item_default_seed = 0;

