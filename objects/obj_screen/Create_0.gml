pause_surface = -1;
drawit = false;
xx = 0;
yy = 0;
drawalpha = 0;

function do_pausestuff(){
	if (global.paused){
	    global.paused = false;
		instance_destroy(obj_button_exitlevel);	
	} else {
		global.paused = true;
		drawit = true;

	    pause_surface = surface_create(surface_get_width(application_surface), surface_get_height(application_surface));
	    surface_copy(pause_surface, 0, 0, application_surface);
	}
}
