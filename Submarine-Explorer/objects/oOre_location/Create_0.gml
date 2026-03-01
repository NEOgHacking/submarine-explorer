var x_pos = x;
var y_pos = y;
var layer_name = layer;

var new_obj;

var random_int = irandom(99); // 0-99
if (random_int < 10) {
    new_obj = oDiamond;
} else if (random_int < 30) {
    new_obj = oGold;
} else {
    new_obj = oIron;
}

if (object_exists(new_obj)) {
    instance_destroy();

    instance_create_layer(x_pos, y_pos, layer_name, new_obj);
} else {
    show_debug_message("Error: new object is missing!");
}