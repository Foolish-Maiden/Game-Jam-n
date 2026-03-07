global.testing = false;
global.targetroom = noone;
global.levelcomplete = false;

enum FACING {
	UP,
	LEFT,
	RIGHT,
	DOWN
}

//each of these numbers is the frame on the animation
enum HeadEmote {
	Normal = 0,
	Win = 1,
	Lose = 2
}

room_goto(Titlescreen);
