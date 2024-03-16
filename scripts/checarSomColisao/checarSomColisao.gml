function checarSomColisao(reproduzir) {
	if (object_index == objPlayerOW) {
		
		with(objSFX) {
			if (!reproduzindoAudio && reproduzir) {
					reproduzirSFXOverworld(sndColisao);
					reproduzindoAudio = true;
					alarm[0] = 30;
			}		
			
			if (reproduzindoAudio && reproduzir) {
					alarm[0] = 30;
			}		
		}
		
	}
}