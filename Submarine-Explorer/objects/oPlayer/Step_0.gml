var move_x = 0;
var move_y = 0;

// Drill animation
if keyboard_check(ord("E")) {
    drill_time_change += 1;
    
    if drill_time_change > drill_animation_time {
        drill_time_change = 0;
        if sprite_index == sPlayer1 {
            sprite_index = sPlayer2;
        } else {
            sprite_index = sPlayer1;
        }
    }
}

// Keyboard movement
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

// Gamepad support
if (array_length(gamepads) > 0) {
    move_x = gamepad_axis_value(gamepads[0], gp_axislh);
    move_y = gamepad_axis_value(gamepads[0], gp_axislv);
}

// Movement with acceleration

// X axis
if (move_x != 0) {
    var x_new_speed = x_speed + acceleration_speed * move_x;
    if (abs(x_new_speed) <= max_movement_speed) {
        x_speed = x_new_speed;
    }
} else {
    if (x_speed > 0) {
        x_speed = max(0, x_speed - deceleration_speed);
    } else if (x_speed < 0) {
        x_speed = min(0, x_speed + deceleration_speed);
    }
}

// Y axis
if (move_y != 0) {
    var y_new_speed = y_speed + acceleration_speed * move_y;
    if (abs(y_new_speed) <= max_movement_speed) {
        y_speed = y_new_speed;
    }
} else {
    if (y_speed > 0) {
        y_speed = max(0, y_speed - deceleration_speed);
    } else if (y_speed < 0) {
        y_speed = min(0, y_speed + deceleration_speed);
    }
}

// Flip sprite based on direction
if (x_speed > 0) {
    image_xscale = -1;
} else if (x_speed < 0) {
    image_xscale = 1;
}

// Collision
move_and_collide(x_speed, y_speed, oSolid);
move_and_collide(x_speed, y_speed, oSolid);

// Only try to find nearest shop if obj_shop exists
if (variable_global_exists("obj_shop") && object_exists(obj_shop)) {
    var shop = instance_nearest(x, y, obj_shop);
    if (shop != noone && point_distance(x, y, shop.x, shop.y) <= shop.interact_range) {
        near_shop = shop;
    }
} else {
    near_shop = noone; // fallback if shop doesn't exist
}

// Check mouse interaction for selling ores
if (near_shop != noone && mouse_check_button_pressed(mb_left)) {
    var mx = device_mouse_x_to_gui(0);
    var my = device_mouse_y_to_gui(0);

    var bx = display_get_gui_width() / 2 - 80;
    var by = display_get_gui_height() - 100;

    if (point_in_rectangle(mx, my, bx, by, bx + 160, by + 40)) {
        sell_all_ores(); // your sell function/script
    }
}