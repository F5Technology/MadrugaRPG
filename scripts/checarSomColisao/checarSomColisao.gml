function checarSomColisao(reproduzir) {
	if (object_index == objPlayer) {
		
		with(objSFX) {
			if (!reproduzindoAudio && reproduzir) {
					reproduzirSFX(sndColisao);
					reproduzindoAudio = true;
					alarm[0] = 30;
			}		
			
			if (reproduzindoAudio && reproduzir) {
					alarm[0] = 30;
			}		
		}
		
	}
}