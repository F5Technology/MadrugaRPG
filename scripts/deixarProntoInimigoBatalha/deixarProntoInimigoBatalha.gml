function deixarProntoInimigoBatalha() {
	hit = false;
	image_speed = 1;
	
	if (status != ficha.status && status == StatusBatalhaEnum.Queimado) {
		alarm[0] = 60;
		ficha.status = status;
	    spriteAtual = sprAranhaBattleQueimando;
		instance_create_depth(x - 22, y - 15, -9999999, objQueimadura);
		
		objBattle.textoInfo = "A Aranha se queimou com seu golpe";
	}
	else {	    
		spriteAtual = sprAranhaBattleIdle;
		objBattle.inimigosProntos = true;
	}
}