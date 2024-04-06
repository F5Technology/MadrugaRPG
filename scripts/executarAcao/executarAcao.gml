function executarAcao(){
	switch (acaoAtual) {
	    case AcaoBatalhaEnum.Atacar:
			if (ataqueSelecionado && ataqueSelecionado.tipo ==  AtaquesEnum.Normal) {
				if (spriteAtual != sprMadrugaBattleAtacando) {
				    image_index = 0;
					spriteAtual = sprMadrugaBattleAtacando;
				}
				
				if (round(image_index) == 1 && inimigoSelecionado) {
					aplicarDanoEmInimigo();
				}
				
				if (checarFImAnimacao()) {
					alarm[1] = 30;
					image_speed = 0;
					ataqueSelecionado = 0;
				}
			} 
			else if (ataqueSelecionado && ataqueSelecionado.tipo ==  AtaquesEnum.BastaoFogo) {
				//TODO
			}
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