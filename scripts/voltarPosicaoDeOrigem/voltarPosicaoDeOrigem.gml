function voltarPosicaoDeOrigem() {
	if (object_index == objPlayerBattle) {
	    sprite_index = sprMadrugaBattlePuloPraTras;
	}
	else if (object_index == objInimigoBattle) {
	    spriteAtual = sprAranhaBattlePuloPraTras;
	}
	
	image_speed = 1;
	acao = voltandoPosicaoOrigem;
	move_towards_point(origemX, origemY, 7);
}