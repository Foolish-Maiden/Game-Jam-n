//Cat interactions
var collided_with = instance_place(x, y, obj_cat)
if (collided_with != noone){
	if (shoot_angle = FACING.UP)
		collided_with.x = x;

	if (shoot_angle = FACING.DOWN)
		collided_with.x = x;

	if (shoot_angle = FACING.LEFT)
		collided_with.y = y;
		
	if (shoot_angle = FACING.RIGHT)
		collided_with.y = y;

	collided_with.movement_direction = shoot_angle;

    if (!instance_position(x, y, obj_poof)){
        instance_create(x, y, obj_poof);
		audio_play_sound(sfx_poof,1,0);	
	}
}
