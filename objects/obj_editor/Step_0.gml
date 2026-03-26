for (var i = 0; i < array_length(ObjectArray); i++)
{
	var xx = 300 + i * 150+32;
	var yy = view_get_hport(view_camera[0]) - 40;

	var left = xx - sprite_get_width(ObjectSpriteArray[i])/2;
	var right = xx + sprite_get_width(ObjectSpriteArray[i])/2;
	var top = yy - sprite_get_height(ObjectSpriteArray[i])/2;
	var bottom = yy + sprite_get_height(ObjectSpriteArray[i])/2;

	if (mouse_check_button_pressed(mb_left) && ObjectAmountArray[i] != 0 && mouse_x > left && mouse_x < right && mouse_y > top && mouse_y < bottom)
	{
		if ((room == room_puzzle_tutorial1 || room == room_puzzle_tutorial2) && obj_editor.current_villain_taunttext != obj_editor.villain_taunttext3 && obj_editor.current_villain_taunttext != obj_editor.villain_taunttext99)
			exit;
			
		var object = instance_create(mouse_x, mouse_y, ObjectArray[i]);
		ObjectAmountArray[i] -= 1;
		with instance_create(x, y, obj_dragcontroller) {
			dragid = object.id;
			init_x = object.x
			init_y = object.y
		}
			
		if (object.object_index == obj_blahaj){
			with instance_create(x,y,obj_dragcontroller){
				var goto_point = instance_create(mouse_x, mouse_y, obj_blahaj_warp);
				dragid = goto_point.id;
				object.warpto_point = goto_point.id;
				dragoffsetX	= 64;
			}
		}
	}
}

//play
if (mouse_check_button_pressed(mb_left) && mouse_x > 1366-100 && mouse_x < 1366+100 && mouse_y > 768-100 && mouse_y < 768+100){
	if (global.levelcomplete == true || (room == room_puzzle_tutorial1 || room == room_puzzle_tutorial2) && current_villain_taunttext != villain_taunttext4)
		exit;

			
	if (!global.testing){
		with instance_create(obj_startpoint.x,obj_startpoint.y,obj_cat)
			movement_direction = obj_startpoint.shoot_angle;
		
		global.testing = true;
		audio_play_sound(sfx_play,1,0);
	}
	else{
		if (room != room_puzzle_tutorial1 && room != room_puzzle_tutorial2)
			end_testing();
	}
}

if (global.testing && instance_exists(obj_cat)){
	with obj_cat {
		if (x < 0 || x > room_width || y < 0 || y > room_height) {
			if instance_number(obj_cat) <= 1 {
				other.end_testing()
			}
			instance_destroy()
		}
	}
}


//hide placable objects when testing
if (global.testing)
	drawy = approach(drawy,800,5);
else{
	drawy = approach(drawy,view_get_hport(view_camera[0])-60,5);
	boxtouched_count = 0;
}

//when completing a level, change the heads in the corners
if (global.levelcomplete == true){
	VillainHeadEmote = HeadEmote.Lose;
	PlayerHeadEmote = HeadEmote.Win;	
}

#region tutorial stuff
if (room != room_puzzle_tutorial1 && room != room_puzzle_tutorial2)
	exit;

if (instance_exists(obj_flingbox) && (current_villain_taunttext == villain_taunttext3 || current_villain_taunttext == villain_taunttext99) && !instance_exists(obj_dragcontroller)){
	var target_x = obj_box_tuthint.x + 32;
	var target_y = obj_box_tuthint.y + 32;

	if (obj_flingbox.x == target_x && obj_flingbox.y == target_y){
		if (room == room_puzzle_tutorial2 && obj_flingbox.facing != FACING.DOWN)
			exit;
			
		set_taunt(villain_taunttext100);
		exit;
	}
	else{
		set_taunt(villain_taunttext99);
		instance_destroy(obj_flingbox);
		ObjectAmountArray[0] += 1;
		exit;
	}
}

// Handle mouse click dialogue progression
if (mouse_check_button_pressed(mb_left) && text_i > string_length(current_villain_taunttext)) {
	switch (current_villain_taunttext) {
		case villain_taunttext1:
			set_taunt(villain_taunttext2);
			exit;
		
		case villain_taunttext2:
			set_taunt(villain_taunttext3);
			exit;
		
		case villain_taunttext100:
			set_taunt(villain_taunttext4);
			exit;
		
		case villain_taunttextlevel1_to_2:
			room_fadeto(room_puzzle_tutorial2);
			exit;		
			
		case villain_taunttextlevel2_to_3:
			room_fadeto(room_levelselect);
			exit;
	}
}
#endregion