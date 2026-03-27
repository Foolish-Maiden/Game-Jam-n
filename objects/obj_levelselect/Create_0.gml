room_array = [];
icon_array = [];
name_array = [];
hovernumber = 0;
linecount = 6;
hover_tut = false;

//add_level(room_puzzle_test1, spr_placeholder_icon, "Testroom");
//add_level(room_puzzle_tutorial1, spr_placeholder_icon, "Tutorial");
//add_level(room_credits, spr_placeholder_icon, "Credits");
add_level(room_puzzle_1, spr_level_icon, "Level 1");
add_level(room_puzzle_2, spr_level_icon, "Level 2");
add_level(room_puzzle_3, spr_level_icon, "Level 3");
add_level(room_puzzle_4, spr_level_icon, "Level 4");
add_level(room_puzzle_5, spr_level_icon, "Level 5");
add_level(room_puzzle_6, spr_level_icon, "Level 6");
add_level(room_puzzle_7, spr_level_icon, "Level 7");
add_level(room_puzzle_8, spr_level_icon, "Level 8");
add_level(room_puzzle_9, spr_level_icon, "Level 9");
add_level(room_puzzle_10, spr_level_icon, "Level 10");
add_level(room_puzzle_11, spr_level_icon, "Level 11");
add_level(room_puzzle_12, spr_level_icon, "Level 12");
add_level(room_puzzle_13, spr_level_icon, "Level 13");
add_level(room_puzzle_14, spr_level_icon, "Level 14");
add_level(room_puzzle_15, spr_level_icon, "Level 15");

function add_level(_level, icon, name){
	array_push(room_array, _level);
	array_push(icon_array, icon);
	array_push(name_array, name);
}
