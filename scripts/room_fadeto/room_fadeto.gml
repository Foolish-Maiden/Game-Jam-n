function room_fadeto(_room, _speed = 10){
	with (instance_create(x,y,obj_fadeout)) {
		fadespeed = 1 / _speed;
	}
	global.targetroom = _room;
}
