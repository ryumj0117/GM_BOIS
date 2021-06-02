if(on) 
{
	var len = ds_list_size(inv);
	for(var i = 0; i < len; i ++)
	{
		draw_sprite_ext(sp_inventory, 0, ob_camera.x + 750, ob_camera.y-350 + (150*i), 1, 1, 0, c_white, image_alpha);
		if(inv[| i] == "Leaf") draw_sprite_ext(sp_leaf, 0, ob_camera.x + 750, ob_camera.y-380 + (150*i), 1, 1, 0, c_white, image_alpha);
		else if(inv[| i] == "Wood") draw_sprite_ext(sp_wood, 0, ob_camera.x + 750, ob_camera.y-380 + (150*i), 0.8, 0.8, 0, c_white, image_alpha);
	}
}