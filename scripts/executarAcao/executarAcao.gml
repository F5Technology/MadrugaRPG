function executarAcao(){
	switch (acaoAtual) {
	    case AcaoBatalhaEnum.Nenhum:
	        // TODO
	        break;
	    case AcaoBatalhaEnum.Atacar:
	        // TODO
	        break;
	    case AcaoBatalhaEnum.Defender:
	        // TODO
	        break;
	    case AcaoBatalhaEnum.UsarItem:
	       if (itemSelecionado) {
			   image_speed = 1;
		       usarItemEmBatalha();
		   }
		   
		   if (checarFImAnimacao()) {
				objBattle.fimTurno = true;
				spriteAtual = sprMadrugaBattleIdle;
				objIconePlayerBattle.sprite_index = sprIconeMadrugaPadrao;
				acaoAtual = AcaoBatalhaEnum.Nenhum;
				acao = function () {
					//Funcao vazia
				}
		   }
	        break;
	    case AcaoBatalhaEnum.Fugir:
	        if (image_alpha > 0) {
			    image_alpha -= 0.2;
			}
	        break;
	}
}