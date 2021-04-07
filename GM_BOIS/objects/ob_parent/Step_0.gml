//click event
if(clicked)
{
	if(breakable)
	{
		juice_up();
		
		//flash
		f_color = c_white;
		f_alpha = 1;
		
		if(variable_instance_exists(other, "hp"))
		{
			hp -= ob_player.damage;
		}
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

//flash down
if(f_alpha > 0)
{
	f_alpha -= 0.05;
}

juice_down();
clicked = false;