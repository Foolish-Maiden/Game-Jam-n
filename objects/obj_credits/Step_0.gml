drawy -= 1;
if mouse_check_button(mb_right) {
	drawy -= 3
}
if mouse_check_button_pressed(mb_left) || drawy <= -500 {
	room_fadeto(room_titlescreen, 30)
}