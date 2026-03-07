function scr_roomchange(_room){
	instance_create(x,y,obj_fadeout);
	global.targetroom = _room;
}
