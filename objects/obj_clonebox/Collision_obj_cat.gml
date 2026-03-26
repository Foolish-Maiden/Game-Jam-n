if (touched == false) {
	with instance_create(x,y,obj_cat) {
		movement_direction = other.facing;
	}
	touched = true;
}

if (!instance_position(x, y, obj_poof)) {
	instance_create(x, y, obj_poof);
	audio_play_sound(sfx_poof,1,0);	
}