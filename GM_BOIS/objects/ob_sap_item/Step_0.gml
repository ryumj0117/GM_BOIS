event_inherited();

x += x_speed;
y += y_speed;

x_speed -= x_speed / 10;
y_speed -= y_speed / 10;


if(distance_to_object(ob_player) < ob_player.sap_distance)
{
	follow(ob_player.x, ob_player.y, 3);
}

if(distance_to_object(ob_player) <= 0 && gathered == false)
{	
	fadding = true;
}

if(fadding)
{
	image_alpha -= image_alpha / 5;
		
	image_xscale -= 0.01;
	image_yscale -= 0.01;
	
	if(image_alpha <= 0.01)
	{
		gathered = true;
		if(ob_player.player_sap < ob_player.sap_max)
		{
			with(ob_player)
			{
				player_sap ++;
				
				f_color = c_lime;
				f_alpha = 1;
				juice_up();
			}
			instance_destroy();	
		}
		instance_destroy();	
	}
}