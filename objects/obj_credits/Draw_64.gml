var sec_space = 0;

for (var i = 0; i < array_length(name_array); i += 1)
{
    if (type_array[i] == "section" && i > 0)
        sec_space += 30;

    if (type_array[i] == "section")
        draw_set_colour(c_yellow);
    else
        draw_set_colour(c_white);

    draw_text(room_width/2, drawy + i * 20 + sec_space, name_array[i]);
	draw_sprite_ext(image_array[i], 0, room_width/2+50, drawy+i*20 + sec_space, 0.1, 0.1, 0, c_white, 1);
}

for (var j = 0; j < array_length(image_data); j++)
{
    var img = image_data[j];
    draw_sprite_ext(img.sprite, 0, img.x, drawy + img.y, 0.5, 0.5, 0, c_white, 1);
}
