function exibirSpritePersonagemSelecionado() {
	var spriteSelecionado = 0;
	
	switch (object_index) {
	    case objPlayerBattle:
			spriteSelecionado = sprMadrugaBattleSelecionado;
	        break;
	    case objInimigoBattle:
			spriteSelecionado = sprAranhaBattleSelecionado;
	        break;
	}
	
	sprite_index = selecionado ? spriteSelecionado : spriteAtual;
}