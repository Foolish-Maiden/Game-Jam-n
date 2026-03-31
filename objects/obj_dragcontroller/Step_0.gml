with (dragid){
	x = round((mouse_x - 32) / 64) * 64 + 32 + other.dragoffsetX;
	y = round((mouse_y - 32) / 64) * 64 + 32;
}

if (mouse_check_button_released(mb_left)){
	with (dragid) {
		if place_meeting(x, y, obj_par_block_placements) || x < 250 || x > room_width || y < 0 {
			x = other.init_x
			y = other.init_y
			audio_play_sound(sfx_delete,1,0);
		}
	}
	
	
	dragid = noone;
	instance_destroy();
}
