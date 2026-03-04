function scr_animate(){
	//moving right
	if (move == 1)
		sprite_index = spr_right;
	//moving left
	if (move == -1)
		sprite_index = spr_left;
	//moving up
	if (moveV == 1)
		sprite_index = spr_up;
	//moving down
	if (moveV == -1)
		sprite_index = spr_down;
}