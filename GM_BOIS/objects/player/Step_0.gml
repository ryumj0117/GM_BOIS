left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));

hspeed = (right-left)*w_speed*delta_time;
vspeed = (down-up)*w_speed*delta_time;

if(keyboard_check_pressed(vk_shift))
{
	w_speed += percent(70);
}
else if(keyboard_check_released(vk_shift))
{
	w_speed = global.walk_speed;
}

