/*
var sx = (room_width/2)-mouse_x;
var sy = (room_height/2)-mouse_y;

show_debug_message(sx);
show_debug_message(sy);
*/

var sx = 50;
var sy = 25;

gpu_set_fog(true, c_black, 0, 1);
draw_sprite_pos(sprite_index, image_index, 
				x-(sprite_width/4)-sx, 
				y-sy, 
				x+(sprite_width/4)-sx, 
				y-sy,
				x+(sprite_width/4), 
				y, 
				x-(sprite_width/4), 
				y,
				0.5);
gpu_set_fog(false, c_white, 0, 0);

draw_self();