hovernumber = -4;

for (var i = 0; i < array_length(room_array); i++)
{
	var xx = 100 + (i mod 4) * 100;
	var yy = 100 + floor(i / 4) * 100;

	var left = xx;
	var right = xx + sprite_get_width(icon_array[i]);
	var top = yy;
	var bottom = yy + sprite_get_height(icon_array[i]);

	if (mouse_x > left && mouse_x < right && mouse_y > top && mouse_y < bottom)
	{
		hovernumber = i;
		if (mouse_check_button_pressed(mb_left) && !instance_exists(obj_fadeout))
			room_fadeto(room_array[i])
	}
}
