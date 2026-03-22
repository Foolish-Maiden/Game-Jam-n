if !pressed{
	draw_sprite(spr_switch, 0, x, y)
	draw_sprite_ext(spr_switch, 1, x, y, 1, 1, 0, obj_switch_color_manager.color_bank[switch_id][0], 1)
	draw_sprite_ext(spr_switch, 2, x, y, 1, 1, 0, obj_switch_color_manager.color_bank[switch_id][1], 1)
}else{
	draw_sprite(spr_switch, 3, x, y)
	draw_sprite_ext(spr_switch, 4, x, y, 1, 1, 0, obj_switch_color_manager.color_bank[switch_id][1], 1)
}
