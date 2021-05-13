if(place_meeting(x, y, ob_cursor))
{
	
	if(mouse_check_button(mb_left))
	{
		image_index = 2;	
	}
	else
	{
		image_index = 1;
	}
	
	if(mouse_check_button_released(mb_left))
	{
		room_goto(test);
	}
		
}
else
{
	image_index = 0;	
}