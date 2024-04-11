function voltandoPosicaoOrigem() {
	if (point_distance(x, y, origemX, origemY) <= 7) {
	    speed = 0;
		
		if (object_index == objPlayerBattle) {
			sprite_index = sprMadrugaBattleIdle;
			objIconePlayerBattle.sprite_index = sprIconeMadrugaPadrao
			objBattle.playerPronto = true;
		}
		else if (object_index == objInimigoBattle) {
		    spriteAtual = sprAranhaBattleIdle;
			objBattle.inimigosProntos = true;
		}
		
		acaoAtual = AcaoBatalhaEnum.Nenhum;
		acao = function () {
			//Funcao vazia
		}
	}
}