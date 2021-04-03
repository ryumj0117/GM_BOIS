x = lerp(x, ob_player.x, 0.03);
y = lerp(y, ob_player.y - 150, 0.03);

if(ob_player.hp >= 0)
{
	image_index = ob_player.hp;
}