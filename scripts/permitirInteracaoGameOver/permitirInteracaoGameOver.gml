function permitirInteracaoGameOver() {
	permiteInteracao = true;
	var tamanhoMusica = game_get_speed(gamespeed_fps) * audio_sound_length(trackGameOver) ;
	
	alarm[2] = tamanhoMusica - 120;
}