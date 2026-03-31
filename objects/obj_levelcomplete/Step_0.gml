opened = true;
true_alpha = 1;
image_alpha = true_alpha;


if (place_meeting(x, y, obj_cat) && opened){
    global.levelcomplete = true;
			
	if (room == room_puzzle_tutorial1 || room == room_puzzle_tutorial2){
		if (room == room_puzzle_tutorial1)
			obj_editor.current_villain_taunttext = obj_editor.villain_taunttextlevel1_to_2;
		else
			obj_editor.current_villain_taunttext = obj_editor.villain_taunttextlevel2_to_3;
			
		obj_editor.text_i = 1;
		obj_editor.alarm[0] = 1;
		obj_editor.real_taunttext = "";
	}
	if (leveloutro)
		exit;
			
	if (!audio_is_playing(sfx_levelcomplete)){
		audio_play_sound(sfx_levelcomplete, 1, 0);
		
		if (room != room_puzzle_tutorial1 && room != room_puzzle_tutorial2 && room != room_puzzle_test1)
			obj_savemanager.scr_savelevel_progress();

		with (obj_cat){
			instance_create(x,y,obj_poof);
			instance_destroy();
		}
		audio_stop_sound(obj_editor.voice_audio);
	}

	leveloutro = true;
}

if (leveloutro && !audio_is_playing(sfx_levelcomplete) && room != room_puzzle_tutorial1 && room != room_puzzle_tutorial2){
	if (!instance_exists(obj_button_nextlevel))
		instance_create(room_width/2+200, 200, obj_button_nextlevel)
		
	if (!instance_exists(obj_button_exitlevel)){
		instance_create(room_width/2-400, 200, obj_button_exitlevel)
		instance_create(x,y,obj_endlevel_bg);	
	}
}
