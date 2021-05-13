event_inherited();

if(broken)
{
	global.bush_count -= 1;
	broken = false;
}

//particle
if(hp <= 0)
{
	instance_create_layer(x, y, "Instances", ob_particle_green);
}

