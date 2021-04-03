var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));

var input_x = right-left;
var input_y = down-up;

if(input_x != 0 && place_free(x + w_speed, y))
{
	x_speed = input_x*w_speed*delta_time;
}
if(input_y != 0 && place_free(x, y + w_speed))
{
	y_speed = input_y*w_speed*delta_time;
}

//collision
if(place_meeting(x + x_speed, y, ob_wall))
{
	x_speed = 0;
}
if(place_meeting(x, y + y_speed, ob_wall))
{
	y_speed = 0;
}

//slippery stop
x_speed -= x_speed / 15;
y_speed -= y_speed / 15;

//actual move
x += x_speed;
y += y_speed;

//move animation
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

//sprint
if(keyboard_check_pressed(vk_shift))
{
	w_speed += percent(70);
}
else if(keyboard_check_released(vk_shift))
{
	w_speed = global.walk_speed;
}

//test
if(place_meeting(x, y, ob_cursor) && mouse_check_button(mb_middle))
{
	m_on = true;
}
if(!mouse_check_button(mb_middle))
{
	m_on = false;
}
if(m_on)
{
	ob_cursor.visible = false;
	
	image_xscale = lerp(image_xscale, 0.6, 0.5);
	image_yscale = lerp(image_yscale, 1.2, 0.5);
	
	x = lerp(x, mouse_x, 0.05);
	y = lerp(y, mouse_y, 0.05);
}
else
{
	ob_cursor.visible = true;
	image_xscale = lerp(image_xscale, 1, 0.5);
	image_yscale = lerp(image_yscale, 1, 0.5);
}

//testing death
if(hp <= 0 && dead == false)
{
	dead = true;
	show_debug_message("seems like you are died");
}

//timer
/*
timer ++;
if(timer > room_speed)
{
	do stuffs
}
*/