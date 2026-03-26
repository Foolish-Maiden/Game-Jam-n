//needed_ammount = 3;
door_id = 0;
opened = false

check_my_switches = function(){
	var should_open = true;
	
	with (obj_switch){
		if !pressed && switch_id == other.door_id
			should_open = false
	}
	opened = should_open
}
