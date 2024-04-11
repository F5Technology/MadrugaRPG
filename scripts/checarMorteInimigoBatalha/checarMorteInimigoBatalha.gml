function checarMorteInimigoBatalha(){
	if (morto && checarFImAnimacao()) {
		instance_destroy();
		objBattle.inimigosProntos = true;
	}
}