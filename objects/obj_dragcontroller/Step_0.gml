with (global.dragid){
	x = round((mouse_x - 32) / 64) * 64 + 32;
	y = round((mouse_y - 32) / 64) * 64 + 32;
}

if (mouse_check_button_released(mb_left)){
	global.dragid = noone;
	instance_destroy();
}
