if (pressed == false && instance_position(mouse_x, mouse_y, id) && mouse_check_button(mb_left)){
	pressed = true;
	audio_play_sound(sfx_select,0,0);
}

if (pressed && !audio_is_playing(sfx_select) && !instance_exists(obj_fadeout)) {
	room_fadeto(room_levelselect);
	global.paused = false;
}

