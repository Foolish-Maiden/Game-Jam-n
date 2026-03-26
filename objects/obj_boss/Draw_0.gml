draw_self();

draw_set_alpha(0.4);

if (!dragging)
	draw_sprite(spr_box_up,0,round((mouse_x - 32) / 64) * 64 + 32, round((mouse_y - 32) / 64) * 64 + 32);
	
draw_set_alpha(1);