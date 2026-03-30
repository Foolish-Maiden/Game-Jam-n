musicArray = [];
musicArrayRoom = [];

add_music(room_titlescreen, mu_titlescreen);
add_music(room_levelselect, mu_levelselect);
add_music(room_puzzle_test1, mu_puzzle);

//puzzles and their music
add_music(room_puzzle_1, mu_puzzle);
add_music(room_puzzle_2, mu_puzzle);
add_music(room_puzzle_3, mu_puzzle);
add_music(room_puzzle_4, mu_puzzle);
add_music(room_puzzle_5, mu_puzzle);
add_music(room_puzzle_6, mu_puzzle);
add_music(room_puzzle_7, mu_puzzle);
add_music(room_puzzle_8, mu_puzzle);
add_music(room_puzzle_9, mu_puzzle);
add_music(room_puzzle_10, mu_puzzle);
add_music(room_puzzle_11, mu_puzzle);
add_music(room_puzzle_12, mu_puzzle);
add_music(room_puzzle_13, mu_puzzle);
add_music(room_puzzle_14, mu_puzzle);
add_music(room_puzzle_15, mu_puzzle);

//boss
add_music(room_bossfight, mus_bossfight);

function add_music(_room, music){
	array_push(musicArray,music);
	array_push(musicArrayRoom,_room);
}
