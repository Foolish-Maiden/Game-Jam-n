if (rotate_state == "left")
	logo_rotate = lerp(logo_rotate, maxleft, 0.2);
else
	logo_rotate = lerp(logo_rotate, maxright, 0.2);
	
if (logo_rotate == maxleft)
	rotate_state = "right";	
if (logo_rotate == maxright)
	rotate_state = "left";