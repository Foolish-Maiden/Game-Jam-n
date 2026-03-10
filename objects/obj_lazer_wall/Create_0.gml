image_index = 0;
//needed_ammount = 3;
door_id = 0;
opened = false

check_my_switches = function() {
	var should_open = true;
	with (obj_switch) {
		show_debug_message(string(switch_id) + " " + string(other.door_id))
		if !pressed && switch_id == other.door_id {
			should_open = false
		}
	}
	opened = should_open
	
	if opened {
		image_index = 1
	}
}