timer ++;
if(timer >= room_speed) timer = 0;

random_set_seed(current_second * timer);

//spawning trees
if(global.tree_count < tree_max)
{	
	for(global.tree_count = global.tree_count; global.tree_count <= tree_max; global.tree_count ++)
	{
		rand_x = random_range(0, room_width);
		rand_y = random_range(0, room_height);
		
		instance_create_layer(rand_x, rand_y, ob_player.layer, ob_tree);
	}
}

//spawning bushes
if(global.bush_count < bush_max)
{	
	for(global.bush_count = global.bush_count; global.bush_count <= bush_max; global.bush_count ++)
	{
		rand_x = random_range(0, room_width);
		rand_y = random_range(0, room_height);
		
		instance_create_layer(rand_x, rand_y, ob_player.layer, ob_bush);
	}
}