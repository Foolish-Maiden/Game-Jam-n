global.LevelDoneStatus = [];

ini_open("SaveFile.ini")
//load options
global.volume = ini_read_real("Options", "Volume", 100);
global.voice_enable = ini_read_real("Options", "Voice", 1);

//load level completion
for (var i = 0; i < 24; i += 1)
	global.LevelDoneStatus[i] = ini_read_real("Complete Status", "Level " + string(i + 1), 0);

//show_message(global.LevelDoneStatus);

ini_close();



//apply options
audio_master_gain(global.volume/100);

function scr_savelevel_progress(){
	var roomname = room_get_name(room);
	var puzzlenumber = string_replace_all(roomname, "room_puzzle_", "");
	
	ini_open("SaveFile.ini")
	if (room != room_fakeout_boss){
		global.LevelDoneStatus[puzzlenumber - 1] = 1;
		ini_write_real("Complete Status", "Level " + puzzlenumber, 1)
	}
	else
		ini_write_real("Complete Status", "Level " + "15", 1)
		
	ini_close();

}