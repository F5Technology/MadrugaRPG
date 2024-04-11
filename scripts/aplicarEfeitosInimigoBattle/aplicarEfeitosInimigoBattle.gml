function aplicarEfeitosInimigoBattle(){
	draw_sprite(sprSombraAranhaBattle, image_index, x, y + 8);
	exibirSpritePersonagemSelecionado();
	
	if (!morto && ficha.status == StatusBatalhaEnum.Queimado && acaoAtual == AcaoBatalhaEnum.Nenhum) {
		var frame = spriteAtual == sprAranhaBattleQueimando ? 0 : image_index;
		
		draw_sprite(sprIconeStatusQueimado, frame, x - 5, y - sprite_height + 7);
	}
	
	if (hit || morto) {
		exibirHPInimigoBatalha();
		
		if (hit && checarFImAnimacao()) {
		   image_speed = 0;
		}
	}
	
	//Profundidade
	if (acao == executarAcao) {
	    depth = -y;
	}
	else if (instance_exists(objOpcoesBattle)) {
		depth = objOpcoesBattle.depth + 1;
	}
	else {
	    depth = -y + 11;
	}
}