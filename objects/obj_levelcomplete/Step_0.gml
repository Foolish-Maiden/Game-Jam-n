var true_alpha = true;

with (obj_button){
    if (!pressed)
        true_alpha = 0.4;
	else
		true_alpha = 1;
}

image_alpha = true_alpha;

if (place_meeting(x, y, obj_cat) && image_alpha == 1)
    global.levelcomplete = true;
