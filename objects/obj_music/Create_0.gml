musicArray = [];
musicArrayRoom = [];

add_music(Titlescreen, mu_titlescreen);
add_music(puzzle_test1, mu_puzzle);

function add_music(_room, music){
	array_push(musicArray,music);
	array_push(musicArrayRoom,_room);
}
