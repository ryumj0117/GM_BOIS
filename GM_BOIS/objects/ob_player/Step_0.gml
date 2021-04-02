var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));

var input_x = right-left;
var input_y = down-up;

if(input_x != 0)
{
	x_speed = input_x*w_speed*delta_time;
}
if(input_y != 0)
{
	y_speed = input_y*w_speed*delta_time;
}

//collision and smooth stop
if(place_meeting(x + x_speed, y, all))
{
	x_speed = 0;
}
else
{
	x_speed -= x_speed / 15;
}
if(place_meeting(x, y + y_speed, all))
{
	y_speed = 0;
}
else
{
	y_speed -= y_speed / 15;	
}

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


//timer
/*
timer ++;
if(timer > room_speed)
{
	do stuffs
}
*/