var data = global.ore_data[? ore_type];
var col  = data.color;

shader_set(shd_ore_color);

var u_col = shader_get_uniform(shd_ore_color, "ore_color");
shader_set_uniform_f(u_col, col[0], col[1], col[2]);

draw_self();

shader_reset();