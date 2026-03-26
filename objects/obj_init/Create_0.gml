global.testing = false;
global.targetroom = noone;
global.levelcomplete = false;
global.paused = false;

cursor_sprite = spr_cursor;

// btw, enums dont need assignments unless its different than 0, 1, 2, etc. But i like numbers :drool:
enum FACING {
	UP = 0,
	RIGHT = 270,
	DOWN = 180,
	LEFT = 90,
}

//each of these numbers is the frame on the animation
enum HeadEmote {
	Normal,
	Win,
	Lose
}

room_goto(room_titlescreen);
