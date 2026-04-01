with (instance_create(random_range(0, room_width), random_range(0, room_height), obj_explosion)) {
	image_xscale = 3
	image_yscale = 3
}
//audio_play_sound(sfx_explode, 0, false, 0.05)
alarm[2] = alarm_len
alarm_len -= 1
alarm_len = max(alarm_len, 1)