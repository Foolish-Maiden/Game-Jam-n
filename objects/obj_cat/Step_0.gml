if do_move {
	if movement_direction = FACING.UP {
		y -= mainspeed
	} else if movement_direction = FACING.DOWN {
		y += mainspeed
	} else if movement_direction = FACING.LEFT {
		x -= mainspeed
		image_xscale = -1
	} else if movement_direction = FACING.RIGHT {
		x += mainspeed
		image_yscale = 1
	}
}

/*
x += movespeedH;
y += movespeedV;

if (movespeedH > 0){
	image_xscale = 1;
	sprite_index = spr_catH;	
}
	
if (movespeedH < 0){
	image_xscale = -1;
	sprite_index = spr_catH;	
}
show_debug_message(obj_cat.movespeedH);
show_debug_message(obj_cat.movespeedV);
*/