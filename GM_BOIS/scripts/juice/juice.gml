function juice_up()
{
	if(mouse_check_button_pressed(mb_left))
	{
		image_xscale = lerp(image_xscale, 0.5, 0.5);
		image_yscale = lerp(image_yscale, 1.5, 0.5);
		
		audio_play_sound(sound_bush, 0, 0);
	}
}
function juice_down()
{	
	image_xscale = lerp(image_xscale, 1, 0.05);
	image_yscale = lerp(image_yscale, 1, 0.05);
}