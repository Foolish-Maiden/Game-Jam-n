//Mouse Interactions
if (instance_position(mouse_x, mouse_y, id) && global.testing == false){
	//Dragging
	if (mouse_check_button_pressed(mb_left)){
		global.dragid = id;
		instance_create(x,y,obj_dragcontroller);
	}
	
	//Rotation
	if (mouse_check_button_pressed(mb_right)){
		if (box_direction = FACING.UP){
			box_direction = FACING.RIGHT;
			image_angle = 270;
			exit;
		}
		
		if (box_direction = FACING.DOWN){
			box_direction = FACING.LEFT;
			image_angle = 90;
			exit;
		}
		
		if (box_direction = FACING.LEFT){
			box_direction = FACING.UP;
			image_angle = 0;
			exit;
		} 
		if (box_direction = FACING.RIGHT){
			box_direction = FACING.DOWN;
			image_angle = 180;
			exit;
		}
	}
}

//destroy if in the delete zone
if (y > view_get_hport(view_camera[0])-100 && global.dragid != id){
	obj_editor.ObjectAmountArray[array_get_index(obj_editor.ObjectArray,object_index)] += 1;
	instance_destroy();
	audio_play_sound(sfx_delete,1,0);
}



if (place_meeting(x, y, obj_cat)){
	if (box_direction = FACING.UP)
		obj_cat.x = x;

	if (box_direction = FACING.DOWN)
		obj_cat.x = x;

	if (box_direction = FACING.LEFT)
		obj_cat.y = y;
		
	if (box_direction = FACING.RIGHT)
		obj_cat.y = y;

	obj_cat.movement_direction = box_direction;

    if (!instance_position(x, y, obj_poof)){
        instance_create(x, y, obj_poof);
		audio_play_sound(sfx_poof,1,0);	
	}
}
