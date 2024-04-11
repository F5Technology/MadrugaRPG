function checarFimTurno() {
	if (playerPronto && inimigosProntos) {
	    fimTurno = true;
	    playerPronto = false;
	    inimigosProntos = false;
	}
}