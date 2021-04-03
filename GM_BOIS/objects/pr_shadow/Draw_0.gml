/*
var sx = (room_width/2)-mouse_x;
var sy = (room_height/2)-mouse_y;

show_debug_message(sx);
show_debug_message(sy);
*/

with(pr_object)
{
	var sx = 40;
	var sy = 80;

	gpu_set_fog(true, c_black, 0, 1);
				
	draw_sprite_pos(sprite_index, image_index, 
					x-(sprite_width/2)+sx, 
					y-sy, 
					x+(sprite_width/2)+sx, 
					y-sy,
					x+(sprite_width/2), 
					y, 
					x-(sprite_width/2), 
					y,
					0.5);
}

gpu_set_fog(false, c_white, 0, 0);