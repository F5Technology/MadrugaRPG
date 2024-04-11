function checarColisaoBastaoFogoComInimigo(){
	if (!colidido && inimigoSelecionado == other.id) {
		aplicarDanoEmInimigoBatalha();
		
		speed = 0;
		colidido = true;
		image_index = 0;
		sprite_index = sprBastaoFogoDesintegrado;
	}
}