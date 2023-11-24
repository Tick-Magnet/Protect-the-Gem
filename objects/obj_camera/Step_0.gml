if (keyboard_check_pressed(vk_tab)) {

    if (!window_get_fullscreen()) {
        window_set_fullscreen(true);
    } else {
        window_set_fullscreen(false);
    }
}

if (keyboard_check_pressed(vk_escape)) {
    game_end();
}