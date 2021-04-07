gpu_set_fog(true, color, 0, 1);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale*scale, image_yscale*scale, 0, 0, bg_alpha);
gpu_set_fog(false, c_white, 0, 0);
draw_self();