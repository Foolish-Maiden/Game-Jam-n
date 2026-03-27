draw_set_font(fnt_basic);
draw_set_colour(c_white);
draw_set_halign(fa_center);

if (hover_tut == true)
	draw_sprite_ext(spr_tutorialbutton, 0, 100, 30,1,1,0,c_gray,1)
else
	draw_sprite_ext(spr_tutorialbutton, 0, 100, 30,1,1,0, c_white ,1)

for (var i = 0; i < array_length(room_array); i++)
{
	var drawx = 100 + (i mod linecount) * 100;
	var drawy = 100 + floor(i / linecount) * 100;
	if (i == hovernumber)
		draw_sprite_ext(icon_array[i], i, drawx, drawy, 1, 1, 0, c_gray, 1);
	else{
		if (global.LevelDoneStatus[i] == 1)
			draw_sprite_ext(icon_array[i], i, drawx, drawy, 1, 1, 0, c_green, 1);
		else
			draw_sprite_ext(icon_array[i], i, drawx, drawy, 1, 1, 0, c_white, 1);
	}
	
	if (global.LevelDoneStatus[i] == 1)
		draw_set_colour(c_green);
	else
		draw_set_colour(c_white);

		
	draw_text(drawx+30, drawy + 70, name_array[i]);
	
}
