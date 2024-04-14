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

function reproduzirSFXBattle(sfx){
	audio_group_stop_all(sfxBattle);
	
	audio_play_sound(sfx, 1, false);
}

function reproduzirSFXVoz(sfx){
	audio_group_stop_all(sfxVozes);
	
	audio_play_sound(sfx, 1, false);
}