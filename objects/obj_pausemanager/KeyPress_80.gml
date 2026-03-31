if (room != room_levelselect && room != room_titlescreen && room != room_credits && global.levelcomplete = false){
		obj_screen.do_pausestuff();
		audio_play_sound(sfx_play,1,0);
}

