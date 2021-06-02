event_inherited();

x += x_speed;
y += y_speed;

x_speed -= x_speed / 10;
y_speed -= y_speed / 10;


if(distance_to_object(ob_player) < ob_player.item_distance && ds_list_size(inv) < 6)
{
	follow(ob_player.x, ob_player.y, 2);
}

if(distance_to_object(ob_player) <= 0 && taken == false && ds_list_size(inv) < 6)
{
	taken = true;
	item_info = "leaf";
}

if(taken = true)
{		
	image_alpha -= image_alpha / 5;
		
	image_xscale -= 0.01;
	image_yscale -= 0.01;
	
	if(image_alpha <= 0.01)
	{
		taken = false;
		with(ob_player)
		{
			f_color = c_white;
			f_alpha = 1;
			for(i = 0; i <= 10; i ++)
			{
				instance_create_layer(x, y, "Instances", ob_particle);
			}
			juice_up();
		}
		ds_list_add(inv, "Leaf");
		instance_destroy();	
	}
}