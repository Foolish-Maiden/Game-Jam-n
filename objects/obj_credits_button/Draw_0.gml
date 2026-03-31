
if (insidemouse){
	draw_sprite_ext(sprite_index,0,x,y, image_xscale, image_yscale, 0, #1b3b70, image_alpha);
	
	if (mouse_check_button_pressed(mb_left)	&& !instance_exists(obj_fadeout))
		room_fadeto(room_credits);

}
else
	draw_sprite_ext(sprite_index,0,x,y, image_xscale, image_yscale, 0, #87b1f5, image_alpha);

draw_set_colour(c_black);
draw_set_halign(fa_center);
