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
		var object = instance_create(mouse_x, mouse_y, ObjectArray[i]);
		global.dragid = object.id;
		ObjectAmountArray[i] -= 1;
		instance_create(x,y,obj_dragcontroller);
	}
}

if (mouse_check_button_pressed(mb_left) && mouse_x > 1366-100 && mouse_x < 1366+100 && mouse_y > 768-100 && mouse_y < 768+100){
	if (room == puzzle_tutorial1 && villain_taunttext != villain_taunttext4)
		exit;
		
	if (!global.testing){
		instance_create(obj_startpoint.x+32,obj_startpoint.y+32,obj_cat);
		global.testing = true;
		audio_play_sound(sfx_play,1,0);
	}
	else{
		if (room != puzzle_tutorial1)
			end_testing();
	}
}

if (global.testing && instance_exists(obj_cat)){
	if (obj_cat.x < 0 || obj_cat.x > room_width || obj_cat.y < 0 || obj_cat.y > room_height)
		end_testing()
}


//hide placable objects when testing
if (global.testing)
	drawy = approach(drawy,800,5);
else
	drawy = approach(drawy,view_get_hport(view_camera[0])-60,5);

//when completing a level, change the heads in the corners
if (global.levelcomplete == true){
	VillainHeadEmote = HeadEmote.Lose;
	PlayerHeadEmote = HeadEmote.Win;	
}

#region tutorial stuff... (crappy code!!)
if (room == puzzle_tutorial1){
	if (instance_exists(obj_flingbox) && (villain_taunttext == villain_taunttext3 || villain_taunttext == villain_taunttext99) && global.dragid == noone){
		if (obj_flingbox.x == obj_box_tuthint.x + 32 && obj_flingbox.y == obj_box_tuthint.y + 32){
			villain_taunttext = villain_taunttext100;
			text_i = 1;
			alarm[0] = 1;
			real_taunttext = "";
			exit;
		}
		
		if (obj_flingbox.x != obj_box_tuthint.x || obj_flingbox.y != obj_box_tuthint.y){
			villain_taunttext = villain_taunttext99;
			text_i = 1;
			alarm[0] = 1;
			real_taunttext = "";
			instance_destroy(obj_flingbox);
			ObjectAmountArray[0] += 1;
		}
	}
	
	if (mouse_check_button_pressed(mb_left) && text_i > string_length(villain_taunttext)){
		if (villain_taunttext == villain_taunttext1){
			villain_taunttext = villain_taunttext2;
			text_i = 1;
			alarm[0] = 1;
			real_taunttext = "";
			exit;
		}

		if (villain_taunttext == villain_taunttext2){
			villain_taunttext = villain_taunttext3;
			text_i = 1;
			alarm[0] = 1;
			real_taunttext = "";
			exit;
		}
		
		if (villain_taunttext == villain_taunttext100){
			villain_taunttext = villain_taunttext4;
			text_i = 1;
			alarm[0] = 1;
			real_taunttext = "";
			exit;
		}
	}
}
#endregion