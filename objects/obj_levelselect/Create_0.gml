room_array = [];
icon_array = [];
name_array = [];
hovernumber = 0;
linecount = 6;
hover_tut = false;

//add_level(room_puzzle_test1, spr_placeholder_icon, "Testroom");
//add_level(room_puzzle_tutorial1, spr_placeholder_icon, "Tutorial");
//add_level(room_credits, spr_placeholder_icon, "Credits");
add_level(room_puzzle_1, spr_level1_icon, "Level 1");
add_level(room_puzzle_2, spr_placeholder_icon, "Level 2");
add_level(room_puzzle_3, spr_placeholder_icon, "Level 3");
add_level(room_puzzle_4, spr_placeholder_icon, "Level 4");
add_level(room_puzzle_5, spr_placeholder_icon, "Level 5");
add_level(room_puzzle_6, spr_placeholder_icon, "Level 6");
add_level(room_puzzle_7, spr_placeholder_icon, "Level 7");
add_level(room_puzzle_8, spr_placeholder_icon, "Level 8");
add_level(room_puzzle_9, spr_placeholder_icon, "Level 9");
add_level(room_puzzle_10, spr_placeholder_icon, "Level 10");
add_level(room_puzzle_11, spr_placeholder_icon, "Level 11");
add_level(room_puzzle_12, spr_placeholder_icon, "Level 12");

//not added
add_level(room_levelselect, spr_placeholder_icon, "Level 13");
add_level(room_levelselect, spr_placeholder_icon, "Level 14");
add_level(room_levelselect, spr_placeholder_icon, "Level 15");
add_level(room_levelselect, spr_placeholder_icon, "Level 16");
add_level(room_levelselect, spr_placeholder_icon, "Level 17");
add_level(room_levelselect, spr_placeholder_icon, "Level 18");
add_level(room_levelselect, spr_placeholder_icon, "Level 19");
add_level(room_levelselect, spr_placeholder_icon, "Level 20");
add_level(room_levelselect, spr_placeholder_icon, "Level 21");
add_level(room_levelselect, spr_placeholder_icon, "Level 22");
add_level(room_levelselect, spr_placeholder_icon, "Level 23");
add_level(room_levelselect, spr_placeholder_icon, "Level 24");

function add_level(_level, icon, name){
	array_push(room_array, _level);
	array_push(icon_array, icon);
	array_push(name_array, name);
}
