draw_set_alpha(1);


//draw item picker
draw_rectangle_color(0,view_get_hport(view_camera[0])-100,1366,view_get_hport(view_camera[0]),c_gray,c_gray,c_gray,c_gray,false);

for (var i = 0; i < array_length(ObjectArray); i += 1){
	draw_set_color(c_black);
	draw_sprite(ObjectSpriteArray[i], 0, 320+i*150, drawy);
	draw_text(350+i*150, drawy-20, "X" + string(ObjectAmountArray[i]));
}


//draw heads
draw_rectangle_color(0,0,250,768,c_gray,c_gray,c_gray,c_gray,false);
draw_sprite(spr_villainhead,VillainHeadEmote,0,0);
draw_sprite(spr_playerhead,PlayerHeadEmote,0,550);

draw_text(20,200,real_taunttext);

//draw play button
draw_sprite(spr_editor_start,global.testing,1366,768);
