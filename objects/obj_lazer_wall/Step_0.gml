/*if (obj_editor.boxtouched_count == needed_ammount){
	obj_editor.boxtouched_count = 0;
	
	if (image_index == 0)
		image_index = 1;
	else
		image_index = 0;
}

if (!global.testing)
	image_index = 0;

if (image_index == 0){
	if (place_meeting(x,y,obj_cat)){
		obj_cat.do_move = false;
		instance_create(obj_cat.x,obj_cat.y,obj_explosion)
		global.testing = false;
		instance_destroy(obj_cat);
	}
}*/

if (!global.testing) {
	image_index = 0;
}

if (!opened){
	if (place_meeting(x,y,obj_cat)){
		obj_cat.do_move = false;
		instance_create(obj_cat.x,obj_cat.y,obj_explosion)
		global.testing = false;
		instance_destroy(obj_cat);
	}
}