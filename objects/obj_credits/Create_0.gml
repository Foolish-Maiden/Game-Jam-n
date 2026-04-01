name_array = [];
type_array = [];
image_array = [];
image_data = [];

//quick hack lmao
alarm[0] = 700;

add_section("Director");
add_credit("Dabestestboi");

add_section("Coding");
add_credit("Ralcactus");
add_credit("Torrent");

add_section("Art");
add_credit("Purtangle");
add_credit("SporeMaster");

add_section("Music");
add_credit("Towball's Crossing");

add_section("Special Thanks");
add_credit("Foolish");

add_section("Pets");
add_credit("Coco");
add_credit("Lovebug");
add_credit("Kopi");
add_credit("Buddy");


add_section("And...");
add_credit("You!");


add_image(room_width/2-400, 100, spr_dabestestboi_cat);
add_image(room_width-300, 200, spr_ralcactus_cat);
add_image(room_width/2-500, 400, spr_dabestestboi_dog);

function add_credit(_name, image = spr_empty){
	array_push(name_array, _name);
	array_push(image_array, image);
	array_push(type_array, "credit");
}

function add_image(_x, _y, image) {
    image_data[array_length(image_data)] = {
        x: _x,
        y: _y,
        sprite: image
    }
}

function add_section(_section){
	array_push(name_array, _section);
	array_push(image_array, spr_empty);
	array_push(type_array, "section");
}

drawy = room_height;