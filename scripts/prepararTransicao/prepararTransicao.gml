function prepararTransicao(){
	global.emTransicao = true;
	reproduzirSFXEfeitos(sndTransicao);
	
	if (tipoTransicao == TipoTransicaoEnum.Encerramento) {
	    	var limiteHorizontal = display_get_width() div sprite_get_width(sprEfeitoTransicao);
			var frameFinal = sprite_get_number(sprEfeitoTransicao) + limiteHorizontal;
			
			frameAtual = frameFinal;
	}
}