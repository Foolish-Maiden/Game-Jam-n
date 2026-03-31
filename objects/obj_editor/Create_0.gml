depth = -999;

//reset globals
global.levelcomplete = false;
global.testing = false;

// create required objects
instance_create_layer(x, y, "Instances", obj_switch_color_manager)

// variables
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
boxtouched_count = 0;
voice_audio = sfx_poof;
tutoffset = 0;

#region text
current_villain_taunttext = "";
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

if (room == room_puzzle_tutorial1 || room == room_puzzle_tutorial2){
	tutoffset = 75;
}

if (room == room_puzzle_test1){
	editor_addobject(obj_flingbox, spr_box_editoricon, 5);
	editor_addobject(obj_clonebox, spr_clonebox_editoricon, 4);
	editor_addobject(obj_pushtile, spr_push_editoricon, 4);
	editor_addobject(obj_spinnerbox_left, spr_spinnerbox_left_editoricon, 4);
	editor_addobject(obj_spinnerbox_right, spr_spinnerbox_right_editoricon, 4);
	villain_taunttext1 = "Ho Ho! Im the bad guy!\nCan you beat my evil\ntest room!?";
}

if (room == room_puzzle_1){
	editor_addobject(obj_flingbox, spr_box_editoricon, 1);
	villain_taunttext1 = "Ah yes Agent Kitty! How\nunexpected!" +
	"\nAnd by unexpected i mean\n...\nunexpected. " + 
	"I just done\nmoving into this new secret\nlair. I assumed you'd be here\nlater on..." +
	"Well no matter!\nI still have plenty of\nevil traps layed out for you!\nEven though my cat-" + 
	"launchers\n are still in the boxes"
	
	textspeed = 4;
	voice_audio = vc_level_1;
}

if (room == room_puzzle_2){
	editor_addobject(obj_flingbox, spr_box_editoricon, 2);
	villain_taunttext1 = "What? You used the cat\nlaunchers to launch yourself\ninto the next room?\n" +
	"..." + 
	"Well, no matter! For you see, \nAgent Kitty, those cat\nlaunchers can only take you\nin a straight line.\n" +
	"That is why I placed WALLS\nbetween you, and the exit!\nNyeh heh heh heh!";
	
	textspeed = 4;
	voice_audio = vc_level_2;
}

if (room == room_puzzle_3){
	editor_addobject(obj_flingbox, spr_box_editoricon, 5);
	villain_taunttext1 = "One wall not enough?\nHeres four walls!";
}

if (room == room_puzzle_4){
	editor_addobject(obj_flingbox, spr_box_editoricon, 2);
	villain_taunttext1 = "You've done very well...\n as a reward take\nthese lazers!";
}

if (room == room_puzzle_5){
	editor_addobject(obj_flingbox, spr_box_editoricon, 5);
	villain_taunttext1 = "Maybe more switches shall\nstop you!";
}

if (room == room_puzzle_6){
	editor_addobject(obj_flingbox, spr_box_editoricon, 2);
	editor_addobject(obj_spinnerbox_right, spr_spinnerbox_right_editoricon, 1);
	villain_taunttext1 = "I built some machines to\nbring the boxes around for\nme, but for some reason\nthey just rotate 90 degrees\nwhenever i kick them...\nanyway, this room doesn't\nhave enough boxes!\nHAHAHAHA";
}

if (room == room_puzzle_7){
	editor_addobject(obj_flingbox, spr_box_editoricon, 1);
	editor_addobject(obj_spinnerbox_left, spr_spinnerbox_left_editoricon, 2);
}

if (room == room_puzzle_8){
	editor_addobject(obj_flingbox, spr_box_editoricon, 3);
	editor_addobject(obj_spinnerbox_right, spr_spinnerbox_right_editoricon, 1);
}

if (room == room_puzzle_9){
	editor_addobject(obj_flingbox, spr_box_editoricon, 2);
	editor_addobject(obj_spinnerbox_right, spr_spinnerbox_right_editoricon, 1);
}

