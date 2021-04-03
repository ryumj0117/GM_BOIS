var d_grid = global.ds_depth_grid;
var inst_num = instance_number(pr_object);

ds_grid_resize(d_grid, 2, inst_num);

var yy = 0;

with(pr_depth)
{
	d_grid[# 0, yy] = id;
	d_grid[# 1, yy] = y;
	
	yy ++;
}

ds_grid_sort(d_grid, 1, true);

var inst;

yy = 0;

repeat(inst_num)
{
	inst = d_grid[# 0, yy];
	
	with(inst)
	{
		draw_self();
	}
	
	yy ++;
}