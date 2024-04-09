function checarMorteInimigo(){
	if (morto && checarFImAnimacao()) {
		instance_destroy();
		objBattle.fimTurno = true;
	}
}