if spin {
	spin_counter += 50
	spin_timer--
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, direction + spin_counter - 90, c_white, 1)
	if spin_timer <= 0 {
		spin = false
	}
} else {
	spin_counter = 0
	draw_self();
}
