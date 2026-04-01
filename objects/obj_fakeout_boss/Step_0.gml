if (mouse_check_button_pressed(mb_left)) {
	if text_i >= string_length(array_get(text_array, text_select)) {
		text_select++;
	    text_i = 1;
	    real_taunttext = "";
		alarm[0] = textspeed;
		audio_stop_all()
		if (text_select <= array_length(aud_array)) {
			audio_play_sound(aud_array[text_select], 0, false);
		}
		if (text_select = array_length(text_array)-1){
			textspeed = 7;
			alarm[1] = 50;	
		}
	}
}
