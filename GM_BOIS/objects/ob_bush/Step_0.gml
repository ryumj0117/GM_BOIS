event_inherited();

if(broken)
{
	global.bush_count -= 1;
	broken = false;
}

//particle
if(hp <= 0)
{
	if(!p_on) 
	{
		instance_create_layer(x, y, "Instances", ob_leaf);
		
		for(i = 0; i <= 5; i ++)
		{
			instance_create_layer(x, y, "Instances", ob_particle_green);
		}
	}
	p_on = true;
}

