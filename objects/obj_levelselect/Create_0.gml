room_array = [];
icon_array = [];
name_array = [];
hovernumber = 0;

add_level(puzzle_test1, spr_level1_icon, "Testroom");
add_level(puzzle_tutorial1, spr_level1_icon, "Tutorial");

function add_level(_level, icon, name){
	array_push(room_array, _level);
	array_push(icon_array, icon);
	array_push(name_array, name);
}
