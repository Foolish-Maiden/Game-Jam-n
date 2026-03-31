facing = FACING.UP;

function rotate(){
	if (facing = FACING.UP){
		facing = FACING.RIGHT;
		exit;
	}
	
	if (facing = FACING.DOWN){
		facing = FACING.LEFT;
		exit;
	}
	
	if (facing = FACING.LEFT){
		facing = FACING.UP;
		exit;
	} 
	if (facing = FACING.RIGHT){
		facing = FACING.DOWN;
		exit;
	}
}

for (i = 0; i < (360-image_angle)/90; i++){
	rotate();
}
