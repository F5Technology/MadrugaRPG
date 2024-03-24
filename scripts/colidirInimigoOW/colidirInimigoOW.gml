function colidirInimigoOW() {
	var inimigo = other;
	
	if (!inimigo.cooldown) {
		instance_create_layer(-10, -10, "Instances", objTransicao);
	    reproduzirTransicaoBatalha();
		
		objBattle.alarm[0] = 120;
		inimigo.cooldown = true;
		global.inimigoColidido = inimigo;
	}
}