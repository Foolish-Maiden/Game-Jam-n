mainspeed = 8;
movespeedH = mainspeed;
movespeedV = 0;
depth = -999;
movement_direction = FACING.RIGHT
do_move = true

delete_cat = function() {
	do_move = false;
	alarm[0] = 1
}