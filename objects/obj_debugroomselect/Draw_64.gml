draw_set_font(fnt_basic);

for (var i = 0; i < array_length(room_array); i += 1)
{
	var stringery = string_replace(string(room_array[i]), "ref room ", "");
	draw_set_halign(fa_center);
    draw_text(room_width/2, 102 + i*20, stringery);
	
	draw_set_halign(fa_left);
	if (i == selection)
		draw_text(room_width/2 - string_width(stringery)/2 - 20, 102 + i*20, ">");
}

