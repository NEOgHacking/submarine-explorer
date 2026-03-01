if keyboard_check(ord("E")){
	ore_x = x + lengthdir_x(50, image_angle)
	ore_y = y + lengthdir_y(50, image_angle)
	
	ore = instance_position(ore_x, ore_y, oRock)
	object_set_visible(ore, false)
	
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

    x_speed = max(x_speed + movement_speed,-0.8)
	image_xscale = -1;

} else if keyboard_check(vk_left) { // otherwise, if the left arrow key is pressed

    x_speed = min(x_speed - movement_speed, 0.8);
	image_xscale = 1;

} else {
	if x_speed > 0{
		x_speed = max(0, x_speed - 0.1)
	} else if x_speed < 0{
		x_speed = min(0, x_speed + 0.1)
	}
}


if keyboard_check(vk_up) {

    y_speed = min(y_speed -float_speed,1.5);
} else if keyboard_check(vk_down) {

    y_speed = max(y_speed + float_speed, -1.5);

} else {
	y_speed = 0;
}

move_and_collide(x_speed, y_speed, oSolid)