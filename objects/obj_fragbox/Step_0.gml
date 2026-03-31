event_inherited()
if (used == true){
	instance_deactivate_object(self);
	self.visible = false;
	exit;
}
//Cat interactions
var collided_with = instance_place(x, y, obj_cat)
if (collided_with != noone){
	if (facing = FACING.UP)
		collided_with.x = x;

	if (facing = FACING.DOWN)
		collided_with.x = x;

	if (facing = FACING.LEFT)
		collided_with.y = y;
		
	if (facing = FACING.RIGHT)
		collided_with.y = y;

	collided_with.movement_direction = facing;

    if (!instance_position(x, y, obj_poof)){
        instance_create(x, y, obj_poof);
		audio_play_sound(sfx_poof,1,0);	
	}
	used = true;
}
