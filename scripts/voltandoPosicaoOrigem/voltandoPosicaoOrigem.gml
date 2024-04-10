function voltandoPosicaoOrigem() {
	if (point_distance(x, y, origemX, origemY) <= 7) {
	    speed = 0;
		
		if (object_index == objPlayerBattle) {
			sprite_index = sprMadrugaBattleIdle;
			objIconePlayerBattle.sprite_index = sprIconeMadrugaPadrao;
		}
		else if (object_index == objInimigoBattle) {
		    spriteAtual = sprAranhaBattleIdle;
		}
		
		acaoAtual = AcaoBatalhaEnum.Nenhum;
		acao = function () {
			//Funcao vazia
		}
	}
}