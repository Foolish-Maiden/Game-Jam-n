//get inputs and do collisions
scr_getinput();
scr_collision();

//get move values 
//if your pressing right move is 1, and pressing left is -1. not pressing either or both at the same time results in 0
move = key_right - key_left;
moveV = key_down - key_up;


if (key_dash){
	movespeed = 5;
	spr_up = spr_Running_Down;
	spr_down = spr_Running_Up;
	spr_left = spr_Running_Left;
	spr_right = spr_Running_Right;
}
else{
	movespeed = 3;
	spr_up = spr_Walking_Down;
	spr_down = spr_Walking_Up;
	spr_left = spr_Walking_Left;
	spr_right = spr_Walking_Right;	
}

//(ALWAYS PUT THESE AT THE BOTTOM!!!)
//animate the player
scr_animate();
//actually move the player 
hsp = movespeed * move;
vsp = movespeed * moveV;
