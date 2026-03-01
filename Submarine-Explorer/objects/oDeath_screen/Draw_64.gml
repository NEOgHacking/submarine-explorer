// Red overlay
draw_set_alpha(alpha);
draw_set_color(c_red);
draw_rectangle(
    0,
    0,
    display_get_gui_width(),
    display_get_gui_height(),
    false
);

// Reset draw state
draw_set_alpha(1);
draw_set_color(c_white);

// Centered text
var cx = display_get_gui_width() / 2;
var cy = display_get_gui_height() / 2;

draw_text(cx - 40, cy, "YOU DIED");