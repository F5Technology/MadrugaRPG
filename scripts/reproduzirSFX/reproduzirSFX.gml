function reproduzirSFXOverworld(sfx){
	audio_group_stop_all(sfxOverworld);
	
	audio_play_sound(sfx, 1, false);
}

function reproduzirSFXUI(sfx){
	audio_group_stop_all(sfxUI);
	
	audio_play_sound(sfx, 1, false);
}

function reproduzirSFXEfeitos(sfx){
	audio_group_stop_all(sfxEfeitos);
	
	audio_play_sound(sfx, 1, false);
}