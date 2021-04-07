var d_grid = ds_depthgrid;
var inst_num = instance_number(ob_parent);

ds_grid_resize(d_grid, 2, inst_num);

var yy = 0;
with(ob_parent)
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
		event_perform(ev_draw, 0);
	}
	
	yy ++;
}
