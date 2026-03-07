for (var i = 0; i < array_length(musicArrayRoom); i += 1){
	if (musicArrayRoom[i] == room){
		if (!audio_is_playing(musicArray[i]))
			audio_play_sound(musicArray[i], 1, 1);
	}
	else
		audio_stop_sound(musicArray[i]);
}
