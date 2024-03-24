function checarFimTransicao(){
	if (alarm[0] <= 0) {
		var intervalo = sprite_get_speed(sprEfeitoTransicao) / game_get_speed(gamespeed_fps);
		
		switch (tipoTransicao) {
		    case TipoTransicaoEnum.Entrada:
					var limiteHorizontal = display_get_width() div sprite_get_width(sprEfeitoTransicao);
					var frameFinal = sprite_get_number(sprEfeitoTransicao) + limiteHorizontal;
						
					if (frameAtual < frameFinal) {
					    	frameAtual += intervalo;
					} else {
						alarm[0] = 60;
					}
		        break;
			case TipoTransicaoEnum.Encerramento:
					if (frameAtual > 0) {
					    	frameAtual -= intervalo;
					} else {
						instance_destroy();
						global.emTransicao = false;
					}
		        break;
		}
	}
}