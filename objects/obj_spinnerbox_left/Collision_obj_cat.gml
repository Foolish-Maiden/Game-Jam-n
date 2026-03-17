/*if (facing = FACING.UP)
	other.x = x;

if (facing = FACING.DOWN)
	other.x = x;

if (facing = FACING.LEFT)
	other.y = y;
	
if (facing = FACING.RIGHT)
	other.y = y;

other.movement_direction = facing;

if (!instance_position(x, y, obj_poof)) {
	obj_editor.boxtouched_count++;
	instance_create(x, y, obj_poof);
	audio_play_sound(sfx_poof,1,0);	
}*/