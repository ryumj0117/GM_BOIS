draw_self();

if(f_alpha > 0)
{
	shader_set(sh_flash);
	
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, f_color, f_alpha);
	
	shader_reset();
}