shoot_angle = 0;

if (image_angle == 0)
	shoot_angle = FACING.RIGHT;
	
if (image_angle == 90)
	shoot_angle = FACING.UP;
	
if (image_angle == -90)
	shoot_angle = FACING.DOWN;
	
if (image_angle == 180)
	shoot_angle = FACING.LEFT;
