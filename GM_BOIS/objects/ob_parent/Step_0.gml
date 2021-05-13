//left click event
if(clicked && !ob_player.dead && distance_to_object(ob_player) < ob_player.break_distance && variable_instance_exists(other, "hp"))
{
	with(other)
	{
		
	if(breakable && other.hp > 0)
	{
		juice_up();
		
		//flash
		f_color = c_white;
		f_alpha = 1;
		
		hp -= ob_player.damage;
	}
	
	}
}
//break
with(other)
{
	if(variable_instance_exists(id, "hp") && hp <= 0)
	{
		image_alpha -= image_alpha / 10;
		
		image_xscale += 0.01;
		image_yscale -= 0.02;
		
		if(image_alpha <= 0.01)
		{
			broken = true;
			instance_destroy();	
		}
	}
}


//right click event
if(sapped && !ob_player.dead && distance_to_object(ob_player) < ob_player.break_distance && variable_instance_exists(other, "sap"))
{	
	if(breakable && sap == true)
	{
		instance_create_layer(x, y, "Instances", ob_sap_item);
		
		for(i = 0; i <= 10; i ++)
		{
			instance_create_layer(x, y, "Instances", ob_particle);
		}
		
		juice_up();
		
		//flash
		f_color = c_yellow;
		f_alpha = 1;
		
		if(sap == true) 
		{
			sap = false;
			image_alpha = 0.3;
		}
	}
}


//flash down
if(f_alpha > 0)
{
	f_alpha -= 0.05;
}

juice_down();
clicked = false;
sapped = false;