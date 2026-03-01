var move_x = 0;
var move_y = 0;


if (keyboard_check(ord("E")) || gamepad_button_check(0, gp_face1)){
	image_speed = 1;
} else {
	image_speed = 0;
}


if (keyboard_check(vk_left) && keyboard_check(vk_right)) {
	move_x = 0;
} else if (keyboard_check(vk_left)) {
	move_x = -1;
} else if (keyboard_check(vk_right)) {
	move_x = 1;
} else {
	move_x = 0;
}


if (keyboard_check(vk_up) && keyboard_check(vk_down)) {
	move_y = 0;
} else if (keyboard_check(vk_up)) {
	move_y = -1;
} else if (keyboard_check(vk_down)) {
	move_y = 1;
} else {
	move_y = 0;
}



//gamepad support
if (array_length(gamepads) > 0)
{
    move_x = gamepad_axis_value(gamepads[0], gp_axislh);
    move_y = gamepad_axis_value(gamepads[0], gp_axislv);
}

//movement calculations with accel

//x movement
if(move_x != 0) {
	var x_new_speed = x_speed + acceleration_speed * move_x;
	if(abs(x_new_speed) <= max_movement_speed) { //if new speed is under or equal to max speed than update the speed.
		x_speed	= x_new_speed;
	}
} else {
	if x_speed > 0{
		x_speed = max(0, x_speed - deceleration_speed)
	} else if x_speed < 0{
		x_speed = min(0, x_speed + deceleration_speed)
	}
}


//y movement
if(move_y != 0) {
	var y_new_speed = y_speed + acceleration_speed * move_y;
	if(abs(y_new_speed) <= max_movement_speed) { //if new speed is under or equal to max speed than update the speed.
		y_speed	= y_new_speed;
	}
} else {
	if (y_speed > 0) {
		y_speed = max(0, y_speed - deceleration_speed)
	} else if (y_speed < 0) {
		y_speed = min(0, y_speed + deceleration_speed)
	}
}

if(x_speed > 0) {
	image_xscale = -1;
}else if(x_speed < 0) {
	image_xscale = 1;
}
//collision
move_and_collide(x_speed, y_speed, oSolid)