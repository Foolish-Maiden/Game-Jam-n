for (var i = 0; i < array_length(musicArrayRoom); i += 1){
	if (musicArrayRoom[i] == room){
		//stop other music
		if (audio_is_playing(!musicArray[i]))
			audio_stop_all();
		
		//player new music
		if (!audio_is_playing(musicArray[i]))
			audio_play_sound(musicArray[i], 1, 1);
	}
}
