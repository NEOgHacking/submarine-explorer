function DIE(){
    alive = false;

    // Optional effects
    // instance_create_layer(x, y, "Effects", obj_death_fx);
    // audio_play_sound(snd_death, 1, false);

    // Restart room (or go to game over screen)
    room_restart();
}

if (!instance_exists(oDeath_screen))
{
    instance_create_layer(0, 0, "GUI", oDeath_screen);
}