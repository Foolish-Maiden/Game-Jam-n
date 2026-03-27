var healthbar_x = 100;
var healthbar_y = 700;
draw_set_colour(c_white);
draw_text(healthbar_x+30,healthbar_y-20,"Volume " + string(global.volume) + "%");
draw_healthbar(healthbar_x, healthbar_y, healthbar_x+300, healthbar_y+50, global.volume, c_black,c_blue,c_red,0,true,false);

if (mouse_check_button(mb_left) && mouse_x > healthbar_x && mouse_x < healthbar_x+300 && mouse_y > healthbar_y && mouse_y < healthbar_y+50){
	changevolume = true;
}

if (changevolume){
	global.volume = round((mouse_x - healthbar_x) / 300 * 100);
	if (global.volume > 100)
		global.volume = 100;
		
	if (global.volume < 0)
		global.volume = 0;
		
	if (!mouse_check_button(mb_left)){
		changevolume = false;
		ini_open("SaveFile.ini")
		ini_write_real("Options", "Volume", global.volume);
		ini_close();
	}
}

audio_master_gain(global.volume/100);

