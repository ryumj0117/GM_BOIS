function juice_up()
{	
	image_xscale = lerp(image_xscale, 0.5, 0.5);
	image_yscale = lerp(image_yscale, 1.5, 0.5);
}

function juice_down()
{	
	image_xscale = lerp(image_xscale, 1, 0.05);
	image_yscale = lerp(image_yscale, 1, 0.05);
}