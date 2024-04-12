function checarMorteInimigoBatalha(){
	if (morto && checarFImAnimacao()) {
		objBattle.inimigosProntos = true;
		objBattle.quantidadeInimigos -= 1;
		objBattle.xpAdquirido += ficha.xp;
		instance_destroy();
	}
}