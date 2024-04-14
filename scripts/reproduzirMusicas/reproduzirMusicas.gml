function reproduzirTransicaoBatalha() {
	audio_group_stop_all(sfxEfeitos);
	
	audio_play_sound(sndTransicaoBatalha, 1, false);
}

function reproduzirMusicaGameOver() {
	audio_group_stop_all(sngOST);
	
	audio_play_sound(trackGameOver, 1, false);
}

function reproduzirMusica(musica) {
	audio_group_stop_all(sngOST);
	
	audio_play_sound_on(emissora, musica, 1, true);
}

function pararMusica() {
	if (instance_exists(objOST)) {
		objOST.finalizarMusica = true;
	}
}

function trocarMusica(musica, tempo) {
	if (instance_exists(objOST)) {
		objOST.alarm[0] = tempo;
		objOST.finalizarMusica = true;
		objOST.proximaMusica = musica;
	}
}

function transicaoProximaMusica() {
	if (finalizarMusica) {
		fade -= 0.1;
		audio_emitter_gain(emissora, fade);
	}
}