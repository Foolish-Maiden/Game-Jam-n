if (insidemouse){
	draw_sprite_ext(sprite_index,0,x,y, image_xscale, image_yscale, 0, c_gray, image_alpha);
	
	if (mouse_check_button_pressed(mb_left)	&& !instance_exists(obj_fadeout)){
		global.voice_enable = !global.voice_enable;
		
		ini_open("SaveFile.ini");
		ini_write_real("Options", "Voice", global.voice_enable);
		ini_close();
	}

}
else
	draw_sprite_ext(sprite_index,0,x,y, image_xscale, image_yscale, 0, c_white, image_alpha);

if (global.voice_enable)
	draw_text(x+sprite_width/2, y+sprite_height/2, "Voice On!");
if (!global.voice_enable)
	draw_text(x+sprite_width/2, y+sprite_height/2, "Voice Off!");