gridsize = 64;
ObjectArray = [];
ObjectAmountArray = [];
ObjectSpriteArray = [];
real_taunttext = "";
textspeed = 2;
text_i = 1;
alarm[0] = textspeed;
drawy = view_get_hport(view_camera[0])-60;
VillainHeadEmote = HeadEmote.Normal;
PlayerHeadEmote = HeadEmote.Normal;

#region text
villain_taunttext = "";
villain_taunttext1 = "Error!";
villain_taunttext2 = "";
villain_taunttext3 = "";
villain_taunttext4 = "";
villain_taunttext5 = "";
villain_taunttext99 = "";
villain_taunttext100 = "";
villain_taunttextlevel1_to_2 = "";
villain_taunttextlevel2_to_3 = "";
#endregion

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
	villain_taunttextlevel1_to_2 = "TRAINING 1 COMPLETE\nNEXT COUSE..."
}

if (room == puzzle_tutorial2){
	editor_addobject(obj_flingbox, spr_box_editoricon, 1);
	villain_taunttext1 = "Rotating";
	villain_taunttext2 = "You may need to\nrotate sometimes!!";
	villain_taunttext3 = "Try placing and\nright clicking the\nbox to face down";
	villain_taunttext99 = "Wrong you dumbass";
	villain_taunttext100 = "Corrent you smart";
	villain_taunttext4 = "Now press the play\nbutton"
	villain_taunttextlevel2_to_3 = "TRAINING 2 COMPLETE\nFINISHING..."
}





function editor_addobject(object, sprite, amount){
	array_push(ObjectArray,object);
	array_push(ObjectSpriteArray,sprite);
	array_push(ObjectAmountArray,amount);
}

function set_taunt(_text) {
	villain_taunttext = _text;
	text_i = 1;
	alarm[0] = 1;
	real_taunttext = "";
}

end_testing = function() {
	global.testing = false;
	instance_destroy(obj_cat)
}

villain_taunttext = villain_taunttext1;

