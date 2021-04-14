if(global.tree_count < global.tree_max)
{
	for(global.tree_count = 0; global.tree_count <= global.tree_max; global.tree_count ++)
	{
		rand_x = random(room_width);
		rand_x = random(room_height);
		x = int64(rand_x);
		y = int64(rand_y);
		
		if(!place_meeting(x, y, all))
		{
			instance_create_layer(100, 1000, ob_player.layer, ob_tree);
		}
	}
}