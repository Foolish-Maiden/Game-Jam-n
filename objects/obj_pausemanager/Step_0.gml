if (global.paused){
	instance_deactivate_all(true);
	instance_activate_object(obj_screen);
	
	if (keyboard_check(ord("Q"))){
		global.paused = false;
		room_fadeto(room_levelselect);
	}
}
else
	instance_activate_all();


if (room != room_levelselect && room != room_titlescreen && room != room_credits){
	if (mouse_check_button_pressed(mb_left) && mouse_x > 1366-200 && mouse_x < 1366-100 && mouse_y > 768-100 && mouse_y < 768){
		obj_screen.do_pausestuff();
		audio_play_sound(sfx_play,1,0);
	}
}
