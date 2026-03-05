gridsize = 64;
ObjectArray = [];
ObjectAmountArray = [];
ObjectSpriteArray = [];
villain_taunttext = "Error!";
real_taunttext = "";
textspeed = 3;
text_i = 1;
alarm[0] = textspeed;
drawy = view_get_hport(view_camera[0])-60;

if (room == puzzle_test1){
	editor_addobject(obj_flingbox, spr_box_editoricon, 3);
	villain_taunttext = "Ho Ho! Im the bad guy!\nCan you beat my evil\ntest room!?";
}





function editor_addobject(object, sprite, amount){
	array_push(ObjectArray,object);
	array_push(ObjectSpriteArray,sprite);
	array_push(ObjectAmountArray,amount);
}
