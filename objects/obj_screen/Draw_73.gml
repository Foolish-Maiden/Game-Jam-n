if (drawit)
	draw_surface(pause_surface, 0, 0);
	
if (!global.paused)
	alarm[0] = 1;

if (global.paused){
	draw_set_alpha(drawalpha);
	draw_sprite_tiled(spr_loopbg, 0, xx, yy);
	draw_text(room_width/2,100,"PAUSED!");
	
	draw_set_alpha(1);
	draw_sprite(spr_editor_pause,1,1366-100,768);

}


draw_set_alpha(1);