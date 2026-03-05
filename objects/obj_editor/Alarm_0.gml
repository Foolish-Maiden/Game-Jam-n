if (text_i <= string_length(villain_taunttext))
{
    real_taunttext += string_char_at(villain_taunttext, text_i);
	text_i++;
    alarm[0] = textspeed;
}

