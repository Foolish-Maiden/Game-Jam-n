if (global.testing == false){
	pressed = false;
	image_index = 0;
}

if (place_meeting(x,y,obj_cat) && !pressed){
	pressed = true;
	audio_play_sound(sfx_delete,1,0)
	image_index = 1;
	
	with (obj_lazer_wall) {
		check_my_switches()
	}
	obj_levelcomplete.check_my_switches()
}
