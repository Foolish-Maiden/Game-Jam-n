if (fademode == "fadeout"){
	fadealpha+=0.1;	
}

if (fademode == "fadein"){
	fadealpha-=0.1;	
}

if (fadealpha >= 2){
	room_goto(global.targetroom);
	fademode = "fadein";
}

if (fadealpha < 0)
	instance_destroy();