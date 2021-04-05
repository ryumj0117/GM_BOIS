x = lerp(x, ob_player.x, 0.03);
y = lerp(y, ob_player.y - 150, 0.03);

if(ob_player.hp >= 0)
{
	image_index = ob_player.hp;
}

//testing fade in / out
if(ob_player.m_on == false)
{
	if(timer > 0)
	{
		timer --;
	}
	image_alpha = alpha - timer / room_speed;
}
if(ob_player.m_on == true)
{
	if(timer < room_speed)
	{
		timer ++;
	}
	image_alpha = alpha - timer / room_speed;
}


