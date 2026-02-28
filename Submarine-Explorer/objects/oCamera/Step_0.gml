var cam = view_camera[0];

var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);



var screen_width = display_get_width();
var screen_height = display_get_height();


var new_x = oPlayer.x - cam_w / 2;
var new_y = oPlayer.y - cam_h / 2;

if not((new_x >= 0) && (new_x + cam_w <= room_width)){
    new_x = camera_get_view_x(cam);
}

if not((new_y >= 0) && (new_y + cam_h <= room_height)){
	new_y = camera_get_view_y(cam)
}

camera_set_view_pos(cam, new_x, new_y);

view_set_wport(0, screen_width)
view_set_hport(0, screen_height)