//<<<<<<< HEAD
room_order = [room_puzzle_1, room_puzzle_2, room_puzzle_3, room_puzzle_4]
//=======
room_order = [room_puzzle_1, room_puzzle_2, room_puzzle_3, room_puzzle_4, room_puzzle_5, room_puzzle_6]
//>>>>>>> dd4de670f432be2d14c20cc77e98038c04682b40
in_puzzle_room = false
current_room = 0

next_room = function() {
	current_room++
	
	if current_room >= array_length(room_order)
		room_fadeto(room_credits) //change to win room when all rooms are finished
	else
		room_fadeto(room_order[current_room])
}

set_room = function(_room) {
	room_fadeto(_room);
}
