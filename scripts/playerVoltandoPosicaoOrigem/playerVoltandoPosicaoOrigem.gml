function playerVoltandoPosicaoOrigem() {
	if (point_distance(x, y, origemX, origemY) <= 8) {
	    speed = 0;
		spriteAtual = sprMadrugaBattleIdle;
		objIconePlayerBattle.sprite_index = sprIconeMadrugaPadrao;
		acaoAtual = AcaoBatalhaEnum.Nenhum;
		acao = function () {
			//Funcao vazia
		}
	}
}