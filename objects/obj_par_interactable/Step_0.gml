//Mouse Interactions
if (point_in_rectangle(mouse_x, mouse_y, x - 32, y - 32, x + 32, y + 32) && global.testing == false){
	if (instance_exists(obj_editor)){
		if (room == room_puzzle_tutorial1 || (room == room_puzzle_tutorial2 && (obj_editor.current_villain_taunttext != obj_editor.villain_taunttext3 && obj_editor.current_villain_taunttext != obj_editor.villain_taunttext99)))
			exit;
	}
		
	//Dragging
	if (mouse_check_button_pressed(mb_left) && room != room_puzzle_tutorial2){
		with instance_create(x,y,obj_dragcontroller){
			dragid = other.id;
			init_x = other.x
			init_y = other.y
		}
	}
	
	//Rotation
	if (mouse_check_button_pressed(mb_right)){
		rotate()
	}
}

//destroy if in the delete zone
if (y > view_get_hport(view_camera[0])-100 && !instance_exists(obj_dragcontroller) && instance_exists(obj_editor)){
	obj_editor.ObjectAmountArray[array_get_index(obj_editor.ObjectArray,object_index)] += 1;
	instance_destroy();
	audio_play_sound(sfx_delete,1,0);
}