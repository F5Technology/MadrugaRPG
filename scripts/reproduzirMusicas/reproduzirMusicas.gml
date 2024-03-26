function reproduzirTransicaoBatalha() {
	audio_group_stop_all(sngOverworld);
	
	audio_play_sound(mscTransicaoBatalha, 1, false);
}

function reproduzirMusicaGameOver() {
	audio_group_stop_all(sngOST);
	
	audio_play_sound(mscGameOver, 1, false);
}