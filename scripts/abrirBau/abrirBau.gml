function abrirBau() {
	if (ativo && permiteAbertura) {
	    ativo = false;
		global.pause = true;
		sprite_index = sprBauAbrindo;
		executarEstado = abrindoBau;
	}
}