function checarInteracao() {
	switch (room) {
	    case rmTelaInicial:
	        alarm[0] = 555 / 2;
	        break;
	    case rmGameOver:
			alarm[1]  = 120;
			reproduzirMusicaGameOver();
	        break;
	}
}