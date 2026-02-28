x_speed = 0; // reset horizontal speed 

y_speed = 0;

if keyboard_check(vk_right) { // if the right arrow key is pressed

    x_speed = movement_speed; // set the horizontal speed to heidi's movement_speed

} else if keyboard_check(vk_left) { // otherwise, if the left arrow key is pressed

    x_speed = -movement_speed; // set the horizontal speed to negative heidi's movement_speed, making her move left

}

if keyboard_check(vk_up) {

    y_speed = float_speed;

} else if keyboard_check(vk_down) {

    y_speed = -float_speed;

}

x += x_speed; 

y += y_speed;