var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));

var input_x = right-left;
var input_y = down-up;

//set movement input
if(input_x != 0 && place_free(x + w_speed, y))
{
	x_speed = input_x*w_speed*delta_time;
}
if(input_y != 0 && place_free(x, y + w_speed))
{
	y_speed = input_y*w_speed*delta_time;
}

//slippery stop
x_speed -= x_speed / stop_speed;
y_speed -= y_speed / stop_speed;

//collision
/*
if(place_meeting(x + x_speed, y, ob_wall))
{
	x_speed = 0;
}
if(place_meeting(x, y + y_speed, ob_wall))
{
	y_speed = 0;
}
*/

//actual move
if(!dead)
{
	x += x_speed;
	y += y_speed;
}


//move animation
if(!dead)
{
	img_speed = w_speed * 1000;
	if(up)
	{
		image_speed = img_speed;
		sprite_index = sp_player_up;
	}
	else if(down)
	{
		image_speed = img_speed;
		sprite_index = sp_player_down;
	}
	else if(left)
	{
		image_speed = img_speed;
		sprite_index = sp_player_left;
	}
	else if(right)
	{
		image_speed = img_speed;
		sprite_index = sp_player_right;
	}
	else
	{
		image_speed = 0;
		image_index = 0;
	}
}


//sprint
if(keyboard_check_pressed(vk_shift) && !sprint)
{
	sprint = true;
	w_speed += percent(70);
}
else if(keyboard_check_released(vk_shift) && sprint)
{
	sprint = false;
	w_speed = global.walk_speed;
}


//particle
p_time ++; 
if(sprint && p_time >= room_speed/10)
{
	if(left || right || up || down) instance_create_layer(x, y, "Instances", ob_particle_run);
	p_time = 0;
}


//test
if(place_meeting(x, y, ob_cursor) && mouse_check_button(mb_middle) && allow_cheat) m_on = true;
if(!mouse_check_button(mb_middle)) m_on = false;

if(m_on && allow_cheat)
{
	ob_cursor.visible = false;
	juice_up();
	follow(ob_cursor.x, ob_cursor.y, 10);
	
	if(particle_time >= room_speed/particle_count) 
	{
		particle_time = 0;
		instance_create_layer(x, y, "Instances", ob_particle);
		instance_create_layer(x, y, "Instances", ob_particle_blue);
	}
}
else
{
	ob_cursor.visible = true;
	juice_down();
}
particle_time ++;

//damage & heal
if(keyboard_check_pressed(vk_up) && hp < hp_max && !dead) 
{
	hp += 1;
	
	//flash
	f_color = c_lime;
	f_alpha = 1;
	
	for(i = 0; i <= 20; i ++)
	{
		instance_create_layer(x, y, "Instances", ob_particle_lime);
	}
	
	//juice
	juice_up();
}

//damage
function damaged(value)
{
	hp -= value;
	
	//flash
	f_color = c_red;
	f_alpha = 1;
	
	for(i = 0; i <= 10; i ++)
	{
		instance_create_layer(x, y, "Instances", ob_particle_red);
	}
	
	//juice
	juice_up();
}

if(keyboard_check_pressed(vk_down) && hp > 0 && !dead) 
{
	damaged(1);
}
juice_down();

//hunger
hunger_timer ++;
if(hunger_timer >= room_speed && !dead)
{
	hunger_timer = 0;
	second ++;
}

if(second >= hunger_time)
{
	if(player_sap > 0)
	{
		player_sap -= 1;
	}
	else if(player_sap <= 0) 
	{
		damaged(3);
	}
	//keep reset second
	second = 0;
}
juice_down();

//flash down
if(f_alpha > 0)
{
	f_alpha -= 0.05;
}

//death
if(hp <= 0 && dead == false)
{
	dead = true;
	show_debug_message("DIED");
	for(i = 0; i <= 30; i ++)
	{
		instance_create_layer(x, y, "Instances", ob_particle_died);
	}
}

//respawn
if(dead)
{
	respawn --;
	image_speed = 0;
	sprite_index = sp_player_died;
	
	if(respawn <= 0)
	{
		dead = false;
		respawn = respawn_time;
		room_goto(main_menu);
	}
}


