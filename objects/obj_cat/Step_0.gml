x += movespeedH;
y += movespeedV;

if (movespeedH > 0){
	image_xscale = 1;
	sprite_index = spr_catH;	
}
	
if (movespeedH < 0){
	image_xscale = -1;
	sprite_index = spr_catH;	
}
show_debug_message(obj_cat.movespeedH);
show_debug_message(obj_cat.movespeedV);