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
draw_sprite_stretched(sp_sap, 0, sap_bar_x, sap_bar_y, 240 / (sap_max + 1) * player_sap, sap_bar_height);
draw_sprite(hp_bar_border, 0, sap_bar_x, sap_bar_y);

//inventory
/*
for(var i=0; i<ds_list_size(inv); i++)
{
	draw_text_transformed(ob_camera.x + 700, ob_camera.y-500 + (70*i), inv[| i], 5, 5, 0);
}
*/


if(dev) draw_text_transformed(ob_camera.x - 300, ob_camera.y - 500, "FPS : " + string(fps_real), 3, 3, 0);

