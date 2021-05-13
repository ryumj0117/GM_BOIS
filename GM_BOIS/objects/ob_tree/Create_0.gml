event_inherited();

breakable = true;
hp = 30;

sap = true;

cooldown = 30;
cool_timer = 0;

broken = false;

p_on = false;


for(i = 0; i <= 20; i ++)
{
	instance_create_layer(x, y, "Instances", ob_particle_green);
}