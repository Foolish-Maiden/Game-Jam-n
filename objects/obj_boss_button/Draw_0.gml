if (insidemouse){
	draw_sprite_ext(sprite_index,0,x,y, image_xscale, image_yscale, 0, c_gray, image_alpha);
	
	if (mouse_check_button_pressed(mb_left)	&& !instance_exists(obj_fadeout))
		room_fadeto(room_bossfight);

}
else
	draw_sprite_ext(sprite_index,0,x,y, image_xscale, image_yscale, 0, c_white, image_alpha);