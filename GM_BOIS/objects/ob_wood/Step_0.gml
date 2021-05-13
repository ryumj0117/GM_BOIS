event_inherited();

x += x_speed;
y += y_speed;

x_speed -= x_speed / 10;
y_speed -= y_speed / 10;


if(distance_to_object(ob_player) < ob_player.item_distance)
{
	follow(ob_player.x, ob_player.y, 2);
}

if(distance_to_object(ob_player) <= 0)
{
	taken = true;
}

if(taken = true)
{		
	image_alpha -= image_alpha / 5;
		
	image_xscale -= 0.01;
	image_yscale -= 0.01;
	
	if(image_alpha <= 0.01)
	{
		taken = false;
		ob_player.item_wood ++;
		show_debug_message("wood : " + string(ob_player.item_wood));
		instance_destroy();	
	}
}