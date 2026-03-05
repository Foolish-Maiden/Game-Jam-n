depth = -999; //sets the depth of the boxes in the minigame
transfertoY = false;
transfertoX = false;
box_direction = FACING.UP;

#region State Machine
	enum STATE_FRAMES {
		START,
		LOOP,
		END
	}
	// frame
	state_frame = STATE_FRAMES.START
	
	// Template State
	state_template = function() {
		if (state_frame = STATE_FRAMES.START) { // when entering this frame
			
			state_frame = STATE_FRAMES.LOOP // run during frames code
		} else if (state_frame = STATE_FRAMES.LOOP) { // during frame
			
		} else if (state_frame = STATE_FRAMES.END) { // when exiting this frame
			state = next_state
			state_frame = STATE_FRAMES.START // run the next frame's code
		}
	}
	
	// States
	state_editor = function() {
		if (state_frame = STATE_FRAMES.START) { // when entering this frame
			
			state_frame = STATE_FRAMES.LOOP // run during frames code
		} else if (state_frame = STATE_FRAMES.LOOP) { // during frame
			if (instance_position(mouse_x, mouse_y, id)){
				// Dragging
				if (mouse_check_button_pressed(mb_left)){
					global.dragid = id;
					instance_create(x,y,obj_dragcontroller);
				}
	
				// Rotation
				if (mouse_check_button_pressed(mb_right)){
					if box_direction = FACING.UP {
						box_direction = FACING.RIGHT
						image_angle = 270
					} else if box_direction = FACING.DOWN {
						box_direction = FACING.LEFT
						image_angle = 90
					} else if box_direction = FACING.LEFT {
						box_direction = FACING.UP
						image_angle = 0
					} else if box_direction = FACING.RIGHT {
						box_direction = FACING.DOWN
						image_angle = 180
					}
				}
			}
			
			//destroy if in the delete zone
			if (y > view_get_hport(view_camera[0])-100 && global.dragid != id){
				obj_editor.ObjectAmountArray[array_get_index(obj_editor.ObjectArray,object_index)] += 1;
				instance_destroy();
			}
			
			if (global.testing) change_state(state_empty)
			
		} else if (state_frame = STATE_FRAMES.END) { // when exiting this frame
			state = next_state
			state_frame = STATE_FRAMES.START // run the next frame's code
		}
	}
	
	
	state_empty = function() {
		if (state_frame = STATE_FRAMES.START) { // when entering this frame
			
			state_frame = STATE_FRAMES.LOOP // run during frames code
		} else if (state_frame = STATE_FRAMES.LOOP) { // during frame
			if (global.testing = false) change_state(state_editor)
			if (place_meeting(x, y, obj_cat)) {
				instance_destroy(obj_cat)
				change_state(state_holding_cat)
			}
		} else if (state_frame = STATE_FRAMES.END) { // when exiting this frame
			state = next_state
			state_frame = STATE_FRAMES.START // run the next frame's code
		}
	}
	
	cat_cooldown_timer = 0
	cat_cooldown_length = 5
	shot = false
	state_holding_cat = function() {
		if (state_frame = STATE_FRAMES.START) { // when entering this frame
			// Reset Variables
			cat_cooldown_timer = 0
			cat_cooldown_length = 5
			shot = false
			cat_cooldown_timer = cat_cooldown_length
			
			state_frame = STATE_FRAMES.LOOP // run during frames code
		} else if (state_frame = STATE_FRAMES.LOOP) { // during frame
			if (global.testing = false) change_state(state_editor)
			
			if shot {
				cat_cooldown_timer--
				if cat_cooldown_length <= 0 {
					change_state(state_empty)
				}
			} else {
				with (instance_create_layer(x, y, "Instances", obj_cat)) {
					movement_direction = other.box_direction;
					other.shot = true
				}
			}
		} else if (state_frame = STATE_FRAMES.END) { // when exiting this frame
			state = next_state
			state_frame = STATE_FRAMES.START // run the next frame's code
		}
	}
	
	// state var
	state = state_editor
	next_state = state_editor
	
	// Change State Function
	change_state = function(_next_state) {
		next_state = _next_state; // set the next state we are going to
		state_frame = STATE_FRAMES.END // run the end code of the current state
	}
#endregion States
