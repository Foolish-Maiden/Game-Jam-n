depth = -999;
facing = FACING.UP;

rotate = function() {
	if (facing = FACING.UP){
		facing = FACING.RIGHT;
		image_angle = 270;
		exit;
	}
	
	if (facing = FACING.DOWN){
		facing = FACING.LEFT;
		image_angle = 90;
		exit;
	}
	
	if (facing = FACING.LEFT){
		facing = FACING.UP;
		image_angle = 0;
		exit;
	} 
	if (facing = FACING.RIGHT){
		facing = FACING.DOWN;
		image_angle = 180;
		exit;
	}
}