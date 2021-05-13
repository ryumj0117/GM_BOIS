event_inherited();

broken = false;

breakable = true;
hp = 10;

p_on = false;

for(i = 0; i <= 20; i ++)
{
	instance_create_layer(x, y, "Instances", ob_particle_green);
}