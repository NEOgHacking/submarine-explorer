var cam = view_camera[0];

var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);

var screen_width = display_get_width();
var screen_height = display_get_height();

var new_x = oPlayer.x - cam_w / 2;
var new_y = oPlayer.y - cam_h / 2;

camera_set_view_pos(cam, new_x, new_y);

view_set_wport(0, screen_width)
view_set_hport(0, screen_height)