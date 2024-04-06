function voltarPosicaoDeOrigem() {
	if (object_index == objPlayerBattle) {
	    spriteAtual = sprMadrugaBattlePuloPraTras;
		acao = playerVoltandoPosicaoOrigem;
	}
	else if (object_index == objInimigoBattle) {
	    // TODO: sprite inimigo voltando pra tras
	}
	
	image_speed = 1;
	move_towards_point(origemX, origemY, 8);
}