if keyboard_check(ord("E")){
	drill_time_change += 1;
	
	if drill_time_change > drill_animation_time{
		drill_time_change = 0
		if sprite_index == sPlayer1{
			sprite_index = sPlayer2
		} else {
			sprite_index = sPlayer1
		}
	}
}

if keyboard_check(vk_right) { // if the right arrow key is pressed

    x_speed = max(x_speed + movement_speed,-1.5)
	image_xscale = -1;

} else if keyboard_check(vk_left) { // otherwise, if the left arrow key is pressed

    x_speed = min(x_speed - movement_speed, 1.5);
	image_xscale = 1;

} else {
	x_speed = 0;
}


if keyboard_check(vk_up) {

    y_speed = min(y_speed -float_speed,1.5);
} else if keyboard_check(vk_down) {

    y_speed = max(y_speed + float_speed, -1.5);

} else {
	y_speed = 0;
}

move_and_collide(x_speed, y_speed, oSolid)