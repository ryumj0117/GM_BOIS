// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function follow(target_x, target_y)
{
	x = lerp(x, target_x, 0.05);
	y = lerp(y, target_y, 0.05);
}