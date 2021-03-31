x += (x_to - x)/25;
y += (y_to - y)/25;

if(target != noone)
{
	x_to = target.x;
	y_to = target.y-50;
}

var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
camera_set_view_mat(camera, vm);