event_inherited();

if(hp <= 0)
{
	global.tree_count -= 1;
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