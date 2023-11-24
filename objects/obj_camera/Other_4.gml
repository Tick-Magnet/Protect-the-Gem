if (room_get_name(room) == "rm_title") {
    var _music_index = audio_play_sound(snd_menu_music, 1, true);
} else if (room_get_name(room) == "rm_game") {
	var _music_index = audio_play_sound(snd_game_music, 1, true);
}


