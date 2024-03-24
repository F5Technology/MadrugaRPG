function reproduzirTransicaoBatalha() {
	audio_group_stop_all(sngOverworld);
	
	audio_play_sound(mscTransicaoBatalha, 1, false);
}