if (instance_position(mouse_x, mouse_y, id) && global.testing == false && room != roo_puzzle_tutorial1 && (room != roo_puzzle_tutorial2 || (obj_editor.current_villain_taunttext == obj_editor.villain_taunttext3 || obj_editor.current_villain_taunttext == obj_editor.villain_taunttext99))){
	//Dragging
	if (mouse_check_button_pressed(mb_left) && room != roo_puzzle_tutorial2){
		with instance_create(x,y,obj_dragcontroller)
			dragid = other.id;
	}
	
	//Rotation
	if (mouse_check_button_pressed(mb_right)){
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
}

//destroy if in the delete zone
if (y > view_get_hport(view_camera[0])-100 && !instance_exists(obj_dragcontroller)){
	obj_editor.ObjectAmountArray[array_get_index(obj_editor.ObjectArray,object_index)] += 1;
	instance_destroy();
	audio_play_sound(sfx_delete,1,0);
}

//Cat interactions
var collided_with = instance_place(x, y, obj_cat)
if (collided_with != noone) {
	if (collided_with.movement_direction == FACING.LEFT || collided_with.movement_direction == FACING.RIGHT) {
		if (facing = FACING.UP) {
			collided_with.x = x;
			collided_with.y = y - obj_editor.gridsize;
			if (!instance_position(x, y, obj_poof)){
				obj_editor.boxtouched_count++;
		        instance_create(x, y, obj_poof);
				audio_play_sound(sfx_poof,1,0);	
			}
		}

		if (facing = FACING.DOWN) {
			collided_with.x = x;
			collided_with.y = y + obj_editor.gridsize;
			if (!instance_position(x, y, obj_poof)){
				obj_editor.boxtouched_count++;
		        instance_create(x, y, obj_poof);
				audio_play_sound(sfx_poof,1,0);	
			}
		}
	} else {
		if (facing = FACING.LEFT) {
			collided_with.y = y;
			collided_with.x = x - obj_editor.gridsize;
			if (!instance_position(x, y, obj_poof)){
				obj_editor.boxtouched_count++;
		        instance_create(x, y, obj_poof);
				audio_play_sound(sfx_poof,1,0);	
			}
		}
		
		if (facing = FACING.RIGHT) {
			collided_with.y = y;
			collided_with.x = x + obj_editor.gridsize;
			if (!instance_position(x, y, obj_poof)){
				obj_editor.boxtouched_count++;
		        instance_create(x, y, obj_poof);
				audio_play_sound(sfx_poof,1,0);	
			}
		}
	}
}