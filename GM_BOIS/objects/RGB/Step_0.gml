if(r > 0 && b <= 0)
{
	r-=color_speed;
	g+=color_speed;
}
if(g > 0 && r <= 0)
{
	g-=color_speed;
	b+=color_speed;
}
if(b > 0 && g <= 0)
{
	r+=color_speed;
	b-=color_speed;
}

player.image_blend = make_colour_rgb(r, g, b);
