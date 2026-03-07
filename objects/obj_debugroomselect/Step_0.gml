if (keyboard_check_pressed(vk_down))
	selection++;
	
if (keyboard_check_pressed(vk_up))
	selection--;

	
if (keyboard_check_pressed(ord("Z")))
	scr_roomchange(room_array[selection]);