hovernumber = -4;

for (var i = 0; i < array_length(room_array); i++)
{
	var xx = 100 + (i mod linecount) * 100;
	var yy = 100 + floor(i / linecount) * 100;

	var left = xx;
	var right = xx + sprite_get_width(icon_array[i]);
	var top = yy;
	var bottom = yy + sprite_get_height(icon_array[i]);

	if (mouse_x > left && mouse_x < right && mouse_y > top && mouse_y < bottom){
		hovernumber = i;
		if (mouse_check_button_pressed(mb_left) && !instance_exists(obj_fadeout)){
			audio_stop_all();
			obj_room_manager.set_room(room_array[i])
		}
	}
}

var left = 100;
var right = 100 + sprite_get_width(spr_tutorialbutton);
var top = 30;
var bottom = 30 + sprite_get_height(spr_tutorialbutton);

if (mouse_x > left && mouse_x < right && mouse_y > top && mouse_y < bottom){
	hover_tut = true;
	
	if (mouse_check_button_pressed(mb_left) && !instance_exists(obj_fadeout)){
		audio_stop_all();
		room_fadeto(room_puzzle_tutorial1);
	}
}
else
	hover_tut = false;