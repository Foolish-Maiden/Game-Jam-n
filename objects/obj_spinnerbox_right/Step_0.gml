event_inherited()
if global.testing = true && start_test = 0 {
	start_test = 1
}
if start_test = 1 {
	start_test = 2
	original_direction = facing
}
if global.testing = false && start_test = 2 {
	facing = original_direction
	image_angle = facing
	start_test = 0
}

//Cat interactions
var collided_with = instance_place(x, y, obj_cat)
if (collided_with != noone) {
	if !colliding_with_cat {
		colliding_with_cat = true
		
		collided_with.movement_direction = facing;
		
		if (facing = FACING.UP) {
			collided_with.x = x
			facing = FACING.RIGHT
		} else if (facing = FACING.DOWN) {
			collided_with.x = x
			facing = FACING.LEFT
		} else if (facing = FACING.LEFT) {
			collided_with.y = y
			facing = FACING.UP
		} else if (facing = FACING.RIGHT) {
			collided_with.y = y
			facing = FACING.DOWN
		}
		image_angle = facing
		spin_timer = spin_length
		spin = true

	    if (!instance_position(x, y, obj_poof)){
	        instance_create(x, y, obj_poof);
			audio_play_sound(sfx_poof,1,0);	
		}
	}
} else {
	colliding_with_cat = false
}