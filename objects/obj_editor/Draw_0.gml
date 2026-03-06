//draw grid
draw_set_halign(fa_left);
draw_set_font(fnt_basic);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_set_alpha(0.3);

for (var gridX_i = 0; gridX_i < 100; gridX_i += 1)
	draw_line(0,0+gridX_i*gridsize,1366,0+gridX_i*gridsize);

for (var gridY_i = 0; gridY_i < 100; gridY_i += 1)
	draw_line(0+gridY_i*gridsize,0,0+gridY_i*gridsize,768);

//reset draw alpha
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
draw_sprite(spr_villainhead,0,0,0);
draw_sprite(spr_playerhead,0,0,550);

draw_text(20,200,real_taunttext);

//draw play button
draw_sprite(spr_editor_start,global.testing,1366,768);
