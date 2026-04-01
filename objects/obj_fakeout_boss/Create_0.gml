text_array = []
real_taunttext = "";
textspeed = 3;
text_i = 1;
text_select = 0;

add_dialog("Oh you uh... Agent Kitty, you beat that... final trap, that final puzzle, you uhh... you beat it?")
add_dialog("Um... ah... well you see, I had planned to use my large evil robot of doomitude on you but uh-")
add_dialog("it's not finished yet so uh... yeah, I guess... I guess that's it, you win.")
add_dialog("Foiled yet again...")
add_dialog("CURSE YOU AGENT KITTYYYYYYYYYYYYYY-")

function add_dialog(text){
	array_push(text_array, text)	
}

alarm[0] = textspeed;