if (room == room_puzzle_10){
	editor_addobject(obj_flingbox, spr_box_editoricon, 4);
	editor_addobject(obj_spinnerbox_right, spr_spinnerbox_right_editoricon, 1);
	editor_addobject(obj_spinnerbox_left, spr_spinnerbox_left_editoricon, 1);
}

if (room == room_puzzle_11){
	editor_addobject(obj_spinnerbox_right, spr_spinnerbox_right_editoricon, 1);
	editor_addobject(obj_flingbox, spr_box_editoricon, 2);
}

if (room == room_puzzle_12){
	editor_addobject(obj_clonebox, spr_clonebox_editoricon, 1);
	editor_addobject(obj_clonebox_clone2, spr_clonebox_clone2_editoricon, 2);
	editor_addobject(obj_flingbox, spr_box_editoricon, 2);
	editor_addobject(obj_spinnerbox_right, spr_spinnerbox_right_editoricon, 1);
	editor_addobject(obj_spinnerbox_left, spr_spinnerbox_left_editoricon, 1);
}

if (room == room_puzzle_13){
	editor_addobject(obj_clonebox_clone2, spr_clonebox_clone2_editoricon, 1);
	editor_addobject(obj_clonebox, spr_clonebox_editoricon, 1);
	editor_addobject(obj_spinnerbox_left, spr_spinnerbox_left_editoricon, 1);
	editor_addobject(obj_flingbox, spr_box_editoricon, 1);
}

if (room == room_puzzle_14){
	editor_addobject(obj_spinnerbox_right, spr_spinnerbox_right_editoricon, 1);
	editor_addobject(obj_spinnerbox_left, spr_spinnerbox_left_editoricon, 2);
	editor_addobject(obj_clonebox, spr_clonebox_editoricon, 1);
	editor_addobject(obj_clonebox_clone2, spr_clonebox_clone2_editoricon, 1);
	editor_addobject(obj_flingbox, spr_box_editoricon, 4);
}


//tutorial
if (room == room_puzzle_tutorial1){
	editor_addobject(obj_flingbox, spr_box_editoricon, 1);
	villain_taunttext1 = "Welcome to training\nsoftware 1.3.2!";
	villain_taunttext2 = "The first part of\nyou're training is\nblock construction";
	villain_taunttext3 = "Try dragging the\nBox into the outlined spot";
	villain_taunttext99 = "Wrong Dumbass.\ndrag the box into the\noutlined spot";
	villain_taunttext100 = "Correct!";
	villain_taunttext4 = "Now press the play\nbutton";
	villain_taunttextlevel1_to_2 = "TRAINING PT 1: COMPLETE\nLoading next course...";
}

if (room == room_puzzle_tutorial2){ 
	editor_addobject(obj_flingbox, spr_box_editoricon, 1);
	villain_taunttext1 = "Rotating";
	villain_taunttext2 = "You may need to\nrotate sometimes!!";
	villain_taunttext3 = "Try placing and\nright clicking the\nbox to face down";
	villain_taunttext99 = "Wrong you dumbass.\nPlace and right\nclick the box to\nface down";
	villain_taunttext100 = "Corrent you smart";
	villain_taunttext4 = "Now press the play\nbutton";
	villain_taunttextlevel2_to_3 = "TRAINING COMPLETE\nGoodbye!";
}

function editor_addobject(object, sprite, amount){
	array_push(ObjectArray,object);
	array_push(ObjectSpriteArray,sprite);
	array_push(ObjectAmountArray,amount);
}

function set_taunt(_text) {
	current_villain_taunttext = _text;
	text_i = 1;
	alarm[0] = 1;
	real_taunttext = "";
}

end_testing = function() {
	global.testing = false;
	instance_destroy(obj_cat)
}

current_villain_taunttext = villain_taunttext1;
if (global.voice_enable)
	audio_play_sound(voice_audio, 1, 0);
