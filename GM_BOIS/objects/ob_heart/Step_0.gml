x = lerp(x, ob_player.x, 0.03);
y = lerp(y, ob_player.y - 150, 0.03);	


if(ob_player.hp >= 0)
{
	image_index = ob_player.hp_max / 85 * ob_player.hp;
}

//fade out
if(keyboard_check(ord("h")))
{
	if(timer > 0)
	{
		timer --;
	}
	image_alpha = alpha - timer / room_speed;
}

//fade in
if(keyboard_check(ord("h")))
{
	if(timer < room_speed)
	{
		timer ++;
	}
	image_alpha = alpha - timer / room_speed;
}


//heart effect
/*
if(ob_player.hp >= 10 && ob_heart.image_alpha > 0)
{
	color = make_colour_rgb(150, 150, 250);
	scale = lerp(scale, 1.2, 0.05);
	bg_alpha = lerp(bg_alpha, 0, 0.05);

	if(bg_alpha <= 0) 
	{
		if(scale >= 1.2) 
		{
			scale = 0;
			bg_alpha = alpha*10;
		}
	}
}
else if(ob_player.hp <= 1 && ob_heart.image_alpha > 0)
{
	color = c_red;
	scale = lerp(scale, 1.2, 0.15);
	bg_alpha = lerp(bg_alpha, 0, 0.15);

	if(bg_alpha <= 0) 
	{
		if(scale >= 1.2) 
		{
			scale = 0;
			bg_alpha = alpha*10;
		}
	}
}
else if(ob_player.hp <= 2 && ob_heart.image_alpha > 0)
{
	color = c_red;
	scale = lerp(scale, 1.2, 0.1);
	bg_alpha = lerp(bg_alpha, 0, 0.1);

	if(bg_alpha <= 0) 
	{
		if(scale >= 1.2) 
		{
			scale = 0;
			bg_alpha = alpha*10;
		}
	}
}
else if(ob_player.hp <= 0)
{
	bg_alpha = 0;
}
else
{
	bg_alpha = 0;
}
*/

else if(ob_player.hp <= 2 && ob_heart.image_alpha > 0)
{
	color = c_red;
	scale = lerp(scale, 1.2, 0.1);
	bg_alpha = lerp(bg_alpha, 0, 0.1);

	if(bg_alpha <= 0) 
	{
		if(scale >= 1.2) 
		{
			scale = 0;
			bg_alpha = alpha*10;
		}
	}
}
else if(ob_player.hp <= 0)
{
	bg_alpha = 0;
}
else
{
	bg_alpha = 0;
}