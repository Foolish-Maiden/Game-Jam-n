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

#region tutorial stuff
if (room != puzzle_tutorial1)
	exit;

if (instance_exists(obj_flingbox) && (villain_taunttext == villain_taunttext3 || villain_taunttext == villain_taunttext99) && global.dragid == noone){
	var target_x = obj_box_tuthint.x + 32;
	var target_y = obj_box_tuthint.y + 32;

	if (obj_flingbox.x == target_x && obj_flingbox.y == target_y){
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
if (mouse_check_button_pressed(mb_left) && text_i > string_length(villain_taunttext)) {
	switch (villain_taunttext) {
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
			room_fadeto(Levelselect);
			exit;
	}
}
#endregion