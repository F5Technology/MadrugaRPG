function reproduzirSFX(sfx){
	audio_group_stop_all(sfxOverworld);
	
	audio_play_sound(sfx, 1, false);
}