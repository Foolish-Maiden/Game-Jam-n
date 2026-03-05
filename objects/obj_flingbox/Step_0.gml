if (instance_position(mouse_x, mouse_y, id)){
	if (mouse_check_button_pressed(mb_left)){
		global.dragid = id;
		instance_create(x,y,obj_dragcontroller);
	}
	
	if (mouse_check_button_pressed(mb_right)){
		image_angle-=90;
		if (image_angle == -180)
			image_angle = 180;
	}
}

if (place_meeting(x,y,obj_cat)){
	//facing up
	if (image_angle == 0){
		obj_cat.movespeedH = 0;
		obj_cat.movespeedV = -obj_cat.mainspeed;
		obj_cat.x = approach(obj_cat.x, x, 7);
	}
	//facing down
	if (image_angle == 180){
		obj_cat.movespeedH = 0;
		obj_cat.movespeedV = obj_cat.mainspeed;
		obj_cat.x = approach(obj_cat.x, x, 7);
	}
	//facing left
	if (image_angle == 90){
		obj_cat.movespeedH = -obj_cat.mainspeed;
		obj_cat.movespeedV = 0;
		obj_cat.y = approach(obj_cat.y, y, 7);
	}
	//facing right
	if (image_angle == -90){
		obj_cat.movespeedH = obj_cat.mainspeed;
		obj_cat.movespeedV = 0;
		obj_cat.y = approach(obj_cat.y, y, 7);
	}
}

//destroy if in the delete zone
if (y > view_get_hport(view_camera[0])-100 && global.dragid != id){
	obj_editor.ObjectAmountArray[array_get_index(obj_editor.ObjectArray,object_index)] += 1;
	instance_destroy();
}
