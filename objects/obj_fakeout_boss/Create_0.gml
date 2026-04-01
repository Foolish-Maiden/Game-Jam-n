audio_stop_all();
text_array = []
aud_array = []
real_taunttext = "";
textspeed = 3;
text_i = 1;
text_select = 0;

add_dialog("Oh you uh... Agent Kitty, you beat that... final trap, that puzzle, you uhh... you beat it?", vc_level_15_1)
add_dialog("Um... ah... well you see, I had planned to use my large evil robot of doomitude on you but uh-", vc_level_15_2)
add_dialog("it's not finished yet so uh... yeah, I guess... I guess that's it, you win.", vc_level_15_3)
add_dialog("Foiled yet again! \nCURSE YOU AGENT KITTYYYYYYYYYYYYYY-", vc_curse_you)

	
function add_dialog(text, audio){
	array_push(text_array, text)	
	array_push(aud_array, audio)	
}

alarm[0] = textspeed;
audio_play_sound(aud_array[0], 0, false)
