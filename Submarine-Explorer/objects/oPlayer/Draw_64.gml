if (near_shop != noone)
{
    var bx = display_get_gui_width() / 2 - 80;
    var by = display_get_gui_height() - 100;

    draw_set_alpha(0.9);
    draw_rectangle(bx, by, bx + 160, by + 40, false);
    draw_set_alpha(1);

    draw_text(bx + 40, by + 10, "Sell Ores");
}