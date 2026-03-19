if (fademode == "fadeout"){
	fadealpha += fadespeed;	
}

if (fademode == "fadein"){
	fadealpha -= fadespeed;	
}

if (fadealpha >= 2){
	room_goto(global.targetroom);
	fademode = "fadein";
}

if (fadealpha < 0)
	instance_destroy();