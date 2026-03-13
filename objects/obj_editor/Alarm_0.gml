if (text_i <= string_length(current_villain_taunttext))
{
	var next_char = string_char_at(current_villain_taunttext, text_i);
	if (next_char != " ") {
		audio_play_sound(sfx_eviltalk,1, false, 0.5, 0, random_range(0.25, 0.35));
	}
    real_taunttext += next_char;
	text_i++;
	if (next_char == "." || next_char == "?" || next_char == "!") {
		alarm[0] = textspeed * 15;
	} else {
		alarm[0] = textspeed;
	}

}

