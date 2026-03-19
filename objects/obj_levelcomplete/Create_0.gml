leveloutro = false;
true_alpha = 1;
opened = true;


check_my_switches = function() {
	var should_open = true;
	with (obj_switch){
		if !pressed && switch_id == 0 {
			should_open = false
		}
	}
	opened = should_open
	
	if opened {
		true_alpha = 1
	}
}