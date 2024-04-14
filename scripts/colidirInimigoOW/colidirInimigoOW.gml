function colidirInimigoOW() {
	var inimigo = other;
	
	if (!inimigo.cooldown) {
		instance_create_layer(-10, -10, "Main", objTransicao);
	    reproduzirTransicaoBatalha();
		
		var tempo = 60;
		objBattle.alarm[0] = tempo;
		trocarMusica(trackBattle, tempo);
		
		inimigo.cooldown = true;
		global.inimigoColidido = inimigo;
	}
}