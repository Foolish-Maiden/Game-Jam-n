if (do_move){
	switch (movement_direction){
		case FACING.UP:
			y -= movespeed;
		break;
		
		case FACING.DOWN:
			y += movespeed;
		break;
		
		case FACING.LEFT:
			x -= movespeed;
			image_xscale = -1;
		break;
		
		case FACING.RIGHT:
			x += movespeed;
			image_xscale = 1;
		break;
	}
}

var is_wall = instance_place(x, y, obj_solid)

if is_wall != noone {
	alarm[0] = 1
	do_move = false;
}

if (room == room_bossfight){
	var pad = 100;
	
	if (x > room_width+pad && !clippedout){
		x = -pad;
		clippedout = true;	
	}

	if (x < -pad && !clippedout){
		x = room_width+pad;
		clippedout = true;	
	}
		
	if (y > room_height+pad && !clippedout){
		y = -pad;
		clippedout = true;	
	}

	if (y < -pad && !clippedout){
		y = room_height+pad;
		clippedout = true;	
	}
	
	if (x > -pad && x < room_width+pad && y > -pad && y < room_height+pad)
		clippedout = false;
}
