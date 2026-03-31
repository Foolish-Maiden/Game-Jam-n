if (text_i <= string_length(current_villain_taunttext))
{
	var next_char = string_char_at(current_villain_taunttext, text_i);
	var speed_offset = 0
	if next_char == "." || next_char == "!" || next_char == "?" {
		speed_offset = 15
	} else if next_char == "," {
		speed_offset = 7
	}
	if (next_char != " ") {
		audio_play_sound(sfx_eviltalk,1, false, 0.2, 0, random_range(0.25, 0.35));
	}
    real_taunttext += next_char;
	text_i++;
	alarm[0] = textspeed + speed_offset;
}

