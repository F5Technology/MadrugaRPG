if (!colidido && inimigoSelecionado == other.id) {
	aplicarDanoEmInimigo();
	
	speed = 0;
	colidido = true;
	image_index = 0;
	sprite_index = sprBastaoFogoDesintegrado;
}