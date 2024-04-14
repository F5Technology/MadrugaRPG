function posicionarParaAcao() {
	switch (acaoAtual) {
	    case AcaoBatalhaEnum.Atacar:
			var concluidoPosicionamento = false;
			
			if (object_index == objPlayerBattle) {
				concluidoPosicionamento = point_distance(x, y, inimigoSelecionado.x - (inimigoSelecionado.sprite_width / 2) - 3, inimigoSelecionado.y - 10) <= 7;
				
				if (concluidoPosicionamento) {
				    speed = 0;
					sprite_index = sprMadrugaBattleIdle;
				}
			}
			else if (object_index == objInimigoBattle) {
				concluidoPosicionamento = point_distance(x, y, playerSelecionado.x + (playerSelecionado.sprite_width / 2), playerSelecionado.y + 10) <= 7;
				
				if (concluidoPosicionamento) {
				    speed = 0;
					spriteAtual = sprAranhaBattleIdle;
				}
			}
	        break;
	    case AcaoBatalhaEnum.UsarItem:
	       if (checarFImAnimacao()) {
		       image_speed = 0;

			   instance_create_depth(x, y - 26, depth-10, objItemUsadoBattle, {sprite_index: itemSelecionado.icone});
		   }
	        break;
	    case AcaoBatalhaEnum.Fugir:
	        if (point_distance(x, y, origemX - 20, origemY) <= 2) {
			    speed = 0;
			}
	        break;
	}
}