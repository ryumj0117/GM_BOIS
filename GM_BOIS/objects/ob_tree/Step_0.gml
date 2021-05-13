event_inherited();

//when break
if(broken)
{
	global.tree_count -= 1;
	broken = false;
}

//regenerate sap
if(sap == true) cool_timer = 0;

cool_timer ++;
if(cool_timer >= (cooldown * room_speed))
{
	cool_timer = 0;
	if(sap == false)
	{
		sap = true;
		image_alpha = 1;
	}	
}

//particle
if(hp <= 0)
{
	if(!p_on) 
	{
		instance_create_layer(x, y, "Instances", ob_wood);
		for(i = 0; i <= 10; i ++)
		{
			instance_create_layer(x, y, "Instances", ob_particle);
		}
		
		for(i = 0; i <= 5; i ++)
		{
			instance_create_layer(x, y, "Instances", ob_particle_green);
		}
	}
	p_on = true;
}