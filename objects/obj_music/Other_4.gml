var foundit = false;

for (var i = 0; i < array_length(musicArrayRoom); i += 1){
	if (musicArrayRoom[i] == room){
		foundit = true;
		if (!audio_is_playing(musicArray[i]))
			audio_play_sound(musicArray[i], 1, 1);
	}
}

if (!foundit){
	for (var i = 0; i < array_length(musicArray); i += 1)
		audio_stop_all()
}