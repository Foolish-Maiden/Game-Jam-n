with (obj_par_interactable){
	if (point_in_rectangle(mouse_x, mouse_y, x - 32, y - 32, x + 32, y + 32))
		other.dragging = true;
	else{
		other.dragging = false;
	}
}

if (mouse_check_button_pressed(mb_left) && !dragging){
	instance_create(round((mouse_x - 32) / 64) * 64 + 32, round((mouse_y - 32) / 64) * 64 + 32,obj_flingbox);	
}
