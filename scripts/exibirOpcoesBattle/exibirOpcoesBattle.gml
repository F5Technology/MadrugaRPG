function exibirOpcoesBattle() {	
	switch (menuAtual) {
	    case MenuEnum.Principal:
			var posicaoX = player.x + 3;
			var posicaoY = player.y + 4;
			draw_sprite(sprMoldeOpcoesBattle, 0, posicaoX, posicaoY);
	        break;
		case MenuEnum.Itens:
	        renderListaItensMenuBatalha();
	        break;
		case MenuEnum.Confirmacao:
	        renderModalConfirmacao();
	        break;
	}
}