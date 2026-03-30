name_array = [];
type_array = [];

//quick hack lmao
alarm[0] = 500;

add_section("Director");
add_credit("FOOLISH");

add_section("Coding");
add_credit("Ralcactus");
add_credit("Torent");

add_section("Art");
add_credit("Purtangle");
add_credit("Sporemasterr");

add_section("Music");
add_credit("Towball's Crossing");

add_section("And...");
add_credit("You!");

function add_credit(_name){
	array_push(name_array, _name);
	array_push(type_array, "credit");
}

function add_section(_section){
	array_push(name_array, _section);
	array_push(type_array, "section");
}

drawy = room_height;