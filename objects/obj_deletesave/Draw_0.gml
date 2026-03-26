if (insidemouse){
	draw_sprite_ext(sprite_index,0,x,y, image_xscale, image_yscale, 0, c_gray, image_alpha);
	
	if (mouse_check_button_pressed(mb_left)	&& !instance_exists(obj_fadeout)){
		ini_open("SaveFile.ini");
		
		//delete save
		ini_section_delete("Complete Status");
		
		//re-read save
		instance_destroy(obj_savemanager);
		instance_create(x,y,obj_savemanager);
		instance_create(x,y,obj_explosion);
		
		ini_close();
	}
}
else
	draw_sprite_ext(sprite_index,0,x,y, image_xscale, image_yscale, 0, c_white, image_alpha);
