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
