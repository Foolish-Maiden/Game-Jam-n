room_order = [room_puzzle_1, room_puzzle_2, room_puzzle_3, room_puzzle_4, room_puzzle_5, room_puzzle_6, 
room_puzzle_7, room_puzzle_8, room_puzzle_9, room_puzzle_10, room_puzzle_11, room_puzzle_12, room_puzzle_13,
room_puzzle_14, room_fakeout_boss]

in_puzzle_room = false
current_room = 0;

next_room = function() {
    for (var i = 0; i < array_length(room_order); i++){
        if (room_order[i] == room){
            current_room = i;
            break;
        }
    }
	
	current_room++
	
	if current_room >= array_length(room_order)
		room_fadeto(room_credits) //change to win room when all rooms are finished
	else
		room_fadeto(room_order[current_room]);
}

set_room = function(_room) {
	room_fadeto(_room);
}
