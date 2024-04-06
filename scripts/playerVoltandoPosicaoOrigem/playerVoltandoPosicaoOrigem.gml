function playerVoltandoPosicaoOrigem() {
	if (point_distance(x, y, origemX, origemY) <= 8) {
	    speed = 0;
		objBattle.fimTurno = true;
		spriteAtual = sprMadrugaBattleIdle;
		objIconePlayerBattle.sprite_index = sprIconeMadrugaPadrao;
		acaoAtual = AcaoBatalhaEnum.Nenhum;
		acao = function () {
			//Funcao vazia
		}
	}
}