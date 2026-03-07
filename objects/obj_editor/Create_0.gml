gridsize = 64;
ObjectArray = [];
ObjectAmountArray = [];
ObjectSpriteArray = [];
villain_taunttext = "";
villain_taunttext1 = "Error!";
villain_taunttext2 = "";
villain_taunttext3 = "";
villain_taunttext4 = "";
villain_taunttext99 = "";
villain_taunttext100 = "";
real_taunttext = "";
textspeed = 2;
text_i = 1;
alarm[0] = textspeed;
drawy = view_get_hport(view_camera[0])-60;
VillainHeadEmote = HeadEmote.Normal;
PlayerHeadEmote = HeadEmote.Normal;


if (room == puzzle_test1){
	editor_addobject(obj_flingbox, spr_box_editoricon, 4);
	villain_taunttext1 = "Ho Ho! Im the bad guy!\nCan you beat my evil\ntest room!?";
}

if (room == puzzle_tutorial1){
	editor_addobject(obj_flingbox, spr_box_editoricon, 1);
	villain_taunttext1 = "Welcome to training\nsoftware 1.2.16!";
	villain_taunttext2 = "The first part of\nyou're training is\nblock construction";
	villain_taunttext3 = "Try dragging the\nBox into the outlined spot";
	villain_taunttext99 = "Wrong you dumbass";
	villain_taunttext100 = "Corrent you smart";
	villain_taunttext4 = "Now press the play\nbutton"
}

function editor_addobject(object, sprite, amount){
	array_push(ObjectArray,object);
	array_push(ObjectSpriteArray,sprite);
	array_push(ObjectAmountArray,amount);
}

end_testing = function() {
	global.testing = false;
	instance_destroy(obj_cat)
}

villain_taunttext = villain_taunttext1;

