if (other.movement_direction == FACING.UP)
	facing = FACING.DOWN

if (other.movement_direction == FACING.DOWN)
	facing = FACING.UP

if (other.movement_direction == FACING.LEFT)
	facing = FACING.RIGHT
	
if (other.movement_direction == FACING.RIGHT)
	facing = FACING.LEFT

other.movement_direction = facing;

if (!instance_position(x, y, obj_poof)) {
	instance_create(x, y, obj_poof);
	audio_play_sound(sfx_poof,1,0);	
}