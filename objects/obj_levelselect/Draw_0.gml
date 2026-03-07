draw_set_font(fnt_basic);
draw_set_colour(c_white);
draw_set_halign(fa_center);

for (var i = 0; i < array_length(room_array); i++)
{
	var drawx = 100 + (i mod 4) * 100;
	var drawy = 100 + floor(i / 4) * 100;
	if (i == hovernumber)
		draw_sprite_ext(icon_array[i], 0, drawx, drawy, 1, 1, 0, c_gray, 1);
	else
		draw_sprite_ext(icon_array[i], 0, drawx, drawy, 1, 1, 0, c_white, 1);
		
	draw_text(drawx+30, drawy + 70, name_array[i]);
}
