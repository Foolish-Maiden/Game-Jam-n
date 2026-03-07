var true_alpha = true;

with (obj_button){
    if (!pressed)
        true_alpha = 0.4;
	else
		true_alpha = 1;
}

image_alpha = true_alpha;

if (place_meeting(x, y, obj_cat) && image_alpha == 1){
    global.levelcomplete = true;
	
	if (room == puzzle_tutorial1 || room == puzzle_tutorial2){
		if (room == puzzle_tutorial1)
			obj_editor.villain_taunttext = obj_editor.villain_taunttextlevel1_to_2;
		else
			obj_editor.villain_taunttext = obj_editor.villain_taunttextlevel2_to_3;
			
		obj_editor.text_i = 1;
		obj_editor.alarm[0] = 1;
		obj_editor.real_taunttext = "";
	}
}
