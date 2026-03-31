//draw item picker
draw_set_alpha(1);
draw_rectangle_color(0,view_get_hport(view_camera[0])-100,1366,view_get_hport(view_camera[0]),c_gray,c_gray,c_gray,c_gray,false);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
for (var i = 0; i < array_length(ObjectArray); i += 1){
	draw_set_color(c_black);
	draw_sprite(ObjectSpriteArray[i], 0, 320+i*150, drawy);
	draw_text(350+i*150, drawy-20, "X" + string(ObjectAmountArray[i]));
}

//draw heads
draw_rectangle_color(0,0,250,768,c_gray,c_gray,c_gray,c_gray,false);

if (room == room_puzzle_tutorial1 || room == room_puzzle_tutorial2)
	draw_sprite(spr_robothead, 0 ,0,0);
else
	draw_sprite(spr_villainhead, 0 ,0,0);

draw_sprite(spr_playerhead,0,0,550);
draw_text(20,200+tutoffset,real_taunttext);

if (room == room_puzzle_tutorial1 || room == room_puzzle_tutorial2){
	if (text_i > string_length(current_villain_taunttext) && current_villain_taunttext != villain_taunttext99 && current_villain_taunttext != villain_taunttext4 && current_villain_taunttext != villain_taunttext3)
		draw_sprite(spr_click_hint, image_index, 200, 500)
}

//draw play and pause button
draw_sprite(spr_editor_start,global.testing,1366,768);
draw_sprite(spr_editor_pause,global.paused,1366-100,768);
