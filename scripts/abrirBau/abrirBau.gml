function abrirBau() {
	if (ativo && permiteAbertura) {
	    ativo = false;
		global.obtendoItem = true;
		sprite_index = sprBauAbrindo;
		executarEstado = abrindoBau;
	}
}