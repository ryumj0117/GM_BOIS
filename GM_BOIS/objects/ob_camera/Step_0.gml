x += (x_to - x) / cam_speed;
y += (y_to - y) / cam_speed;

if(target == ob_cursor)
{
	x_to = ob_player.x + (ob_cursor.x - x) * sight_range;
	y_to = ob_player.y + (ob_cursor.y - y) * sight_range;
}
else if(target != noone)
{
	x_to = target.x;
	y_to = target.y-50;
}

x = clamp(x, camera_x/2, room_width - camera_x/2);
y = clamp(y, camera_y/2, room_height - camera_y/2);

var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
var pm = matrix_build_projection_ortho(camera_x, camera_y, 1, 10000);

camera_set_view_mat(camera, vm);
camera_set_proj_mat(camera, pm);

//gui
ob_player.hp_bar_x = x - 900;
ob_player.hp_bar_y = y - 500;

ob_player.sap_bar_x = x - 900;
ob_player.sap_bar_y = y - 430;
