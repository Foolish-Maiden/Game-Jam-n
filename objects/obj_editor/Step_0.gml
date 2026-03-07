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
	if (!global.testing){
		instance_create(0,415,obj_cat);
		global.testing = true;
		audio_play_sound(sfx_play,1,0);	
	}
	else
		end_testing();
}

if (global.testing){
	if (instance_exists(obj_cat)){
		if (obj_cat.x < 0 || obj_cat.x > room_width || obj_cat.y < 0 || obj_cat.y > room_height) {
			end_testing()
		}
	}
}

if (global.testing)
	drawy = approach(drawy,800,5);
else
	drawy = approach(drawy,view_get_hport(view_camera[0])-60,5);

if (global.levelcomplete == true){
	VillainHeadEmote = HeadEmote.Lose;
	PlayerHeadEmote = HeadEmote.Win;	
}