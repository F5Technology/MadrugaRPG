function executarAcao(){
	switch (acaoAtual) {
	    case AcaoBatalhaEnum.Atacar:
			if (ataqueSelecionado && ataqueSelecionado.tipo ==  AtaquesEnum.Normal) {
				if (object_index == objPlayerBattle) {
					if (sprite_index != sprMadrugaBattleAtacando) {
					    image_index = 0;
						sprite_index = sprMadrugaBattleAtacando;
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
				else if (object_index == objInimigoBattle) {
					if (spriteAtual != sprAranhaBattleAtacando) {
					    image_index = 0;
						spriteAtual = sprAranhaBattleAtacando;
					}
					
					if (round(image_index) == 1 && playerSelecionado) {
						aplicarDanoEmPlayer();
					}
					
					if (checarFImAnimacao()) {
						alarm[2] = 30;
						image_speed = 0;
						ataqueSelecionado = 0;
					}
				}
			} 
			else if (ataqueSelecionado && ataqueSelecionado.tipo ==  AtaquesEnum.BastaoFogo) {
				if (round(image_index) == 4 && inimigoSelecionado) {
					instance_create_depth(x + 5, y - 5, depth-20, objBastaoFogo, {inimigoSelecionado: inimigoSelecionado, ataqueSelecionado: ataqueSelecionado});
					inimigoSelecionado = 0;
				}
				
				if (checarFImAnimacao()) {
					alarm[1] = 60;
					image_speed = 0;					
					ataqueSelecionado = 0;
				}
			}
	        break;
	    case AcaoBatalhaEnum.UsarItem:
	       if (itemSelecionado) {
			   image_speed = 1;
		       usarItemEmBatalha();
		   }
		   
		   if (checarFImAnimacao()) {
				objBattle.fimTurno = true;
				sprite_index = sprMadrugaBattleIdle;
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