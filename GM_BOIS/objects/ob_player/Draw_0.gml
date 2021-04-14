draw_self();

//flash
if(f_alpha > 0)
{
	shader_set(sh_flash);
	
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, f_color, f_alpha);
	
	shader_reset();
}

//hp bar
draw_sprite(hp_bar_bg, 0, hp_bar_x, hp_bar_y);
draw_sprite_stretched(sp_hp, 0, hp_bar_x, hp_bar_y, 240 / (hp_max + 1) * hp, hp_bar_height);
draw_sprite(hp_bar_border, 0, hp_bar_x, hp_bar_y);

//sap bar
draw_sprite(hp_bar_bg, 0, sap_bar_x, sap_bar_y);
draw_sprite_stretched(sp_sap, 0, sap_bar_x, sap_bar_y, 240 / sap_max * sap, sap_bar_height);
draw_sprite(hp_bar_border, 0, sap_bar_x, sap_bar_y);
