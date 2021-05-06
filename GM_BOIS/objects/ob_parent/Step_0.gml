//left click event
if(clicked && distance_to_object(ob_player) < ob_player.break_distance && variable_instance_exists(other, "hp"))
{
	if(breakable)
	{
		juice_up();
		
		//flash
		f_color = c_white;
		f_alpha = 1;
		
		hp -= ob_player.damage;
	}
}
//break
if(variable_instance_exists(other, "hp"))
{
	if(hp <= 0)
	{
		instance_destroy();
	}
}


//right click event
if(sapped && distance_to_object(ob_player) < ob_player.break_distance && variable_instance_exists(other, "sap"))
{
	if(breakable && ob_player.sap < ob_player.sap_max && sap == true)
	{
		juice_up();
		
		//flash
		f_color = c_yellow;
		f_alpha = 1;
		
		if(sap == true) 
		{
			ob_player.sap += 1;
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