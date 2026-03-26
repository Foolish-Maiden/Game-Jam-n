if (other.movement_direction == FACING.LEFT || other.movement_direction == FACING.RIGHT) {
	if (facing = FACING.UP) {
		other.x = x;
		other.y = y - obj_editor.gridsize;
		if (!instance_position(x, y, obj_poof)){
	        instance_create(x, y, obj_poof);
			audio_play_sound(sfx_poof,1,0);	
		}
	}

	if (facing = FACING.DOWN) {
		other.x = x;
		other.y = y + obj_editor.gridsize;
		if (!instance_position(x, y, obj_poof)){
	        instance_create(x, y, obj_poof);
			audio_play_sound(sfx_poof,1,0);	
		}
	}
} else {
	if (facing = FACING.LEFT) {
		other.y = y;
		other.x = x - obj_editor.gridsize;
		if (!instance_position(x, y, obj_poof)){
	        instance_create(x, y, obj_poof);
			audio_play_sound(sfx_poof,1,0);	
		}
	}
	
	if (facing = FACING.RIGHT) {
		other.y = y;
		other.x = x + obj_editor.gridsize;
		if (!instance_position(x, y, obj_poof)){
	        instance_create(x, y, obj_poof);
			audio_play_sound(sfx_poof,1,0);	
		}
	}
}